
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gth_device {scalar_t__ base; } ;


 int REG_GTH_SMCR0 ;
 int ioread32 (scalar_t__) ;

__attribute__((used)) static unsigned int gth_smcfreq_get(struct gth_device *gth, int port)
{
 unsigned long reg = REG_GTH_SMCR0 + ((port / 2) * 4);
 int shift = (port & 1) * 16;
 u32 val;

 val = ioread32(gth->base + reg);
 val &= 0xffff << shift;
 val >>= shift;

 return val;
}
