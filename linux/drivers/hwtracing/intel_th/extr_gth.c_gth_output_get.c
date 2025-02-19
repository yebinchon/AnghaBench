
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gth_device {scalar_t__ base; } ;


 unsigned long REG_GTH_GTHOPT0 ;
 unsigned long REG_GTH_GTHOPT1 ;
 int ioread32 (scalar_t__) ;

__attribute__((used)) static unsigned int gth_output_get(struct gth_device *gth, int port)
{
 unsigned long reg = port & 4 ? REG_GTH_GTHOPT1 : REG_GTH_GTHOPT0;
 u32 val;
 int shift = (port & 3) * 8;

 val = ioread32(gth->base + reg);
 val &= 0xff << shift;
 val >>= shift;

 return val;
}
