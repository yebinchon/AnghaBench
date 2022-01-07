
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;

__attribute__((used)) static int rv770_encode_yclk_post_div(u32 postdiv, u32 *encoded_postdiv)
{
 int ret = 0;

 switch (postdiv) {
 case 1:
  *encoded_postdiv = 0;
  break;
 case 2:
  *encoded_postdiv = 1;
  break;
 case 4:
  *encoded_postdiv = 2;
  break;
 case 8:
  *encoded_postdiv = 3;
  break;
 case 16:
  *encoded_postdiv = 4;
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
