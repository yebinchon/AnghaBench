
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sony_sc {int device_id; } ;


 int ida_simple_remove (int *,int) ;
 int sony_device_id_allocator ;

__attribute__((used)) static void sony_release_device_id(struct sony_sc *sc)
{
 if (sc->device_id >= 0) {
  ida_simple_remove(&sony_device_id_allocator, sc->device_id);
  sc->device_id = -1;
 }
}
