
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hv_ring_buffer_info {int ring_buffer_mutex; int * ring_buffer; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vunmap (int *) ;

void hv_ringbuffer_cleanup(struct hv_ring_buffer_info *ring_info)
{
 mutex_lock(&ring_info->ring_buffer_mutex);
 vunmap(ring_info->ring_buffer);
 ring_info->ring_buffer = ((void*)0);
 mutex_unlock(&ring_info->ring_buffer_mutex);
}
