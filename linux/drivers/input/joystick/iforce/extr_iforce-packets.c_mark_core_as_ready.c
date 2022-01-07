
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct iforce {TYPE_4__* dev; TYPE_3__* core_effects; } ;
struct TYPE_10__ {int max_effects; } ;
struct TYPE_9__ {int dev; TYPE_5__* ff; } ;
struct TYPE_7__ {unsigned short start; } ;
struct TYPE_6__ {unsigned short start; } ;
struct TYPE_8__ {int flags; TYPE_2__ mod2_chunk; TYPE_1__ mod1_chunk; } ;


 int FF_CORE_IS_USED ;
 int FF_CORE_UPDATE ;
 int clear_bit (int ,int ) ;
 int dev_warn (int *,char*,unsigned short) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static int mark_core_as_ready(struct iforce *iforce, unsigned short addr)
{
 int i;

 if (!iforce->dev->ff)
  return 0;

 for (i = 0; i < iforce->dev->ff->max_effects; ++i) {
  if (test_bit(FF_CORE_IS_USED, iforce->core_effects[i].flags) &&
      (iforce->core_effects[i].mod1_chunk.start == addr ||
       iforce->core_effects[i].mod2_chunk.start == addr)) {
   clear_bit(FF_CORE_UPDATE, iforce->core_effects[i].flags);
   return 0;
  }
 }
 dev_warn(&iforce->dev->dev, "unused effect %04x updated !!!\n", addr);
 return -1;
}
