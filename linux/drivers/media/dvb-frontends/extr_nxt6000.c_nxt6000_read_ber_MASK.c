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
typedef  int u32 ;
struct nxt6000_state {int dummy; } ;
struct dvb_frontend {struct nxt6000_state* demodulator_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIT_BER_0 ; 
 int /*<<< orphan*/  VIT_BER_1 ; 
 int /*<<< orphan*/  VIT_COR_INTSTAT ; 
 int FUNC0 (struct nxt6000_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nxt6000_state*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend* fe, u32* ber)
{
	struct nxt6000_state* state = fe->demodulator_priv;

	FUNC1( state, VIT_COR_INTSTAT, 0x18 );

	*ber = (FUNC0( state, VIT_BER_1 ) << 8 ) |
		FUNC0( state, VIT_BER_0 );

	FUNC1( state, VIT_COR_INTSTAT, 0x18); // Clear BER Done interrupts

	return 0;
}