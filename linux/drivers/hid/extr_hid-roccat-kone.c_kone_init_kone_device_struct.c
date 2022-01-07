
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
struct usb_device {int dummy; } ;
struct TYPE_2__ {int startup_profile; } ;
struct kone_device {TYPE_1__ settings; int firmware_version; int * profiles; int kone_lock; } ;


 int kone_get_firmware_version (struct usb_device*,int *) ;
 int kone_get_profile (struct usb_device*,int *,int) ;
 int kone_get_settings (struct usb_device*,TYPE_1__*) ;
 int kone_profile_activated (struct kone_device*,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static int kone_init_kone_device_struct(struct usb_device *usb_dev,
  struct kone_device *kone)
{
 uint i;
 int retval;

 mutex_init(&kone->kone_lock);

 for (i = 0; i < 5; ++i) {
  retval = kone_get_profile(usb_dev, &kone->profiles[i], i + 1);
  if (retval)
   return retval;
 }

 retval = kone_get_settings(usb_dev, &kone->settings);
 if (retval)
  return retval;

 retval = kone_get_firmware_version(usb_dev, &kone->firmware_version);
 if (retval)
  return retval;

 kone_profile_activated(kone, kone->settings.startup_profile);

 return 0;
}
