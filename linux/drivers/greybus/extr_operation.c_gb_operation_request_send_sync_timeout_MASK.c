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
struct gb_operation {int /*<<< orphan*/  completion; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECANCELED ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct gb_operation*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct gb_operation*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct gb_operation*) ; 
 int /*<<< orphan*/  gb_operation_sync_callback ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct gb_operation *operation,
					   unsigned int timeout)
{
	int ret;

	ret = FUNC1(operation, gb_operation_sync_callback,
					timeout, GFP_KERNEL);
	if (ret)
		return ret;

	ret = FUNC3(&operation->completion);
	if (ret < 0) {
		/* Cancel the operation if interrupted */
		FUNC0(operation, -ECANCELED);
	}

	return FUNC2(operation);
}