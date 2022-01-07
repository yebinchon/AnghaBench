
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uverbs_attr_bundle {int dummy; } ;
struct mlx5_ib_ucontext {int dummy; } ;


 int ib_uverbs_get_ucontext (struct uverbs_attr_bundle const*) ;
 struct mlx5_ib_ucontext* to_mucontext (int ) ;

__attribute__((used)) static struct mlx5_ib_ucontext *
devx_ufile2uctx(const struct uverbs_attr_bundle *attrs)
{
 return to_mucontext(ib_uverbs_get_ucontext(attrs));
}
