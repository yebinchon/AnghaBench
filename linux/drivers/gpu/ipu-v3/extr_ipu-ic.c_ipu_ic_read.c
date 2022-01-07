
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ipu_ic {TYPE_1__* priv; } ;
struct TYPE_2__ {unsigned int base; } ;


 int readl (unsigned int) ;

__attribute__((used)) static inline u32 ipu_ic_read(struct ipu_ic *ic, unsigned offset)
{
 return readl(ic->priv->base + offset);
}
