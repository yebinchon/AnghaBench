
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gth_device {int dummy; } ;
struct TYPE_2__ {unsigned int (* get ) (struct gth_device*,int) ;unsigned int mask; } ;


 unsigned int __ffs (unsigned int) ;
 TYPE_1__* output_parms ;
 unsigned int stub1 (struct gth_device*,int) ;

__attribute__((used)) static unsigned int
gth_output_parm_get(struct gth_device *gth, int port, unsigned int parm)
{
 unsigned int config = output_parms[parm].get(gth, port);
 unsigned int mask = output_parms[parm].mask;
 unsigned int shift = __ffs(mask);

 config &= mask;
 config >>= shift;
 return config;
}
