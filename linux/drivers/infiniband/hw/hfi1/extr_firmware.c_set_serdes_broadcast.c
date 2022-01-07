
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct hfi1_devdata {int dummy; } ;


 int WRITE_SBUS_RECEIVER ;
 int sbus_request (struct hfi1_devdata*,scalar_t__ const,int,int ,int) ;

__attribute__((used)) static void set_serdes_broadcast(struct hfi1_devdata *dd, u8 bg1, u8 bg2,
     const u8 *addrs, int count)
{
 while (--count >= 0) {
  sbus_request(dd, addrs[count], 0xfd, WRITE_SBUS_RECEIVER,
        (u32)bg1 << 4 | (u32)bg2 << 16);
 }
}
