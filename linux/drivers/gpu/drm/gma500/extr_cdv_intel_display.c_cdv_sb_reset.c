
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;


 int DPIO_CFG ;
 int DPIO_CMN_RESET_N ;
 int DPIO_MODE_SELECT_0 ;
 int REG_READ (int ) ;
 int REG_WRITE (int ,int) ;

void cdv_sb_reset(struct drm_device *dev)
{

 REG_WRITE(DPIO_CFG, 0);
 REG_READ(DPIO_CFG);
 REG_WRITE(DPIO_CFG, DPIO_MODE_SELECT_0 | DPIO_CMN_RESET_N);
}
