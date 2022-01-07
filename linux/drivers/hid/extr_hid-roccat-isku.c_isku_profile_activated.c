
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct isku_device {int actual_profile; } ;



__attribute__((used)) static void isku_profile_activated(struct isku_device *isku, uint new_profile)
{
 isku->actual_profile = new_profile;
}
