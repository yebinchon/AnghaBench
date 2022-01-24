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
struct panfrost_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct panfrost_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct panfrost_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct panfrost_device *pfdev, u32 as_nr, u32 cmd)
{
	int status;

	/* write AS_COMMAND when MMU is ready to accept another command */
	status = FUNC2(pfdev, as_nr);
	if (!status)
		FUNC1(pfdev, FUNC0(as_nr), cmd);

	return status;
}