#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned int* d8; } ;
struct ad7768_state {TYPE_1__ data; int /*<<< orphan*/  spi; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int*,int) ; 

__attribute__((used)) static int FUNC2(struct ad7768_state *st,
				unsigned int addr,
				unsigned int val)
{
	st->data.d8[0] = FUNC0(addr);
	st->data.d8[1] = val & 0xFF;

	return FUNC1(st->spi, st->data.d8, 2);
}