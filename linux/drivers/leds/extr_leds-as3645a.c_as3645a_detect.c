
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct as3645a {TYPE_1__* client; } ;
struct TYPE_2__ {struct device dev; } ;


 int AS_BOOST_CURRENT_DISABLE ;
 int AS_BOOST_REG ;
 int AS_DESIGN_INFO_FACTORY (int) ;
 int AS_DESIGN_INFO_MODEL (int) ;
 int AS_DESIGN_INFO_REG ;
 int AS_PASSWORD_REG ;
 int AS_PASSWORD_UNLOCK_VALUE ;
 int AS_VERSION_CONTROL_REG ;
 int AS_VERSION_CONTROL_RFU (int) ;
 int AS_VERSION_CONTROL_VERSION (int) ;
 int ENODEV ;
 int as3645a_read (struct as3645a*,int ) ;
 int as3645a_write (struct as3645a*,int ,int ) ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,char const*,int,int) ;

__attribute__((used)) static int as3645a_detect(struct as3645a *flash)
{
 struct device *dev = &flash->client->dev;
 int rval, man, model, rfu, version;
 const char *vendor;

 rval = as3645a_read(flash, AS_DESIGN_INFO_REG);
 if (rval < 0) {
  dev_err(dev, "can't read design info reg\n");
  return rval;
 }

 man = AS_DESIGN_INFO_FACTORY(rval);
 model = AS_DESIGN_INFO_MODEL(rval);

 rval = as3645a_read(flash, AS_VERSION_CONTROL_REG);
 if (rval < 0) {
  dev_err(dev, "can't read version control reg\n");
  return rval;
 }

 rfu = AS_VERSION_CONTROL_RFU(rval);
 version = AS_VERSION_CONTROL_VERSION(rval);


 if (model != 0x01 || rfu != 0x00) {
  dev_err(dev, "AS3645A not detected (model %d rfu %d)\n",
   model, rfu);
  return -ENODEV;
 }

 switch (man) {
 case 1:
  vendor = "AMS, Austria Micro Systems";
  break;
 case 2:
  vendor = "ADI, Analog Devices Inc.";
  break;
 case 3:
  vendor = "NSC, National Semiconductor";
  break;
 case 4:
  vendor = "NXP";
  break;
 case 5:
  vendor = "TI, Texas Instrument";
  break;
 default:
  vendor = "Unknown";
 }

 dev_info(dev, "Chip vendor: %s (%d) Version: %d\n", vendor,
   man, version);

 rval = as3645a_write(flash, AS_PASSWORD_REG, AS_PASSWORD_UNLOCK_VALUE);
 if (rval < 0)
  return rval;

 return as3645a_write(flash, AS_BOOST_REG, AS_BOOST_CURRENT_DISABLE);
}
