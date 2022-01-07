
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shmob_drm_device {scalar_t__ clock; } ;


 int clk_disable_unprepare (scalar_t__) ;

__attribute__((used)) static void shmob_drm_clk_off(struct shmob_drm_device *sdev)
{
 if (sdev->clock)
  clk_disable_unprepare(sdev->clock);
}
