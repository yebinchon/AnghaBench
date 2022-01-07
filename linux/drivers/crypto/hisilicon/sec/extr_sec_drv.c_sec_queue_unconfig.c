
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_queue {int dummy; } ;
struct sec_dev_info {int dummy; } ;


 int sec_queue_free_ring_pages (struct sec_queue*) ;
 int sec_queue_unmap_io (struct sec_queue*) ;

__attribute__((used)) static void sec_queue_unconfig(struct sec_dev_info *info,
          struct sec_queue *queue)
{
 sec_queue_unmap_io(queue);
 sec_queue_free_ring_pages(queue);
}
