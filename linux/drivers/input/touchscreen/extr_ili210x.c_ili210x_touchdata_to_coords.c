
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ili210x {int dummy; } ;


 int BIT (unsigned int) ;
 unsigned int ILI210X_TOUCHES ;
 unsigned int get_unaligned_be16 (int*) ;

__attribute__((used)) static bool ili210x_touchdata_to_coords(struct ili210x *priv, u8 *touchdata,
     unsigned int finger,
     unsigned int *x, unsigned int *y)
{
 if (finger >= ILI210X_TOUCHES)
  return 0;

 if (touchdata[0] & BIT(finger))
  return 0;

 *x = get_unaligned_be16(touchdata + 1 + (finger * 4) + 0);
 *y = get_unaligned_be16(touchdata + 1 + (finger * 4) + 2);

 return 1;
}
