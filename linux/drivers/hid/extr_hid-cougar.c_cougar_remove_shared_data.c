
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cougar {TYPE_1__* shared; } ;
struct TYPE_2__ {int kref; } ;


 int cougar_release_shared_data ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void cougar_remove_shared_data(void *resource)
{
 struct cougar *cougar = resource;

 if (cougar->shared) {
  kref_put(&cougar->shared->kref, cougar_release_shared_data);
  cougar->shared = ((void*)0);
 }
}
