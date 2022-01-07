
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dispc_device {TYPE_1__* feat; } ;
struct TYPE_2__ {int num_ovls; } ;



__attribute__((used)) static int dispc_get_num_ovls(struct dispc_device *dispc)
{
 return dispc->feat->num_ovls;
}
