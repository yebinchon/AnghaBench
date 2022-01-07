
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ishtp_device {int dummy; } ;
struct ish_hw {scalar_t__ mem_addr; } ;


 int readl (scalar_t__) ;
 struct ish_hw* to_ish_hw (struct ishtp_device const*) ;

__attribute__((used)) static inline uint32_t ish_reg_read(const struct ishtp_device *dev,
 unsigned long offset)
{
 struct ish_hw *hw = to_ish_hw(dev);

 return readl(hw->mem_addr + offset);
}
