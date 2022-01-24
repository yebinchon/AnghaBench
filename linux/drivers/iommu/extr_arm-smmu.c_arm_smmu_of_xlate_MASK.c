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
typedef  int /*<<< orphan*/  u32 ;
struct of_phandle_args {int args_count; int /*<<< orphan*/  np; int /*<<< orphan*/ * args; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMR_ID ; 
 int /*<<< orphan*/  SMR_MASK ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct of_phandle_args *args)
{
	u32 mask, fwid = 0;

	if (args->args_count > 0)
		fwid |= FUNC0(SMR_ID, args->args[0]);

	if (args->args_count > 1)
		fwid |= FUNC0(SMR_MASK, args->args[1]);
	else if (!FUNC2(args->np, "stream-match-mask", &mask))
		fwid |= FUNC0(SMR_MASK, mask);

	return FUNC1(dev, &fwid, 1);
}