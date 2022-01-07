
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum tmc_mem_intf_width { ____Placeholder_tmc_mem_intf_width } tmc_mem_intf_width ;


 int BMVAL (int ,int,int) ;
 int TMC_MEM_INTF_WIDTH_128BITS ;
 int TMC_MEM_INTF_WIDTH_256BITS ;
 int TMC_MEM_INTF_WIDTH_32BITS ;
 int TMC_MEM_INTF_WIDTH_64BITS ;

__attribute__((used)) static enum tmc_mem_intf_width tmc_get_memwidth(u32 devid)
{
 enum tmc_mem_intf_width memwidth;
 switch (BMVAL(devid, 8, 10)) {
 case 0x2:
  memwidth = TMC_MEM_INTF_WIDTH_32BITS;
  break;
 case 0x3:
  memwidth = TMC_MEM_INTF_WIDTH_64BITS;
  break;
 case 0x4:
  memwidth = TMC_MEM_INTF_WIDTH_128BITS;
  break;
 case 0x5:
  memwidth = TMC_MEM_INTF_WIDTH_256BITS;
  break;
 default:
  memwidth = 0;
 }

 return memwidth;
}
