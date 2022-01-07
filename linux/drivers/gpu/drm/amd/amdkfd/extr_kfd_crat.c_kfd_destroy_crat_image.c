
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kfree (void*) ;

void kfd_destroy_crat_image(void *crat_image)
{
 kfree(crat_image);
}
