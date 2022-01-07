
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
typedef int u16 ;
struct ib_gid_attr {int gid; int device; } ;
struct bnxt_re_gid_ctx {int refcnt; size_t idx; } ;
struct bnxt_qplib_sgid_tbl {struct bnxt_re_gid_ctx** ctx; } ;
struct TYPE_4__ {TYPE_1__* netdev; struct bnxt_qplib_sgid_tbl sgid_tbl; } ;
struct bnxt_re_dev {TYPE_2__ qplib_res; } ;
struct bnxt_qplib_gid {int dummy; } ;
struct TYPE_3__ {int dev_addr; } ;


 int EALREADY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int bnxt_qplib_add_sgid (struct bnxt_qplib_sgid_tbl*,struct bnxt_qplib_gid*,int ,int,int,size_t*) ;
 int dev_err (int ,char*,int) ;
 int ibdev ;
 struct bnxt_re_gid_ctx* kmalloc (int,int ) ;
 int rdev_to_dev (struct bnxt_re_dev*) ;
 int rdma_read_gid_l2_fields (struct ib_gid_attr const*,int*,int *) ;
 struct bnxt_re_dev* to_bnxt_re_dev (int ,int ) ;

int bnxt_re_add_gid(const struct ib_gid_attr *attr, void **context)
{
 int rc;
 u32 tbl_idx = 0;
 u16 vlan_id = 0xFFFF;
 struct bnxt_re_gid_ctx *ctx, **ctx_tbl;
 struct bnxt_re_dev *rdev = to_bnxt_re_dev(attr->device, ibdev);
 struct bnxt_qplib_sgid_tbl *sgid_tbl = &rdev->qplib_res.sgid_tbl;

 rc = rdma_read_gid_l2_fields(attr, &vlan_id, ((void*)0));
 if (rc)
  return rc;

 rc = bnxt_qplib_add_sgid(sgid_tbl, (struct bnxt_qplib_gid *)&attr->gid,
     rdev->qplib_res.netdev->dev_addr,
     vlan_id, 1, &tbl_idx);
 if (rc == -EALREADY) {
  ctx_tbl = sgid_tbl->ctx;
  ctx_tbl[tbl_idx]->refcnt++;
  *context = ctx_tbl[tbl_idx];
  return 0;
 }

 if (rc < 0) {
  dev_err(rdev_to_dev(rdev), "Failed to add GID: %#x", rc);
  return rc;
 }

 ctx = kmalloc(sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;
 ctx_tbl = sgid_tbl->ctx;
 ctx->idx = tbl_idx;
 ctx->refcnt = 1;
 ctx_tbl[tbl_idx] = ctx;
 *context = ctx;

 return rc;
}
