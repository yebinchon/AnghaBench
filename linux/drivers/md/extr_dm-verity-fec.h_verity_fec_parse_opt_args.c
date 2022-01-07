
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_verity {int dummy; } ;
struct dm_arg_set {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static inline int verity_fec_parse_opt_args(struct dm_arg_set *as,
         struct dm_verity *v,
         unsigned *argc,
         const char *arg_name)
{
 return -EINVAL;
}
