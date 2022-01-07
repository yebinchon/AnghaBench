
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rcar_lvds {scalar_t__ mmio; } ;


 int iowrite32 (scalar_t__,scalar_t__) ;

__attribute__((used)) static void rcar_lvds_write(struct rcar_lvds *lvds, u32 reg, u32 data)
{
 iowrite32(data, lvds->mmio + reg);
}
