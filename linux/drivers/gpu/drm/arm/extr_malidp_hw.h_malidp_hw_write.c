
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct malidp_hw_device {scalar_t__ regs; int pm_suspended; } ;


 int WARN_ON (int ) ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void malidp_hw_write(struct malidp_hw_device *hwdev,
       u32 value, u32 reg)
{
 WARN_ON(hwdev->pm_suspended);
 writel(value, hwdev->regs + reg);
}
