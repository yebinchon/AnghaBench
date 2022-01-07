
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct dispc_device {TYPE_2__* pdev; } ;
struct TYPE_3__ {int of_node; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int of_property_read_u32 (int ,char*,int *) ;

__attribute__((used)) static u32 dispc_get_memory_bandwidth_limit(struct dispc_device *dispc)
{
 u32 limit = 0;


 of_property_read_u32(dispc->pdev->dev.of_node, "max-memory-bandwidth",
        &limit);

 return limit;
}
