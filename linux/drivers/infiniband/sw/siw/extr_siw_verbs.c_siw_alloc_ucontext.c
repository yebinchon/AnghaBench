
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uresp ;
struct siw_uresp_alloc_ctx {int dev_id; } ;
struct siw_ucontext {struct siw_device* sdev; scalar_t__ uobj_nextkey; int xa; } ;
struct siw_device {int num_ctx; int vendor_part_id; } ;
struct ib_udata {int outlen; } ;
struct ib_ucontext {int device; } ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ SIW_MAX_CONTEXT ;
 int XA_FLAGS_ALLOC ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_inc_return (int *) ;
 int atomic_read (int *) ;
 int ib_copy_to_udata (struct ib_udata*,struct siw_uresp_alloc_ctx*,int) ;
 int siw_dbg (int ,char*,int,...) ;
 struct siw_ucontext* to_siw_ctx (struct ib_ucontext*) ;
 struct siw_device* to_siw_dev (int ) ;
 int xa_init_flags (int *,int ) ;

int siw_alloc_ucontext(struct ib_ucontext *base_ctx, struct ib_udata *udata)
{
 struct siw_device *sdev = to_siw_dev(base_ctx->device);
 struct siw_ucontext *ctx = to_siw_ctx(base_ctx);
 struct siw_uresp_alloc_ctx uresp = {};
 int rv;

 if (atomic_inc_return(&sdev->num_ctx) > SIW_MAX_CONTEXT) {
  rv = -ENOMEM;
  goto err_out;
 }
 xa_init_flags(&ctx->xa, XA_FLAGS_ALLOC);
 ctx->uobj_nextkey = 0;
 ctx->sdev = sdev;

 uresp.dev_id = sdev->vendor_part_id;

 if (udata->outlen < sizeof(uresp)) {
  rv = -EINVAL;
  goto err_out;
 }
 rv = ib_copy_to_udata(udata, &uresp, sizeof(uresp));
 if (rv)
  goto err_out;

 siw_dbg(base_ctx->device, "success. now %d context(s)\n",
  atomic_read(&sdev->num_ctx));

 return 0;

err_out:
 atomic_dec(&sdev->num_ctx);
 siw_dbg(base_ctx->device, "failure %d. now %d context(s)\n", rv,
  atomic_read(&sdev->num_ctx));

 return rv;
}
