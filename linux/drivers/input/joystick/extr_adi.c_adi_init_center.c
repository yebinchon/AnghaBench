
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adi {int axes10; int axes8; int hats; int pad; int* abs; scalar_t__ id; int dev; int length; } ;


 int ABS_RUDDER ;
 int ABS_THROTTLE ;
 scalar_t__ ADI_ID_WGPE ;
 int input_abs_get_val (int ,int) ;
 int input_set_abs_params (int ,int,int,int,int,int) ;

__attribute__((used)) static void adi_init_center(struct adi *adi)
{
 int i, t, x;

 if (!adi->length)
  return;

 for (i = 0; i < adi->axes10 + adi->axes8 + (adi->hats + (adi->pad != -1)) * 2; i++) {

  t = adi->abs[i];
  x = input_abs_get_val(adi->dev, t);

  if (t == ABS_THROTTLE || t == ABS_RUDDER || adi->id == ADI_ID_WGPE)
   x = i < adi->axes10 ? 512 : 128;

  if (i < adi->axes10)
   input_set_abs_params(adi->dev, t, 64, x * 2 - 64, 2, 16);
  else if (i < adi->axes10 + adi->axes8)
   input_set_abs_params(adi->dev, t, 48, x * 2 - 48, 1, 16);
  else
   input_set_abs_params(adi->dev, t, -1, 1, 0, 0);
 }
}
