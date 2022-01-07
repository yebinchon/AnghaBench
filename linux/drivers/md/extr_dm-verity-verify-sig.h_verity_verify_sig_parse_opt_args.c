
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_verity_sig_opts {int dummy; } ;
struct dm_verity {int dummy; } ;
struct dm_arg_set {int dummy; } ;


 int EINVAL ;

int verity_verify_sig_parse_opt_args(struct dm_arg_set *as, struct dm_verity *v,
        struct dm_verity_sig_opts *sig_opts,
        unsigned int *argc, const char *arg_name)
{
 return -EINVAL;
}
