
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_value {int value; int code; int type; } ;
struct input_handler {int (* event ) (struct input_handle*,int ,int ,int ) ;int (* events ) (struct input_handle*,struct input_value*,unsigned int) ;scalar_t__ (* filter ) (struct input_handle*,int ,int ,int ) ;} ;
struct input_handle {struct input_handler* handler; } ;


 scalar_t__ stub1 (struct input_handle*,int ,int ,int ) ;
 int stub2 (struct input_handle*,struct input_value*,unsigned int) ;
 int stub3 (struct input_handle*,int ,int ,int ) ;

__attribute__((used)) static unsigned int input_to_handler(struct input_handle *handle,
   struct input_value *vals, unsigned int count)
{
 struct input_handler *handler = handle->handler;
 struct input_value *end = vals;
 struct input_value *v;

 if (handler->filter) {
  for (v = vals; v != vals + count; v++) {
   if (handler->filter(handle, v->type, v->code, v->value))
    continue;
   if (end != v)
    *end = *v;
   end++;
  }
  count = end - vals;
 }

 if (!count)
  return 0;

 if (handler->events)
  handler->events(handle, vals, count);
 else if (handler->event)
  for (v = vals; v != vals + count; v++)
   handler->event(handle, v->type, v->code, v->value);

 return count;
}
