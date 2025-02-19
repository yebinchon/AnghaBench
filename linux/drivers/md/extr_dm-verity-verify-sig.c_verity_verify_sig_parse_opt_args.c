
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_verity_sig_opts {int dummy; } ;
struct dm_verity {int signature_key_desc; struct dm_target* ti; } ;
struct dm_target {void* error; } ;
struct dm_arg_set {int dummy; } ;


 void* DM_VERITY_VERIFY_ERR (char*) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 char* dm_shift_arg (struct dm_arg_set*) ;
 int kstrdup (char const*,int ) ;
 int verity_verify_get_sig_from_key (char const*,struct dm_verity_sig_opts*) ;

int verity_verify_sig_parse_opt_args(struct dm_arg_set *as,
         struct dm_verity *v,
         struct dm_verity_sig_opts *sig_opts,
         unsigned int *argc,
         const char *arg_name)
{
 struct dm_target *ti = v->ti;
 int ret = 0;
 const char *sig_key = ((void*)0);

 if (!*argc) {
  ti->error = DM_VERITY_VERIFY_ERR("Signature key not specified");
  return -EINVAL;
 }

 sig_key = dm_shift_arg(as);
 (*argc)--;

 ret = verity_verify_get_sig_from_key(sig_key, sig_opts);
 if (ret < 0)
  ti->error = DM_VERITY_VERIFY_ERR("Invalid key specified");

 v->signature_key_desc = kstrdup(sig_key, GFP_KERNEL);
 if (!v->signature_key_desc)
  return -ENOMEM;

 return ret;
}
