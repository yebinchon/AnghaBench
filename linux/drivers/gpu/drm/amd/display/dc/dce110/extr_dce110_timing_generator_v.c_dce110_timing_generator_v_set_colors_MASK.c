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
struct timing_generator {int dummy; } ;
struct tg_color {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timing_generator*,struct tg_color const*) ; 
 int /*<<< orphan*/  FUNC1 (struct timing_generator*,struct tg_color const*) ; 

__attribute__((used)) static void FUNC2(struct timing_generator *tg,
	const struct tg_color *blank_color,
	const struct tg_color *overscan_color)
{
	if (blank_color != NULL)
		FUNC0(tg, blank_color);
	if (overscan_color != NULL)
		FUNC1(tg, overscan_color);
}