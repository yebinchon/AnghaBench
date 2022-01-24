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
struct gpiomux {int /*<<< orphan*/  gpios; int /*<<< orphan*/  ngpios; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int*) ; 
 unsigned int* values ; 

__attribute__((used)) static void FUNC3(const struct gpiomux *mux, unsigned val)
{
	FUNC1(values, FUNC0(val));

	values[0] = val;

	FUNC2(mux->ngpios, mux->gpios, NULL, values);
}