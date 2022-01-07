
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct koneplus_device {int actual_profile; } ;



__attribute__((used)) static void koneplus_profile_activated(struct koneplus_device *koneplus,
  uint new_profile)
{
 koneplus->actual_profile = new_profile;
}
