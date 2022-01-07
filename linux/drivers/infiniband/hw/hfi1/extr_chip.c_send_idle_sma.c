
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hfi1_devdata {int dummy; } ;


 int IDLE_MSG_TYPE_SHIFT ;
 int IDLE_PAYLOAD_MASK ;
 int IDLE_PAYLOAD_SHIFT ;
 scalar_t__ IDLE_SMA ;
 int send_idle_message (struct hfi1_devdata*,int) ;

int send_idle_sma(struct hfi1_devdata *dd, u64 message)
{
 u64 data;

 data = ((message & IDLE_PAYLOAD_MASK) << IDLE_PAYLOAD_SHIFT) |
  ((u64)IDLE_SMA << IDLE_MSG_TYPE_SHIFT);
 return send_idle_message(dd, data);
}
