
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int ETH_P_IBOE ;



 int pr_err (char*,int) ;

__attribute__((used)) static u16 ocrdma_hdr_type_to_proto_num(int devid, u8 hdr_type)
{
 switch (hdr_type) {
 case 130:
  return (u16)ETH_P_IBOE;
 case 129:
  return (u16)0x0800;
 case 128:
  return (u16)0x86dd;
 default:
  pr_err("ocrdma%d: Invalid network header\n", devid);
  return 0;
 }
}
