
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct kxtj9_data {int shift; int ctrl_reg1; } ;


 int EINVAL ;




__attribute__((used)) static int kxtj9_update_g_range(struct kxtj9_data *tj9, u8 new_g_range)
{
 switch (new_g_range) {
 case 130:
  tj9->shift = 4;
  break;
 case 129:
  tj9->shift = 3;
  break;
 case 128:
  tj9->shift = 2;
  break;
 default:
  return -EINVAL;
 }

 tj9->ctrl_reg1 &= 0xe7;
 tj9->ctrl_reg1 |= new_g_range;

 return 0;
}
