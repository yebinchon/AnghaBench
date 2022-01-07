
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcar_du_device {TYPE_1__* info; } ;
struct TYPE_2__ {unsigned int features; } ;



__attribute__((used)) static inline bool rcar_du_has(struct rcar_du_device *rcdu,
          unsigned int feature)
{
 return rcdu->info->features & feature;
}
