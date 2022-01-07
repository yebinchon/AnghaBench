
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_type {int dummy; } ;
struct mapped_device {struct target_type* immutable_target_type; } ;



struct target_type *dm_get_immutable_target_type(struct mapped_device *md)
{
 return md->immutable_target_type;
}
