
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mr; scalar_t__ mr_valid; int sig_mr; } ;
struct iser_fr_desc {TYPE_2__ rsc; } ;
struct iser_device {struct ib_device* ib_device; } ;
struct ib_pd {int dummy; } ;
struct TYPE_3__ {int device_cap_flags; } ;
struct ib_device {TYPE_1__ attrs; } ;
typedef enum ib_mr_type { ____Placeholder_ib_mr_type } ib_mr_type ;


 int ENOMEM ;
 struct iser_fr_desc* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int IB_DEVICE_SG_GAPS_REG ;
 int IB_MR_TYPE_MEM_REG ;
 int IB_MR_TYPE_SG_GAPS ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int ib_alloc_mr (struct ib_pd*,int,unsigned int) ;
 int ib_alloc_mr_integrity (struct ib_pd*,unsigned int,unsigned int) ;
 int ib_dereg_mr (int ) ;
 int iser_err (char*,int) ;
 int kfree (struct iser_fr_desc*) ;
 struct iser_fr_desc* kzalloc (int,int ) ;

__attribute__((used)) static struct iser_fr_desc *
iser_create_fastreg_desc(struct iser_device *device,
    struct ib_pd *pd,
    bool pi_enable,
    unsigned int size)
{
 struct iser_fr_desc *desc;
 struct ib_device *ib_dev = device->ib_device;
 enum ib_mr_type mr_type;
 int ret;

 desc = kzalloc(sizeof(*desc), GFP_KERNEL);
 if (!desc)
  return ERR_PTR(-ENOMEM);

 if (ib_dev->attrs.device_cap_flags & IB_DEVICE_SG_GAPS_REG)
  mr_type = IB_MR_TYPE_SG_GAPS;
 else
  mr_type = IB_MR_TYPE_MEM_REG;

 desc->rsc.mr = ib_alloc_mr(pd, mr_type, size);
 if (IS_ERR(desc->rsc.mr)) {
  ret = PTR_ERR(desc->rsc.mr);
  iser_err("Failed to allocate ib_fast_reg_mr err=%d\n", ret);
  goto err_alloc_mr;
 }

 if (pi_enable) {
  desc->rsc.sig_mr = ib_alloc_mr_integrity(pd, size, size);
  if (IS_ERR(desc->rsc.sig_mr)) {
   ret = PTR_ERR(desc->rsc.sig_mr);
   iser_err("Failed to allocate sig_mr err=%d\n", ret);
   goto err_alloc_mr_integrity;
  }
 }
 desc->rsc.mr_valid = 0;

 return desc;

err_alloc_mr_integrity:
 ib_dereg_mr(desc->rsc.mr);
err_alloc_mr:
 kfree(desc);

 return ERR_PTR(ret);
}
