
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raid5_percpu {int scribble_obj_size; struct page** scribble; } ;
struct page {int dummy; } ;



__attribute__((used)) static struct page **to_addr_page(struct raid5_percpu *percpu, int i)
{
 return percpu->scribble + i * percpu->scribble_obj_size;
}
