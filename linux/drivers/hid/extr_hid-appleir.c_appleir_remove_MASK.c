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
struct hid_device {int dummy; } ;
struct appleir {int /*<<< orphan*/  key_up_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct appleir* FUNC1 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct appleir*) ; 

__attribute__((used)) static void FUNC4(struct hid_device *hid)
{
	struct appleir *appleir = FUNC1(hid);
	FUNC2(hid);
	FUNC0(&appleir->key_up_timer);
	FUNC3(appleir);
}