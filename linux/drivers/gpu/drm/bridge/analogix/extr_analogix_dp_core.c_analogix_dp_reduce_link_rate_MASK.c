#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  lt_state; } ;
struct analogix_dp_device {TYPE_1__ link_train; } ;

/* Variables and functions */
 int /*<<< orphan*/  FAILED ; 
 int /*<<< orphan*/  FUNC0 (struct analogix_dp_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct analogix_dp_device*) ; 

__attribute__((used)) static void FUNC2(struct analogix_dp_device *dp)
{
	FUNC1(dp);
	FUNC0(dp);

	dp->link_train.lt_state = FAILED;
}