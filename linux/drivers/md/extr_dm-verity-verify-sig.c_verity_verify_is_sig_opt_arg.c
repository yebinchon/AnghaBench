
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DM_VERITY_ROOT_HASH_VERIFICATION_OPT_SIG_KEY ;
 int strcasecmp (char const*,int ) ;

bool verity_verify_is_sig_opt_arg(const char *arg_name)
{
 return (!strcasecmp(arg_name,
       DM_VERITY_ROOT_HASH_VERIFICATION_OPT_SIG_KEY));
}
