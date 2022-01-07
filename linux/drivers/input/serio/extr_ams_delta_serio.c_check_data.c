
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dev; } ;


 int SERIO_FRAME ;
 int SERIO_PARITY ;
 int dev_warn (int *,char*,int,...) ;

__attribute__((used)) static int check_data(struct serio *serio, int data)
{
 int i, parity = 0;


 if (!(data & 0x400)) {
  dev_warn(&serio->dev, "invalid stop bit, data=0x%X\n", data);
  return SERIO_FRAME;
 }

 for (i = 1; i < 10; i++) {
  if (data & (1 << i))
   parity++;
 }

 if (!(parity & 0x01)) {
  dev_warn(&serio->dev,
    "parity check failed, data=0x%X parity=0x%X\n", data,
    parity);
  return SERIO_PARITY;
 }
 return 0;
}
