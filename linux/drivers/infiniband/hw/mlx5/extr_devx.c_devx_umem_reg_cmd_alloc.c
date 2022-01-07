
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uverbs_attr_bundle {int dummy; } ;
struct devx_umem_reg_cmd {int inlen; int in; } ;
struct devx_umem {int ncont; } ;


 int MLX5_ST_SZ_BYTES (int ) ;
 int PTR_ERR_OR_ZERO (int ) ;
 int create_umem_in ;
 int mtt ;
 int uverbs_zalloc (struct uverbs_attr_bundle*,int) ;

__attribute__((used)) static int devx_umem_reg_cmd_alloc(struct uverbs_attr_bundle *attrs,
       struct devx_umem *obj,
       struct devx_umem_reg_cmd *cmd)
{
 cmd->inlen = MLX5_ST_SZ_BYTES(create_umem_in) +
      (MLX5_ST_SZ_BYTES(mtt) * obj->ncont);
 cmd->in = uverbs_zalloc(attrs, cmd->inlen);
 return PTR_ERR_OR_ZERO(cmd->in);
}
