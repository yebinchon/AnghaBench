
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_re_dev {int num_vfs; int qplib_ctx; int rcfw; int qplib_res; } ;


 int bnxt_qplib_set_func_resources (int *,int *,int *) ;
 int bnxt_re_set_resource_limits (struct bnxt_re_dev*) ;

__attribute__((used)) static void bnxt_re_sriov_config(void *p, int num_vfs)
{
 struct bnxt_re_dev *rdev = p;

 if (!rdev)
  return;

 rdev->num_vfs = num_vfs;
 bnxt_re_set_resource_limits(rdev);
 bnxt_qplib_set_func_resources(&rdev->qplib_res, &rdev->rcfw,
          &rdev->qplib_ctx);
}
