
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sony_sc {int quirks; int device_id; } ;


 int DUALSHOCK4_CONTROLLER ;
 int GFP_KERNEL ;
 int SIXAXIS_CONTROLLER ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int sony_device_id_allocator ;

__attribute__((used)) static int sony_set_device_id(struct sony_sc *sc)
{
 int ret;





 if ((sc->quirks & SIXAXIS_CONTROLLER) ||
     (sc->quirks & DUALSHOCK4_CONTROLLER)) {
  ret = ida_simple_get(&sony_device_id_allocator, 0, 0,
     GFP_KERNEL);
  if (ret < 0) {
   sc->device_id = -1;
   return ret;
  }
  sc->device_id = ret;
 } else {
  sc->device_id = -1;
 }

 return 0;
}
