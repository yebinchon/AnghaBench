
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct abituguru3_data {scalar_t__ addr; } ;


 scalar_t__ ABIT_UGURU3_DATA ;
 int ABIT_UGURU3_STATUS_BUSY ;
 int ABIT_UGURU3_SUCCESS ;
 int ABIT_UGURU3_WAIT_TIMEOUT ;
 int inb_p (scalar_t__) ;
 int msleep (int) ;

__attribute__((used)) static int abituguru3_wait_while_busy(struct abituguru3_data *data)
{
 u8 x;
 int timeout = ABIT_UGURU3_WAIT_TIMEOUT;

 while ((x = inb_p(data->addr + ABIT_UGURU3_DATA)) &
   ABIT_UGURU3_STATUS_BUSY) {
  timeout--;
  if (timeout == 0)
   return x;




  if (timeout == 1)
   msleep(1);
 }
 return ABIT_UGURU3_SUCCESS;
}
