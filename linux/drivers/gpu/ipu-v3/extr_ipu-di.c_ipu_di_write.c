
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipu_di {unsigned int base; } ;


 int writel (int ,unsigned int) ;

__attribute__((used)) static inline void ipu_di_write(struct ipu_di *di, u32 value, unsigned offset)
{
 writel(value, di->base + offset);
}
