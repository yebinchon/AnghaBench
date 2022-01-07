
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raid5_percpu {int * scribble; int * spare_page; } ;
struct r5conf {int dummy; } ;


 int kvfree (int *) ;
 int safe_put_page (int *) ;

__attribute__((used)) static void free_scratch_buffer(struct r5conf *conf, struct raid5_percpu *percpu)
{
 safe_put_page(percpu->spare_page);
 percpu->spare_page = ((void*)0);
 kvfree(percpu->scribble);
 percpu->scribble = ((void*)0);
}
