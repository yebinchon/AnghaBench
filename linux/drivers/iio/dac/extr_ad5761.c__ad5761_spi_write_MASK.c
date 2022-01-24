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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct ad5761_state {TYPE_1__* data; int /*<<< orphan*/  spi; } ;
struct TYPE_2__ {int /*<<< orphan*/ * d8; int /*<<< orphan*/  d32; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(struct ad5761_state *st, u8 addr, u16 val)
{
	st->data[0].d32 = FUNC1(FUNC0(addr) | val);

	return FUNC2(st->spi, &st->data[0].d8[1], 3);
}