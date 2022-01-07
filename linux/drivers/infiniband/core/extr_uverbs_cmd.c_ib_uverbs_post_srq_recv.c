
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uverbs_req_iter {int dummy; } ;
struct uverbs_attr_bundle {int dummy; } ;
struct ib_uverbs_post_srq_recv_resp {int bad_wr; } ;
struct ib_uverbs_post_srq_recv {int srq_handle; int sge_count; int wqe_size; int wr_count; } ;
struct ib_srq {TYPE_2__* device; } ;
typedef struct ib_recv_wr {struct ib_recv_wr const* next; } const ib_recv_wr ;
typedef int resp ;
typedef int cmd ;
struct TYPE_3__ {int (* post_srq_recv ) (struct ib_srq*,struct ib_recv_wr const*,struct ib_recv_wr const**) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct ib_recv_wr const*) ;
 int PTR_ERR (struct ib_recv_wr const*) ;
 int UVERBS_OBJECT_SRQ ;
 struct ib_recv_wr const* ib_uverbs_unmarshall_recv (struct uverbs_req_iter*,int ,int ,int ) ;
 int kfree (struct ib_recv_wr const*) ;
 int stub1 (struct ib_srq*,struct ib_recv_wr const*,struct ib_recv_wr const**) ;
 struct ib_srq* uobj_get_obj_read (struct ib_srq*,int ,int ,struct uverbs_attr_bundle*) ;
 int uobj_put_obj_read (struct ib_srq*) ;
 int uverbs_request_start (struct uverbs_attr_bundle*,struct uverbs_req_iter*,struct ib_uverbs_post_srq_recv*,int) ;
 int uverbs_response (struct uverbs_attr_bundle*,struct ib_uverbs_post_srq_recv_resp*,int) ;

__attribute__((used)) static int ib_uverbs_post_srq_recv(struct uverbs_attr_bundle *attrs)
{
 struct ib_uverbs_post_srq_recv cmd;
 struct ib_uverbs_post_srq_recv_resp resp;
 struct ib_recv_wr *wr, *next;
 const struct ib_recv_wr *bad_wr;
 struct ib_srq *srq;
 int ret, ret2;
 struct uverbs_req_iter iter;

 ret = uverbs_request_start(attrs, &iter, &cmd, sizeof(cmd));
 if (ret)
  return ret;

 wr = ib_uverbs_unmarshall_recv(&iter, cmd.wr_count, cmd.wqe_size,
           cmd.sge_count);
 if (IS_ERR(wr))
  return PTR_ERR(wr);

 srq = uobj_get_obj_read(srq, UVERBS_OBJECT_SRQ, cmd.srq_handle, attrs);
 if (!srq) {
  ret = -EINVAL;
  goto out;
 }

 resp.bad_wr = 0;
 ret = srq->device->ops.post_srq_recv(srq, wr, &bad_wr);

 uobj_put_obj_read(srq);

 if (ret)
  for (next = wr; next; next = next->next) {
   ++resp.bad_wr;
   if (next == bad_wr)
    break;
  }

 ret2 = uverbs_response(attrs, &resp, sizeof(resp));
 if (ret2)
  ret = ret2;

out:
 while (wr) {
  next = wr->next;
  kfree(wr);
  wr = next;
 }

 return ret;
}
