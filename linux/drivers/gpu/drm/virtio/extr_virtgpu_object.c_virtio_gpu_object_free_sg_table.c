
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_gpu_object {int * pages; } ;


 int kfree (int *) ;
 int sg_free_table (int *) ;

void virtio_gpu_object_free_sg_table(struct virtio_gpu_object *bo)
{
 sg_free_table(bo->pages);
 kfree(bo->pages);
 bo->pages = ((void*)0);
}
