#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct iio_sw_trigger_type {int /*<<< orphan*/  owner; TYPE_1__* ops; } ;
struct iio_sw_trigger {struct iio_sw_trigger_type* trigger_type; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* remove ) (struct iio_sw_trigger*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_sw_trigger*) ; 

void FUNC2(struct iio_sw_trigger *t)
{
	struct iio_sw_trigger_type *tt = t->trigger_type;

	tt->ops->remove(t);
	FUNC0(tt->owner);
}