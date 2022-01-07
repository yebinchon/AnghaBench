
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_backlight {int id; } ;


 int BL_NAME_SIZE ;
 int GFP_KERNEL ;
 int bl_ida ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int snprintf (char*,int ,char*,...) ;

__attribute__((used)) static bool
nouveau_get_backlight_name(char backlight_name[BL_NAME_SIZE],
      struct nouveau_backlight *bl)
{
 const int nb = ida_simple_get(&bl_ida, 0, 0, GFP_KERNEL);
 if (nb < 0 || nb >= 100)
  return 0;
 if (nb > 0)
  snprintf(backlight_name, BL_NAME_SIZE, "nv_backlight%d", nb);
 else
  snprintf(backlight_name, BL_NAME_SIZE, "nv_backlight");
 bl->id = nb;
 return 1;
}
