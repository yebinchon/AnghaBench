
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad714x_chip {int product; unsigned short version; int dev; int (* read ) (struct ad714x_chip*,int ,unsigned short*,int) ;} ;






 int AD714X_PARTID_REG ;
 int ENODEV ;
 int dev_err (int ,char*,unsigned short) ;
 int dev_info (int ,char*,unsigned short) ;
 int stub1 (struct ad714x_chip*,int ,unsigned short*,int) ;

__attribute__((used)) static int ad714x_hw_detect(struct ad714x_chip *ad714x)
{
 unsigned short data;

 ad714x->read(ad714x, AD714X_PARTID_REG, &data, 1);
 switch (data & 0xFFF0) {
 case 131:
  ad714x->product = 0x7142;
  ad714x->version = data & 0xF;
  dev_info(ad714x->dev, "found AD7142 captouch, rev:%d\n",
    ad714x->version);
  return 0;

 case 130:
  ad714x->product = 0x7143;
  ad714x->version = data & 0xF;
  dev_info(ad714x->dev, "found AD7143 captouch, rev:%d\n",
    ad714x->version);
  return 0;

 case 129:
  ad714x->product = 0x7147;
  ad714x->version = data & 0xF;
  dev_info(ad714x->dev, "found AD7147(A) captouch, rev:%d\n",
    ad714x->version);
  return 0;

 case 128:
  ad714x->product = 0x7148;
  ad714x->version = data & 0xF;
  dev_info(ad714x->dev, "found AD7148 captouch, rev:%d\n",
    ad714x->version);
  return 0;

 default:
  dev_err(ad714x->dev,
   "fail to detect AD714X captouch, read ID is %04x\n",
   data);
  return -ENODEV;
 }
}
