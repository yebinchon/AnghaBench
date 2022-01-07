
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ count; } ;
struct dsi_data {TYPE_1__ bus_lock; } ;



__attribute__((used)) static bool dsi_bus_is_locked(struct dsi_data *dsi)
{
 return dsi->bus_lock.count == 0;
}
