
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct mxt_object {scalar_t__ type; } ;
struct mxt_data {TYPE_2__* client; struct mxt_object* object_table; TYPE_1__* info; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int object_num; } ;


 int dev_warn (int *,char*,scalar_t__) ;

__attribute__((used)) static struct mxt_object *
mxt_get_object(struct mxt_data *data, u8 type)
{
 struct mxt_object *object;
 int i;

 for (i = 0; i < data->info->object_num; i++) {
  object = data->object_table + i;
  if (object->type == type)
   return object;
 }

 dev_warn(&data->client->dev, "Invalid object type T%u\n", type);
 return ((void*)0);
}
