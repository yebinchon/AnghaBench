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
typedef  unsigned int u32 ;
struct analogix_dp_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (struct analogix_dp_device*) ; 
 unsigned int FUNC2 (struct analogix_dp_device*) ; 
 unsigned int FUNC3 (struct analogix_dp_device*) ; 
 unsigned int FUNC4 (struct analogix_dp_device*) ; 

__attribute__((used)) static unsigned int
FUNC5(struct analogix_dp_device *dp,
				   int lane)
{
	u32 reg;

	switch (lane) {
	case 0:
		reg = FUNC1(dp);
		break;
	case 1:
		reg = FUNC2(dp);
		break;
	case 2:
		reg = FUNC3(dp);
		break;
	case 3:
		reg = FUNC4(dp);
		break;
	default:
		FUNC0(1);
		return 0;
	}

	return reg;
}