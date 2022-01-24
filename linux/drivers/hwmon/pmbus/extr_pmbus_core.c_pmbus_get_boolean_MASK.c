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
typedef  size_t u16 ;
struct pmbus_sensor {scalar_t__ data; } ;
struct pmbus_data {int* status; } ;
struct pmbus_boolean {struct pmbus_sensor* s2; struct pmbus_sensor* s1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,struct pmbus_boolean*,struct pmbus_sensor*,struct pmbus_sensor*) ; 
 long FUNC1 (struct pmbus_data*,struct pmbus_sensor*) ; 

__attribute__((used)) static int FUNC2(struct pmbus_data *data, struct pmbus_boolean *b,
			     int index)
{
	struct pmbus_sensor *s1 = b->s1;
	struct pmbus_sensor *s2 = b->s2;
	u16 reg = (index >> 16) & 0xffff;
	u16 mask = index & 0xffff;
	int ret, status;
	u16 regval;

	status = data->status[reg];
	if (status < 0)
		return status;

	regval = status & mask;
	if (!s1 && !s2) {
		ret = !!regval;
	} else if (!s1 || !s2) {
		FUNC0(1, "Bad boolean descriptor %p: s1=%p, s2=%p\n", b, s1, s2);
		return 0;
	} else {
		long v1, v2;

		if (s1->data < 0)
			return s1->data;
		if (s2->data < 0)
			return s2->data;

		v1 = FUNC1(data, s1);
		v2 = FUNC1(data, s2);
		ret = !!(regval && v1 >= v2);
	}
	return ret;
}