
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_device_id {int flags; scalar_t__ bustype; scalar_t__ vendor; scalar_t__ product; scalar_t__ version; int propbit; int swbit; int ffbit; int sndbit; int ledbit; int mscbit; int absbit; int relbit; int keybit; int evbit; } ;
struct TYPE_2__ {scalar_t__ bustype; scalar_t__ vendor; scalar_t__ product; scalar_t__ version; } ;
struct input_dev {int propbit; int swbit; int ffbit; int sndbit; int ledbit; int mscbit; int absbit; int relbit; int keybit; int evbit; TYPE_1__ id; } ;


 int ABS_MAX ;
 int EV_MAX ;
 int FF_MAX ;
 int INPUT_DEVICE_ID_MATCH_BUS ;
 int INPUT_DEVICE_ID_MATCH_PRODUCT ;
 int INPUT_DEVICE_ID_MATCH_VENDOR ;
 int INPUT_DEVICE_ID_MATCH_VERSION ;
 int INPUT_PROP_MAX ;
 int KEY_MAX ;
 int LED_MAX ;
 int MSC_MAX ;
 int REL_MAX ;
 int SND_MAX ;
 int SW_MAX ;
 int bitmap_subset (int ,int ,int ) ;

bool input_match_device_id(const struct input_dev *dev,
      const struct input_device_id *id)
{
 if (id->flags & INPUT_DEVICE_ID_MATCH_BUS)
  if (id->bustype != dev->id.bustype)
   return 0;

 if (id->flags & INPUT_DEVICE_ID_MATCH_VENDOR)
  if (id->vendor != dev->id.vendor)
   return 0;

 if (id->flags & INPUT_DEVICE_ID_MATCH_PRODUCT)
  if (id->product != dev->id.product)
   return 0;

 if (id->flags & INPUT_DEVICE_ID_MATCH_VERSION)
  if (id->version != dev->id.version)
   return 0;

 if (!bitmap_subset(id->evbit, dev->evbit, EV_MAX) ||
     !bitmap_subset(id->keybit, dev->keybit, KEY_MAX) ||
     !bitmap_subset(id->relbit, dev->relbit, REL_MAX) ||
     !bitmap_subset(id->absbit, dev->absbit, ABS_MAX) ||
     !bitmap_subset(id->mscbit, dev->mscbit, MSC_MAX) ||
     !bitmap_subset(id->ledbit, dev->ledbit, LED_MAX) ||
     !bitmap_subset(id->sndbit, dev->sndbit, SND_MAX) ||
     !bitmap_subset(id->ffbit, dev->ffbit, FF_MAX) ||
     !bitmap_subset(id->swbit, dev->swbit, SW_MAX) ||
     !bitmap_subset(id->propbit, dev->propbit, INPUT_PROP_MAX)) {
  return 0;
 }

 return 1;
}
