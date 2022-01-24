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
struct or51211_state {int initialized; struct or51211_config* config; } ;
struct or51211_config {int (* request_firmware ) (struct dvb_frontend*,struct firmware const**,int /*<<< orphan*/ ) ;int /*<<< orphan*/  demod_address; } ;
struct firmware {int dummy; } ;
struct dvb_frontend {struct or51211_state* demodulator_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  OR51211_DEFAULT_FIRMWARE ; 
 unsigned char* cmd_buf ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned char*) ; 
 scalar_t__ FUNC1 (struct or51211_state*,int /*<<< orphan*/ ,unsigned char*,int) ; 
 scalar_t__ FUNC2 (struct or51211_state*,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct dvb_frontend*,struct firmware const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct firmware const*) ; 
 int FUNC8 (struct dvb_frontend*,struct firmware const**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct dvb_frontend* fe)
{
	struct or51211_state* state = fe->demodulator_priv;
	const struct or51211_config* config = state->config;
	const struct firmware* fw;
	unsigned char get_ver_buf[] = {0x04,0x00,0x30,0x00,0x00};
	unsigned char rec_buf[14];
	int ret,i;

	if (!state->initialized) {
		/* Request the firmware, this will block until it uploads */
		FUNC5("Waiting for firmware upload (%s)...\n",
			OR51211_DEFAULT_FIRMWARE);
		ret = config->request_firmware(fe, &fw,
					       OR51211_DEFAULT_FIRMWARE);
		FUNC5("Got Hotplug firmware\n");
		if (ret) {
			FUNC6("No firmware uploaded (timeout or file not found?)\n");
			return ret;
		}

		ret = FUNC4(fe, fw);
		FUNC7(fw);
		if (ret) {
			FUNC6("Writing firmware to device failed!\n");
			return ret;
		}
		FUNC5("Firmware upload complete.\n");

		/* Set operation mode in Receiver 1 register;
		 * type 1:
		 * data 0x50h  Automatic sets receiver channel conditions
		 *             Automatic NTSC rejection filter
		 *             Enable  MPEG serial data output
		 *             MPEG2tr
		 *             High tuner phase noise
		 *             normal +/-150kHz Carrier acquisition range
		 */
		if (FUNC2(state,state->config->demod_address,
				   cmd_buf,3)) {
			FUNC6("Load DVR Error 5\n");
			return -1;
		}

		/* Read back ucode version to besure we loaded correctly */
		/* and are really up and running */
		rec_buf[0] = 0x04;
		rec_buf[1] = 0x00;
		rec_buf[2] = 0x03;
		rec_buf[3] = 0x00;
		FUNC3(30);
		if (FUNC2(state,state->config->demod_address,
				   rec_buf,3)) {
			FUNC6("Load DVR Error A\n");
			return -1;
		}
		FUNC3(3);
		if (FUNC1(state,state->config->demod_address,
				  &rec_buf[10],2)) {
			FUNC6("Load DVR Error B\n");
			return -1;
		}

		rec_buf[0] = 0x04;
		rec_buf[1] = 0x00;
		rec_buf[2] = 0x01;
		rec_buf[3] = 0x00;
		FUNC3(20);
		if (FUNC2(state,state->config->demod_address,
				   rec_buf,3)) {
			FUNC6("Load DVR Error C\n");
			return -1;
		}
		FUNC3(3);
		if (FUNC1(state,state->config->demod_address,
				  &rec_buf[12],2)) {
			FUNC6("Load DVR Error D\n");
			return -1;
		}

		for (i = 0; i < 8; i++)
			rec_buf[i]=0xed;

		for (i = 0; i < 5; i++) {
			FUNC3(30);
			get_ver_buf[4] = i+1;
			if (FUNC2(state,state->config->demod_address,
					   get_ver_buf,5)) {
				FUNC6("Load DVR Error 6 - %d\n", i);
				return -1;
			}
			FUNC3(3);

			if (FUNC1(state,state->config->demod_address,
					  &rec_buf[i*2],2)) {
				FUNC6("Load DVR Error 7 - %d\n", i);
				return -1;
			}
			/* If we didn't receive the right index, try again */
			if ((int)rec_buf[i*2+1]!=i+1){
			  i--;
			}
		}
		FUNC0("read_fwbits %10ph\n", rec_buf);

		FUNC5("ver TU%02x%02x%02x VSB mode %02x Status %02x\n",
			rec_buf[2], rec_buf[4], rec_buf[6], rec_buf[12],
			rec_buf[10]);

		rec_buf[0] = 0x04;
		rec_buf[1] = 0x00;
		rec_buf[2] = 0x03;
		rec_buf[3] = 0x00;
		FUNC3(20);
		if (FUNC2(state,state->config->demod_address,
				   rec_buf,3)) {
			FUNC6("Load DVR Error 8\n");
			return -1;
		}
		FUNC3(20);
		if (FUNC1(state,state->config->demod_address,
				  &rec_buf[8],2)) {
			FUNC6("Load DVR Error 9\n");
			return -1;
		}
		state->initialized = 1;
	}

	return 0;
}