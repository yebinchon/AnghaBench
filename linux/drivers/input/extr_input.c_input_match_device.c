
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_handler {scalar_t__ (* match ) (struct input_handler*,struct input_dev*) ;struct input_device_id* id_table; } ;
struct input_device_id {scalar_t__ driver_info; scalar_t__ flags; } ;
struct input_dev {int dummy; } ;


 scalar_t__ input_match_device_id (struct input_dev*,struct input_device_id const*) ;
 scalar_t__ stub1 (struct input_handler*,struct input_dev*) ;

__attribute__((used)) static const struct input_device_id *input_match_device(struct input_handler *handler,
       struct input_dev *dev)
{
 const struct input_device_id *id;

 for (id = handler->id_table; id->flags || id->driver_info; id++) {
  if (input_match_device_id(dev, id) &&
      (!handler->match || handler->match(handler, dev))) {
   return id;
  }
 }

 return ((void*)0);
}
