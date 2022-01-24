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
struct mga_device {int type; } ;

/* Variables and functions */
#define  G200_EH 135 
#define  G200_EH3 134 
#define  G200_ER 133 
#define  G200_EV 132 
#define  G200_EW3 131 
#define  G200_SE_A 130 
#define  G200_SE_B 129 
#define  G200_WB 128 
 int FUNC0 (struct mga_device*,long) ; 
 int FUNC1 (struct mga_device*,long) ; 
 int FUNC2 (struct mga_device*,long) ; 
 int FUNC3 (struct mga_device*,long) ; 
 int FUNC4 (struct mga_device*,long) ; 

__attribute__((used)) static int FUNC5(struct mga_device *mdev, long clock)
{
	switch(mdev->type) {
	case G200_SE_A:
	case G200_SE_B:
		return FUNC3(mdev, clock);
		break;
	case G200_WB:
	case G200_EW3:
		return FUNC4(mdev, clock);
		break;
	case G200_EV:
		return FUNC2(mdev, clock);
		break;
	case G200_EH:
	case G200_EH3:
		return FUNC0(mdev, clock);
		break;
	case G200_ER:
		return FUNC1(mdev, clock);
		break;
	}
	return 0;
}