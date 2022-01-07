
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
typedef int __le16 ;


 int EBADMSG ;
 scalar_t__ SPU2_INVALID_ICV ;
 int SPU_INVALID_ICV ;
 int flow_log (char*,scalar_t__) ;
 scalar_t__ le16_to_cpu (int ) ;

int spu2_status_process(u8 *statp)
{

 u16 status = le16_to_cpu(*(__le16 *)statp);

 if (status == 0)
  return 0;

 flow_log("rx status is %#x\n", status);
 if (status == SPU2_INVALID_ICV)
  return SPU_INVALID_ICV;

 return -EBADMSG;
}
