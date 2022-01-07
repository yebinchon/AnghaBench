
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int RLC_CNTL ;
 int RLC_ENABLE ;
 int WREG32 (int ,int ) ;
 int cik_enable_gui_idle_interrupt (struct radeon_device*,int) ;
 int udelay (int) ;

__attribute__((used)) static void cik_rlc_start(struct radeon_device *rdev)
{
 WREG32(RLC_CNTL, RLC_ENABLE);

 cik_enable_gui_idle_interrupt(rdev, 1);

 udelay(50);
}
