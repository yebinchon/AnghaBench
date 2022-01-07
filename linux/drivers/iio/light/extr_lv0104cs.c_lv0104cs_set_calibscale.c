
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lv0104cs_private {int calibscale; int lock; int client; } ;
struct TYPE_3__ {int val; int val2; int regval; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* lv0104cs_calibscales ;
 int lv0104cs_write_reg (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int lv0104cs_set_calibscale(struct lv0104cs_private *lv0104cs,
    int val, int val2)
{
 int calibscale = val * 1000000 + val2;
 int floor, ceil, mid;
 int ret, i, index;


 for (i = 0; i < ARRAY_SIZE(lv0104cs_calibscales) - 1; i++) {
  floor = lv0104cs_calibscales[i].val * 1000000
    + lv0104cs_calibscales[i].val2;
  ceil = lv0104cs_calibscales[i + 1].val * 1000000
    + lv0104cs_calibscales[i + 1].val2;
  mid = (floor + ceil) / 2;


  if (calibscale >= floor && calibscale < mid) {
   index = i;
   break;
  }


  if (calibscale >= mid && calibscale <= ceil) {
   index = i + 1;
   break;
  }
 }

 if (i == ARRAY_SIZE(lv0104cs_calibscales) - 1)
  return -EINVAL;

 mutex_lock(&lv0104cs->lock);


 ret = lv0104cs_write_reg(lv0104cs->client,
   lv0104cs_calibscales[index].regval);
 if (ret)
  goto err_mutex;

 lv0104cs->calibscale = index;

err_mutex:
 mutex_unlock(&lv0104cs->lock);

 return ret;
}
