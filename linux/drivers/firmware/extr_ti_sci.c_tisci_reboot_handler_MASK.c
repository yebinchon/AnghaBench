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
struct ti_sci_handle {int dummy; } ;
struct ti_sci_info {struct ti_sci_handle handle; } ;
struct notifier_block {int dummy; } ;

/* Variables and functions */
 int NOTIFY_BAD ; 
 struct ti_sci_info* FUNC0 (struct notifier_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct ti_sci_handle const*) ; 

__attribute__((used)) static int FUNC2(struct notifier_block *nb, unsigned long mode,
				void *cmd)
{
	struct ti_sci_info *info = FUNC0(nb);
	const struct ti_sci_handle *handle = &info->handle;

	FUNC1(handle);

	/* call fail OR pass, we should not be here in the first place */
	return NOTIFY_BAD;
}