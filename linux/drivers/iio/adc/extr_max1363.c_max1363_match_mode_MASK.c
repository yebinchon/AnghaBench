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
struct max1363_mode {int /*<<< orphan*/  modemask; } ;
struct max1363_chip_info {int num_modes; size_t* mode_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX1363_MAX_CHANNELS ; 
 scalar_t__ FUNC0 (unsigned long const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct max1363_mode const* max1363_mode_table ; 

__attribute__((used)) static const struct max1363_mode
*FUNC1(const unsigned long *mask,
	const struct max1363_chip_info *ci)
{
	int i;
	if (mask)
		for (i = 0; i < ci->num_modes; i++)
			if (FUNC0(mask,
					  max1363_mode_table[ci->mode_list[i]].
					  modemask,
					  MAX1363_MAX_CHANNELS))
				return &max1363_mode_table[ci->mode_list[i]];
	return NULL;
}