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
typedef  scalar_t__ u64 ;
struct creative_sb0540 {int* keymap; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 scalar_t__* creative_sb0540_codes ; 

__attribute__((used)) static int FUNC1(struct creative_sb0540 *creative_sb0540, u64 keycode)
{
	int i;

	for (i = 0; i < FUNC0(creative_sb0540_codes); i++) {
		if (creative_sb0540_codes[i] == keycode)
			return creative_sb0540->keymap[i];
	}

	return 0;

}