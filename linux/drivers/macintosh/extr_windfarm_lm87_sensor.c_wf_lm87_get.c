
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wf_sensor {struct wf_lm87_sensor* priv; } ;
struct wf_lm87_sensor {int * i2c; } ;
typedef int s32 ;


 int ENODEV ;
 int LM87_INT_TEMP ;
 int wf_lm87_read_reg (int *,int ) ;

__attribute__((used)) static int wf_lm87_get(struct wf_sensor *sr, s32 *value)
{
 struct wf_lm87_sensor *lm = sr->priv;
 s32 temp;

 if (lm->i2c == ((void*)0))
  return -ENODEV;




 temp = wf_lm87_read_reg(lm->i2c, 0x27);
 if (temp < 0)
  return temp;
 *value = temp << 16;

 return 0;
}
