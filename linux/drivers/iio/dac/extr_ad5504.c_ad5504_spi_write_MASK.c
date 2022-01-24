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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct ad5504_state {int /*<<< orphan*/ * data; int /*<<< orphan*/  spi; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AD5504_CMD_WRITE ; 
 int AD5504_RES_MASK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(struct ad5504_state *st, u8 addr, u16 val)
{
	st->data[0] = FUNC1(AD5504_CMD_WRITE | FUNC0(addr) |
			      (val & AD5504_RES_MASK));

	return FUNC2(st->spi, &st->data[0], 2);
}