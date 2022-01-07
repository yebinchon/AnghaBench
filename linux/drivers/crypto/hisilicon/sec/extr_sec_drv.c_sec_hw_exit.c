
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sec_dev_info {int dummy; } ;


 int SEC_MAX_SAA_NUM ;
 int sec_saa_getqm_en (struct sec_dev_info*,int,int ) ;
 int sec_saa_int_mask (struct sec_dev_info*,int,int ) ;

__attribute__((used)) static void sec_hw_exit(struct sec_dev_info *info)
{
 int i;

 for (i = 0; i < SEC_MAX_SAA_NUM; i++) {
  sec_saa_int_mask(info, i, (u32)~0);
  sec_saa_getqm_en(info, i, 0);
 }
}
