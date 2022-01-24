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
struct dvb_adapter {int /*<<< orphan*/  list_head; } ;

/* Variables and functions */
 int /*<<< orphan*/  dvbdev_register_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct dvb_adapter *adap)
{
	FUNC1(&dvbdev_register_lock);
	FUNC0 (&adap->list_head);
	FUNC2(&dvbdev_register_lock);
	return 0;
}