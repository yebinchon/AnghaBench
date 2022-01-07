
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
typedef enum dc_color_space_type { ____Placeholder_dc_color_space_type } dc_color_space_type ;
typedef enum dc_color_space { ____Placeholder_dc_color_space } dc_color_space ;
struct TYPE_3__ {int color_space_type; int * regval; } ;


 int NUM_ELEMENTS (TYPE_1__*) ;
 int get_color_space_type (int) ;
 TYPE_1__* output_csc_matrix ;

const uint16_t *find_color_matrix(enum dc_color_space color_space,
       uint32_t *array_size)
{
 int i;
 enum dc_color_space_type type;
 const uint16_t *val = ((void*)0);
 int arr_size = NUM_ELEMENTS(output_csc_matrix);

 type = get_color_space_type(color_space);
 for (i = 0; i < arr_size; i++)
  if (output_csc_matrix[i].color_space_type == type) {
   val = output_csc_matrix[i].regval;
   *array_size = 12;
   break;
  }

 return val;
}
