
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bl_ida ;
 int ida_destroy (int *) ;

void
nouveau_backlight_dtor(void)
{
 ida_destroy(&bl_ida);
}
