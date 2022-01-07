
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
struct kone_device {int actual_profile; TYPE_1__* profiles; int actual_dpi; } ;
struct TYPE_2__ {int startup_dpi; } ;



__attribute__((used)) static void kone_profile_activated(struct kone_device *kone, uint new_profile)
{
 kone->actual_profile = new_profile;
 kone->actual_dpi = kone->profiles[new_profile - 1].startup_dpi;
}
