
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ishtp_device {int dummy; } ;
struct ish_hw {scalar_t__ mem_addr; } ;


 struct ish_hw* to_ish_hw (struct ishtp_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void ish_reg_write(struct ishtp_device *dev,
     unsigned long offset,
     uint32_t value)
{
 struct ish_hw *hw = to_ish_hw(dev);

 writel(value, hw->mem_addr + offset);
}
