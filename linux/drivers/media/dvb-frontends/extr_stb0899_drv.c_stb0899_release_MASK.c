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
struct stb0899_state {int /*<<< orphan*/  verbose; } ;
struct dvb_frontend {struct stb0899_state* demodulator_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FE_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct stb0899_state*) ; 

__attribute__((used)) static void FUNC2(struct dvb_frontend *fe)
{
	struct stb0899_state *state = fe->demodulator_priv;

	FUNC0(state->verbose, FE_DEBUG, 1, "Release Frontend");
	FUNC1(state);
}