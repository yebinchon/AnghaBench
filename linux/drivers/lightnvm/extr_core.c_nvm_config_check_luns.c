
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvm_geo {int all_luns; } ;


 int EINVAL ;
 int pr_err (char*,int,int,int) ;

__attribute__((used)) static int nvm_config_check_luns(struct nvm_geo *geo, int lun_begin,
     int lun_end)
{
 if (lun_begin > lun_end || lun_end >= geo->all_luns) {
  pr_err("lun out of bound (%u:%u > %u)\n",
   lun_begin, lun_end, geo->all_luns - 1);
  return -EINVAL;
 }

 return 0;
}
