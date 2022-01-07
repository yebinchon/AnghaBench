
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dispc_device {TYPE_1__* feat; } ;
struct TYPE_2__ {int has_writeback; } ;



__attribute__((used)) static bool dispc_has_writeback(struct dispc_device *dispc)
{
 return dispc->feat->has_writeback;
}
