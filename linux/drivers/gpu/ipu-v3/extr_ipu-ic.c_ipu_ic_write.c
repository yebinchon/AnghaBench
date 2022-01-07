
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ipu_ic {TYPE_1__* priv; } ;
struct TYPE_2__ {unsigned int base; } ;


 int writel (int ,unsigned int) ;

__attribute__((used)) static inline void ipu_ic_write(struct ipu_ic *ic, u32 value, unsigned offset)
{
 writel(value, ic->priv->base + offset);
}
