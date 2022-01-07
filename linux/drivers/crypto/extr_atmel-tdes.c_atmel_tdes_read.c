
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct atmel_tdes_dev {scalar_t__ io_base; } ;


 scalar_t__ readl_relaxed (scalar_t__) ;

__attribute__((used)) static inline u32 atmel_tdes_read(struct atmel_tdes_dev *dd, u32 offset)
{
 return readl_relaxed(dd->io_base + offset);
}
