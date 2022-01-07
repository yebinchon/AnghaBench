
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum controller_id { ____Placeholder_controller_id } controller_id ;







unsigned int controller_id_to_index(enum controller_id controller_id)
{
 unsigned int index = 0;

 switch (controller_id) {
 case 131:
  index = 0;
  break;
 case 130:
  index = 1;
  break;
 case 129:
  index = 2;
  break;
 case 128:
  index = 3;
  break;
 default:
  break;
 }
 return index;
}
