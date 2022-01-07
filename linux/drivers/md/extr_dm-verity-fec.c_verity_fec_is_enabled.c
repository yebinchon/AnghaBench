
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_verity {TYPE_1__* fec; } ;
struct TYPE_2__ {scalar_t__ dev; } ;



bool verity_fec_is_enabled(struct dm_verity *v)
{
 return v->fec && v->fec->dev;
}
