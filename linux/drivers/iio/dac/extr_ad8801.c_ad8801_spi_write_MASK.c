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
typedef  unsigned char u8 ;
struct ad8801_state {int /*<<< orphan*/  data; int /*<<< orphan*/  spi; } ;

/* Variables and functions */
 unsigned char AD8801_CFG_ADDR_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (unsigned char) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(struct ad8801_state *state,
	u8 channel, unsigned char value)
{
	state->data = FUNC0((channel << AD8801_CFG_ADDR_OFFSET) | value);
	return FUNC1(state->spi, &state->data, sizeof(state->data));
}