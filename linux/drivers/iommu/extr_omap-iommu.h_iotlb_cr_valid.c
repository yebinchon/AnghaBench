
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cr_regs {int cam; } ;


 int EINVAL ;
 int MMU_CAM_V ;

__attribute__((used)) static inline int iotlb_cr_valid(struct cr_regs *cr)
{
 if (!cr)
  return -EINVAL;

 return cr->cam & MMU_CAM_V;
}
