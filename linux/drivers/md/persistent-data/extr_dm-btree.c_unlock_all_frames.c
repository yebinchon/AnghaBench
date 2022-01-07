
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame {int b; } ;
struct del_stack {int tm; int top; struct frame* spine; } ;


 int dm_tm_unlock (int ,int ) ;
 scalar_t__ unprocessed_frames (struct del_stack*) ;

__attribute__((used)) static void unlock_all_frames(struct del_stack *s)
{
 struct frame *f;

 while (unprocessed_frames(s)) {
  f = s->spine + s->top--;
  dm_tm_unlock(s->tm, f->b);
 }
}
