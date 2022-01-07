
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rcar_du_device {scalar_t__ mmio; } ;


 scalar_t__ ioread32 (scalar_t__) ;

__attribute__((used)) static inline u32 rcar_du_read(struct rcar_du_device *rcdu, u32 reg)
{
 return ioread32(rcdu->mmio + reg);
}
