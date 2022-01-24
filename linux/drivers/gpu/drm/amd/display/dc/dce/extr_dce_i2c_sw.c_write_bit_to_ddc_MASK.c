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
typedef  int uint32_t ;
struct ddc {int /*<<< orphan*/  pin_clock; int /*<<< orphan*/  pin_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC1(
	struct ddc *ddc,
	bool data_nor_clock,
	bool bit)
{
	uint32_t value = bit ? 1 : 0;

	if (data_nor_clock)
		FUNC0(ddc->pin_data, value);
	else
		FUNC0(ddc->pin_clock, value);
}