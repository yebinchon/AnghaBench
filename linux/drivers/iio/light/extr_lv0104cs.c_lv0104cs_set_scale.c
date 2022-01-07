
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lv0104cs_private {int scale; int lock; } ;
struct TYPE_3__ {int val; int val2; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* lv0104cs_scales ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int lv0104cs_set_scale(struct lv0104cs_private *lv0104cs,
    int val, int val2)
{
 int i;


 for (i = 0; i < ARRAY_SIZE(lv0104cs_scales); i++) {
  if (val != lv0104cs_scales[i].val)
   continue;

  if (val2 == lv0104cs_scales[i].val2)
   break;
 }

 if (i == ARRAY_SIZE(lv0104cs_scales))
  return -EINVAL;

 mutex_lock(&lv0104cs->lock);
 lv0104cs->scale = i;
 mutex_unlock(&lv0104cs->lock);

 return 0;
}
