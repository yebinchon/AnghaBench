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

/* Variables and functions */
 int FUNC0 (int,int) ; 

__attribute__((used)) static int FUNC1(int channel, int scale)
{
	switch (channel) {
	case 1:
	case 2:
	case 3:
	case 4:
		return scale ? FUNC0(400, 1025) :
			FUNC0(1, 1);
	case 5:
		return FUNC0(7, 29);
	case 6:
		return FUNC0(375, 9000);
	case 7:
	case 8:
		return scale ? FUNC0(100, 125) :
			FUNC0(1, 1);
	case 19:
		return FUNC0(1, 3);
	default:
		return FUNC0(1, 1);
	}
	return FUNC0(1, 1);
}