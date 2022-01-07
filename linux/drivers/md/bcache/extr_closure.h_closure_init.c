
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct closure {int remaining; struct closure* parent; } ;


 int CLOSURE_REMAINING_INITIALIZER ;
 int atomic_set (int *,int ) ;
 int closure_debug_create (struct closure*) ;
 int closure_get (struct closure*) ;
 int closure_set_ip (struct closure*) ;
 int memset (struct closure*,int ,int) ;

__attribute__((used)) static inline void closure_init(struct closure *cl, struct closure *parent)
{
 memset(cl, 0, sizeof(struct closure));
 cl->parent = parent;
 if (parent)
  closure_get(parent);

 atomic_set(&cl->remaining, CLOSURE_REMAINING_INITIALIZER);

 closure_debug_create(cl);
 closure_set_ip(cl);
}
