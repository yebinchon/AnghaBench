
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_frontbuffer {int dummy; } ;
struct intel_fbdev {TYPE_1__* fb; } ;
struct TYPE_2__ {struct intel_frontbuffer* frontbuffer; } ;



__attribute__((used)) static struct intel_frontbuffer *to_frontbuffer(struct intel_fbdev *ifbdev)
{
 return ifbdev->fb->frontbuffer;
}
