
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hfi1_devdata {int dummy; } ;


 int IDLE_MSG_TYPE_SHIFT ;
 scalar_t__ IDLE_SMA ;
 int read_idle_message (struct hfi1_devdata*,int,int*) ;

__attribute__((used)) static int read_idle_sma(struct hfi1_devdata *dd, u64 *data)
{
 return read_idle_message(dd, (u64)IDLE_SMA << IDLE_MSG_TYPE_SHIFT,
     data);
}
