
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_fbdev {scalar_t__ cookie; } ;


 int async_synchronize_cookie (scalar_t__) ;

__attribute__((used)) static void intel_fbdev_sync(struct intel_fbdev *ifbdev)
{
 if (!ifbdev->cookie)
  return;


 async_synchronize_cookie(ifbdev->cookie + 1);
 ifbdev->cookie = 0;
}
