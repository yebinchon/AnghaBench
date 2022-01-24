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
typedef  int u8 ;
struct as3935_state {int* buf; int /*<<< orphan*/  spi; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC2(struct as3935_state *st,
				unsigned int reg,
				unsigned int val)
{
	u8 *buf = st->buf;

	buf[0] = FUNC0(reg) >> 8;
	buf[1] = val;

	return FUNC1(st->spi, buf, 2);
}