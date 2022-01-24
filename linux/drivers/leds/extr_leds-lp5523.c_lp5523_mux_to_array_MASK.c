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
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int LP5523_MAX_LEDS ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 

__attribute__((used)) static void FUNC2(u16 led_mux, char *array)
{
	int i, pos = 0;
	for (i = 0; i < LP5523_MAX_LEDS; i++)
		pos += FUNC1(array + pos, "%x", FUNC0(led_mux, i));

	array[pos] = '\0';
}