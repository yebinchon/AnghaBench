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
typedef  int u32 ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int STEDMA40_MAX_SEG_SIZE ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(int size, int data_width1, int data_width2)
{
	u32 max_w = FUNC1(data_width1, data_width2);
	u32 min_w = FUNC2(data_width1, data_width2);
	u32 seg_max = FUNC0(STEDMA40_MAX_SEG_SIZE * min_w, max_w);

	if (seg_max > STEDMA40_MAX_SEG_SIZE)
		seg_max -= max_w;

	if (size <= seg_max)
		return size;

	if (size <= 2 * seg_max)
		return FUNC0(size / 2, max_w);

	return seg_max;
}