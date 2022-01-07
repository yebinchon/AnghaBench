
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DM_VERITY_OPT_FEC_BLOCKS ;
 int DM_VERITY_OPT_FEC_DEV ;
 int DM_VERITY_OPT_FEC_ROOTS ;
 int DM_VERITY_OPT_FEC_START ;
 int strcasecmp (char const*,int ) ;

bool verity_is_fec_opt_arg(const char *arg_name)
{
 return (!strcasecmp(arg_name, DM_VERITY_OPT_FEC_DEV) ||
  !strcasecmp(arg_name, DM_VERITY_OPT_FEC_BLOCKS) ||
  !strcasecmp(arg_name, DM_VERITY_OPT_FEC_START) ||
  !strcasecmp(arg_name, DM_VERITY_OPT_FEC_ROOTS));
}
