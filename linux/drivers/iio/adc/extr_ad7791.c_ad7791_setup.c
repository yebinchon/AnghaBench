
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ad7791_state {int mode; int sd; TYPE_1__* info; int filter; } ;
struct ad7791_platform_data {scalar_t__ unipolar; scalar_t__ burnout_current; int buffered; } ;
struct TYPE_2__ {int flags; } ;


 int AD7791_FILTER_RATE_16_6 ;
 int AD7791_FLAG_HAS_BUFFER ;
 int AD7791_FLAG_HAS_BURNOUT ;
 int AD7791_FLAG_HAS_UNIPOLAR ;
 int AD7791_MODE_BUFFER ;
 int AD7791_MODE_BURNOUT ;
 int AD7791_MODE_UNIPOLAR ;
 int AD7791_REG_MODE ;
 int ad_sd_write_reg (int *,int ,int,int ) ;

__attribute__((used)) static int ad7791_setup(struct ad7791_state *st,
   struct ad7791_platform_data *pdata)
{

 st->mode = AD7791_MODE_BUFFER;
 st->filter = AD7791_FILTER_RATE_16_6;

 if (!pdata)
  return 0;

 if ((st->info->flags & AD7791_FLAG_HAS_BUFFER) && !pdata->buffered)
  st->mode &= ~AD7791_MODE_BUFFER;

 if ((st->info->flags & AD7791_FLAG_HAS_BURNOUT) &&
  pdata->burnout_current)
  st->mode |= AD7791_MODE_BURNOUT;

 if ((st->info->flags & AD7791_FLAG_HAS_UNIPOLAR) && pdata->unipolar)
  st->mode |= AD7791_MODE_UNIPOLAR;

 return ad_sd_write_reg(&st->sd, AD7791_REG_MODE, sizeof(st->mode),
  st->mode);
}
