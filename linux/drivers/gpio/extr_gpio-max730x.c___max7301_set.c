
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max7301 {int out_level; int (* write ) (int ,int,int) ;int dev; } ;


 int stub1 (int ,int,int) ;
 int stub2 (int ,int,int) ;

__attribute__((used)) static int __max7301_set(struct max7301 *ts, unsigned offset, int value)
{
 if (value) {
  ts->out_level |= 1 << offset;
  return ts->write(ts->dev, 0x20 + offset, 0x01);
 } else {
  ts->out_level &= ~(1 << offset);
  return ts->write(ts->dev, 0x20 + offset, 0x00);
 }
}
