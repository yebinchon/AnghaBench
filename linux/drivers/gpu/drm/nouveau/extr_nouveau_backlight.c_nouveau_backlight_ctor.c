
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bl_ida ;
 int ida_init (int *) ;

void
nouveau_backlight_ctor(void)
{
 ida_init(&bl_ida);
}
