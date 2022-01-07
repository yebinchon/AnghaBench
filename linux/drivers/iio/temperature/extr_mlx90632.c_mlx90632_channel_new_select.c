
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int EINVAL ;

__attribute__((used)) static int mlx90632_channel_new_select(int perform_ret, uint8_t *channel_new,
           uint8_t *channel_old)
{
 switch (perform_ret) {
 case 1:
  *channel_new = 1;
  *channel_old = 2;
  break;
 case 2:
  *channel_new = 2;
  *channel_old = 1;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
