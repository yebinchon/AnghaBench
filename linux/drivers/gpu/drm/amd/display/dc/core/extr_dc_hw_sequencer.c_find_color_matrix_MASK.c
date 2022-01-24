#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  enum dc_color_space_type { ____Placeholder_dc_color_space_type } dc_color_space_type ;
typedef  enum dc_color_space { ____Placeholder_dc_color_space } dc_color_space ;
struct TYPE_3__ {int color_space_type; int /*<<< orphan*/ * regval; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int) ; 
 TYPE_1__* output_csc_matrix ; 

const uint16_t *FUNC2(enum dc_color_space color_space,
							uint32_t *array_size)
{
	int i;
	enum dc_color_space_type type;
	const uint16_t *val = NULL;
	int arr_size = FUNC0(output_csc_matrix);

	type = FUNC1(color_space);
	for (i = 0; i < arr_size; i++)
		if (output_csc_matrix[i].color_space_type == type) {
			val = output_csc_matrix[i].regval;
			*array_size = 12;
			break;
		}

	return val;
}