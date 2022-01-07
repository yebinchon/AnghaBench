
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct abituguru_data {int uguru_ready; scalar_t__ addr; } ;


 scalar_t__ ABIT_UGURU_CMD ;
 scalar_t__ ABIT_UGURU_DATA ;
 int ABIT_UGURU_DEBUG (int,char*) ;
 int ABIT_UGURU_READY_TIMEOUT ;
 int ABIT_UGURU_STATUS_INPUT ;
 int ABIT_UGURU_STATUS_READY ;
 int EIO ;
 scalar_t__ abituguru_wait (struct abituguru_data*,int ) ;
 int inb_p (scalar_t__) ;
 int msleep (int ) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static int abituguru_ready(struct abituguru_data *data)
{
 int timeout = ABIT_UGURU_READY_TIMEOUT;

 if (data->uguru_ready)
  return 0;


 outb(0x00, data->addr + ABIT_UGURU_DATA);


 if (abituguru_wait(data, ABIT_UGURU_STATUS_READY)) {
  ABIT_UGURU_DEBUG(1,
   "timeout exceeded waiting for ready state\n");
  return -EIO;
 }


 while (inb_p(data->addr + ABIT_UGURU_CMD) != 0xAC) {
  timeout--;
  if (timeout == 0) {
   ABIT_UGURU_DEBUG(1,
      "CMD reg does not hold 0xAC after ready command\n");
   return -EIO;
  }
  msleep(0);
 }





 timeout = ABIT_UGURU_READY_TIMEOUT;
 while (inb_p(data->addr + ABIT_UGURU_DATA) != ABIT_UGURU_STATUS_INPUT) {
  timeout--;
  if (timeout == 0) {
   ABIT_UGURU_DEBUG(1,
    "state != more input after ready command\n");
   return -EIO;
  }
  msleep(0);
 }

 data->uguru_ready = 1;
 return 0;
}
