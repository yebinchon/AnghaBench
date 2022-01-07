
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct abituguru_data {scalar_t__ addr; } ;


 scalar_t__ ABIT_UGURU_DATA ;
 int ABIT_UGURU_WAIT_TIMEOUT ;
 int ABIT_UGURU_WAIT_TIMEOUT_SLEEP ;
 int EBUSY ;
 scalar_t__ inb_p (scalar_t__) ;
 int msleep (int ) ;

__attribute__((used)) static int abituguru_wait(struct abituguru_data *data, u8 state)
{
 int timeout = ABIT_UGURU_WAIT_TIMEOUT;

 while (inb_p(data->addr + ABIT_UGURU_DATA) != state) {
  timeout--;
  if (timeout == 0)
   return -EBUSY;




  if (timeout <= ABIT_UGURU_WAIT_TIMEOUT_SLEEP)
   msleep(0);
 }
 return 0;
}
