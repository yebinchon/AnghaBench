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
struct ms_data {int quirks; int /*<<< orphan*/  ff_worker; } ;
struct hid_device {int dummy; } ;

/* Variables and functions */
 int MS_QUIRK_FF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ms_data* FUNC1 (struct hid_device*) ; 

__attribute__((used)) static void FUNC2(struct hid_device *hdev)
{
	struct ms_data *ms = FUNC1(hdev);

	if (!(ms->quirks & MS_QUIRK_FF))
		return;

	FUNC0(&ms->ff_worker);
}