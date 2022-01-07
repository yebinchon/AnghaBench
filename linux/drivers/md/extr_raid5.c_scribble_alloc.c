
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raid5_percpu {size_t scribble_obj_size; void* scribble; } ;
struct page {int dummy; } ;
typedef int gfp_t ;
typedef int addr_conv_t ;


 int ENOMEM ;
 int kvfree (void*) ;
 void* kvmalloc_array (int,size_t,int ) ;

__attribute__((used)) static int scribble_alloc(struct raid5_percpu *percpu,
     int num, int cnt, gfp_t flags)
{
 size_t obj_size =
  sizeof(struct page *) * (num+2) +
  sizeof(addr_conv_t) * (num+2);
 void *scribble;

 scribble = kvmalloc_array(cnt, obj_size, flags);
 if (!scribble)
  return -ENOMEM;

 kvfree(percpu->scribble);

 percpu->scribble = scribble;
 percpu->scribble_obj_size = obj_size;
 return 0;
}
