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
struct timer_list {int dummy; } ;
struct hid_device {int dummy; } ;
struct appleir {int /*<<< orphan*/  lock; scalar_t__ current_key; struct hid_device* hid; } ;

/* Variables and functions */
 struct appleir* appleir ; 
 struct appleir* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*,struct appleir*,scalar_t__) ; 
 int /*<<< orphan*/  key_up_timer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct appleir *appleir = FUNC0(appleir, t, key_up_timer);
	struct hid_device *hid = appleir->hid;
	unsigned long flags;

	FUNC2(&appleir->lock, flags);
	if (appleir->current_key) {
		FUNC1(hid, appleir, appleir->current_key);
		appleir->current_key = 0;
	}
	FUNC3(&appleir->lock, flags);
}