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
typedef  int /*<<< orphan*/  u32 ;
struct mb86a16_state {int dummy; } ;
struct dvb_frontend {struct mb86a16_state* demodulator_priv; } ;

/* Variables and functions */
 int EREMOTEIO ; 
 int /*<<< orphan*/  MB86A16_DISTMON ; 
 int /*<<< orphan*/  MB86A16_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int FUNC1 (struct mb86a16_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  verbose ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend *fe, u32 *ucblocks)
{
	u8 dist;
	struct mb86a16_state *state = fe->demodulator_priv;

	if (FUNC1(state, MB86A16_DISTMON, &dist) != 2) {
		FUNC0(verbose, MB86A16_ERROR, 1, "I2C transfer error");
		return -EREMOTEIO;
	}
	*ucblocks = dist;

	return 0;
}