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
typedef  int /*<<< orphan*/  u8 ;
struct hidma_lldev {int /*<<< orphan*/  pending_tre_count; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct hidma_lldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct hidma_lldev *lldev, u8 err_info,
			       u8 err_code)
{
	while (FUNC0(&lldev->pending_tre_count)) {
		if (FUNC1(lldev, err_info, err_code))
			break;
	}
}