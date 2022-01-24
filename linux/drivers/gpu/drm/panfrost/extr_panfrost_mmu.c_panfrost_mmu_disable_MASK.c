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
 int /*<<< orphan*/  AS_COMMAND_FLUSH_MEM ; 
 int /*<<< orphan*/  AS_COMMAND_UPDATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct panfrost_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct panfrost_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct panfrost_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct panfrost_device *pfdev, u32 as_nr)
{
	FUNC4(pfdev, as_nr, 0, ~0UL, AS_COMMAND_FLUSH_MEM);

	FUNC5(pfdev, FUNC3(as_nr), 0);
	FUNC5(pfdev, FUNC2(as_nr), 0);

	FUNC5(pfdev, FUNC1(as_nr), 0);
	FUNC5(pfdev, FUNC0(as_nr), 0);

	FUNC6(pfdev, as_nr, AS_COMMAND_UPDATE);
}