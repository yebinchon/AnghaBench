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
struct sii902x {int /*<<< orphan*/  reset_gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static void FUNC2(struct sii902x *sii902x)
{
	if (!sii902x->reset_gpio)
		return;

	FUNC0(sii902x->reset_gpio, 1);

	/* The datasheet says treset-min = 100us. Make it 150us to be sure. */
	FUNC1(150, 200);

	FUNC0(sii902x->reset_gpio, 0);
}