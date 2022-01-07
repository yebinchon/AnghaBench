
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etnaviv_gem_object {int gpu_active; } ;


 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static inline bool is_active(struct etnaviv_gem_object *etnaviv_obj)
{
 return atomic_read(&etnaviv_obj->gpu_active) != 0;
}
