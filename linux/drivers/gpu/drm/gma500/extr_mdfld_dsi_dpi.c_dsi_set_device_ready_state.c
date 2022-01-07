
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;


 int MIPI_DEVICE_READY_REG (int) ;
 int REG_FLD_MOD (int ,int,int ,int ) ;

__attribute__((used)) static void dsi_set_device_ready_state(struct drm_device *dev, int state,
    int pipe)
{
 REG_FLD_MOD(MIPI_DEVICE_READY_REG(pipe), !!state, 0, 0);
}
