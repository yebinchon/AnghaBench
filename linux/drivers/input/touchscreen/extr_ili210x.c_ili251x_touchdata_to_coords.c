
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ili210x {int dummy; } ;


 unsigned int BIT (int) ;
 unsigned int ILI251X_TOUCHES ;
 unsigned int get_unaligned_be16 (int *) ;

__attribute__((used)) static bool ili251x_touchdata_to_coords(struct ili210x *priv, u8 *touchdata,
     unsigned int finger,
     unsigned int *x, unsigned int *y)
{
 if (finger >= ILI251X_TOUCHES)
  return 0;

 *x = get_unaligned_be16(touchdata + 1 + (finger * 5) + 0);
 if (!(*x & BIT(15)))
  return 0;

 *x &= 0x3fff;
 *y = get_unaligned_be16(touchdata + 1 + (finger * 5) + 2);

 return 1;
}
