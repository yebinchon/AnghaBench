
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dev; } ;
struct hampshire {unsigned char* data; size_t idx; } ;
typedef int irqreturn_t ;


 int HAMPSHIRE_RESPONSE_BEGIN_BYTE ;
 int IRQ_HANDLED ;
 int dev_dbg (int *,char*,int) ;
 int hampshire_process_data (struct hampshire*) ;
 struct hampshire* serio_get_drvdata (struct serio*) ;

__attribute__((used)) static irqreturn_t hampshire_interrupt(struct serio *serio,
  unsigned char data, unsigned int flags)
{
 struct hampshire *phampshire = serio_get_drvdata(serio);

 phampshire->data[phampshire->idx] = data;

 if (HAMPSHIRE_RESPONSE_BEGIN_BYTE & phampshire->data[0])
  hampshire_process_data(phampshire);
 else
  dev_dbg(&serio->dev, "unknown/unsynchronized data: %x\n",
   phampshire->data[0]);

 return IRQ_HANDLED;
}
