
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int idProduct; } ;
struct usb_device {TYPE_1__ descriptor; } ;
struct hanwang {TYPE_2__* features; } ;
struct TYPE_5__ {scalar_t__ pid; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 TYPE_2__* features_array ;
 scalar_t__ le16_to_cpu (int ) ;

__attribute__((used)) static bool get_features(struct usb_device *dev, struct hanwang *hanwang)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(features_array); i++) {
  if (le16_to_cpu(dev->descriptor.idProduct) ==
    features_array[i].pid) {
   hanwang->features = &features_array[i];
   return 1;
  }
 }

 return 0;
}
