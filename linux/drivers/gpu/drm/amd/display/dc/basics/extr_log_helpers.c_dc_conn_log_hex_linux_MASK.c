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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/  const) ; 

void FUNC1(const uint8_t *hex_data, int hex_data_count)
{
	int i;

	if (hex_data)
		for (i = 0; i < hex_data_count; i++)
			FUNC0("%2.2X ", hex_data[i]);
}