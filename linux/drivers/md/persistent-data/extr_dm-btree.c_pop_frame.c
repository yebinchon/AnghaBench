
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame {int b; } ;
struct del_stack {int tm; int top; struct frame* spine; } ;


 int dm_block_location (int ) ;
 int dm_tm_dec (int ,int ) ;
 int dm_tm_unlock (int ,int ) ;

__attribute__((used)) static void pop_frame(struct del_stack *s)
{
 struct frame *f = s->spine + s->top--;

 dm_tm_dec(s->tm, dm_block_location(f->b));
 dm_tm_unlock(s->tm, f->b);
}
