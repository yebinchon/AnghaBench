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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u16 ;
struct mxt_object {scalar_t__ start_address; } ;
struct mxt_data {int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int EINVAL ; 
 struct mxt_object* FUNC0 (struct mxt_data*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct mxt_object*) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct mxt_data *data,
				 u8 type, u8 offset, u8 val)
{
	struct mxt_object *object;
	u16 reg;

	object = FUNC0(data, type);
	if (!object || offset >= FUNC1(object))
		return -EINVAL;

	reg = object->start_address;
	return FUNC2(data->client, reg + offset, val);
}