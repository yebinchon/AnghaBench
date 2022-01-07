
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cl; } ;
struct closure {int dummy; } ;
struct search {TYPE_1__ iop; struct closure cl; } ;
struct cached_dev {int dummy; } ;


 int cache_lookup ;
 int cached_dev_read_done_bh ;
 int closure_call (int *,int ,int *,struct closure*) ;
 int continue_at (struct closure*,int ,int *) ;

__attribute__((used)) static void cached_dev_read(struct cached_dev *dc, struct search *s)
{
 struct closure *cl = &s->cl;

 closure_call(&s->iop.cl, cache_lookup, ((void*)0), cl);
 continue_at(cl, cached_dev_read_done_bh, ((void*)0));
}
