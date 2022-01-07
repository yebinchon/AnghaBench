
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uverbs_attr_bundle {int dummy; } ;
struct ib_uobject {struct devx_umem* object; } ;
struct devx_umem {int umem; int dinlen; int dinbox; int mdev; } ;
typedef int out ;
typedef enum rdma_remove_reason { ____Placeholder_rdma_remove_reason } rdma_remove_reason ;


 int MLX5_ST_SZ_DW (int ) ;
 int general_obj_out_cmd_hdr ;
 scalar_t__ ib_is_destroy_retryable (int,int,struct ib_uobject*) ;
 int ib_umem_release (int ) ;
 int kfree (struct devx_umem*) ;
 int mlx5_cmd_exec (int ,int ,int ,int *,int) ;

__attribute__((used)) static int devx_umem_cleanup(struct ib_uobject *uobject,
        enum rdma_remove_reason why,
        struct uverbs_attr_bundle *attrs)
{
 struct devx_umem *obj = uobject->object;
 u32 out[MLX5_ST_SZ_DW(general_obj_out_cmd_hdr)];
 int err;

 err = mlx5_cmd_exec(obj->mdev, obj->dinbox, obj->dinlen, out, sizeof(out));
 if (ib_is_destroy_retryable(err, why, uobject))
  return err;

 ib_umem_release(obj->umem);
 kfree(obj);
 return 0;
}
