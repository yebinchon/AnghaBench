
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_fbdev {int dummy; } ;


 int ORIGIN_CPU ;
 int intel_frontbuffer_invalidate (int ,int ) ;
 int to_frontbuffer (struct intel_fbdev*) ;

__attribute__((used)) static void intel_fbdev_invalidate(struct intel_fbdev *ifbdev)
{
 intel_frontbuffer_invalidate(to_frontbuffer(ifbdev), ORIGIN_CPU);
}
