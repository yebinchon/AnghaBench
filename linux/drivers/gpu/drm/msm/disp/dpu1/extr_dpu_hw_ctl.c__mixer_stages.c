
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dpu_lm_cfg {int id; TYPE_1__* sblk; } ;
typedef enum dpu_lm { ____Placeholder_dpu_lm } dpu_lm ;
struct TYPE_2__ {int maxblendstages; } ;


 int EINVAL ;

__attribute__((used)) static int _mixer_stages(const struct dpu_lm_cfg *mixer, int count,
  enum dpu_lm lm)
{
 int i;
 int stages = -EINVAL;

 for (i = 0; i < count; i++) {
  if (lm == mixer[i].id) {
   stages = mixer[i].sblk->maxblendstages;
   break;
  }
 }

 return stages;
}
