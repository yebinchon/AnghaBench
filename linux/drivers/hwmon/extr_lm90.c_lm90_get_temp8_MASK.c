#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct lm90_data {scalar_t__ kind; int /*<<< orphan*/ * temp8; } ;
typedef  int /*<<< orphan*/  s8 ;

/* Variables and functions */
 scalar_t__ adt7461 ; 
 scalar_t__ lm99 ; 
 scalar_t__ max6646 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct lm90_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ tmp451 ; 

__attribute__((used)) static int FUNC3(struct lm90_data *data, int index)
{
	s8 temp8 = data->temp8[index];
	int temp;

	if (data->kind == adt7461 || data->kind == tmp451)
		temp = FUNC2(data, temp8);
	else if (data->kind == max6646)
		temp = FUNC1(temp8);
	else
		temp = FUNC0(temp8);

	/* +16 degrees offset for temp2 for the LM99 */
	if (data->kind == lm99 && index == 3)
		temp += 16000;

	return temp;
}