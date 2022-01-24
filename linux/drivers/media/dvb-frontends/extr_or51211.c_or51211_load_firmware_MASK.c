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
typedef  int u8 ;
struct or51211_state {TYPE_1__* config; } ;
struct firmware {int* data; int /*<<< orphan*/  size; } ;
struct dvb_frontend {struct or51211_state* demodulator_priv; } ;
struct TYPE_2__ {int demod_address; int /*<<< orphan*/  (* reset ) (struct dvb_frontend*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct or51211_state*,int,int*,int) ; 
 scalar_t__ FUNC2 (struct or51211_state*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int* run_buf ; 
 int /*<<< orphan*/  FUNC6 (struct dvb_frontend*) ; 

__attribute__((used)) static int FUNC7 (struct dvb_frontend* fe,
				  const struct firmware *fw)
{
	struct or51211_state* state = fe->demodulator_priv;
	u8 tudata[585];
	int i;

	FUNC0("Firmware is %zu bytes\n", fw->size);

	/* Get eprom data */
	tudata[0] = 17;
	if (FUNC2(state,0x50,tudata,1)) {
		FUNC5("error eprom addr\n");
		return -1;
	}
	if (FUNC1(state,0x50,&tudata[145],192)) {
		FUNC5("error eprom\n");
		return -1;
	}

	/* Create firmware buffer */
	for (i = 0; i < 145; i++)
		tudata[i] = fw->data[i];

	for (i = 0; i < 248; i++)
		tudata[i+337] = fw->data[145+i];

	state->config->reset(fe);

	if (FUNC2(state,state->config->demod_address,tudata,585)) {
		FUNC5("error 1\n");
		return -1;
	}
	FUNC3(1);

	if (FUNC2(state,state->config->demod_address,
			   &fw->data[393],8125)) {
		FUNC5("error 2\n");
		return -1;
	}
	FUNC3(1);

	if (FUNC2(state,state->config->demod_address,run_buf,2)) {
		FUNC5("error 3\n");
		return -1;
	}

	/* Wait at least 5 msec */
	FUNC3(10);
	if (FUNC2(state,state->config->demod_address,run_buf,2)) {
		FUNC5("error 4\n");
		return -1;
	}
	FUNC3(10);

	FUNC4("Done.\n");
	return 0;
}