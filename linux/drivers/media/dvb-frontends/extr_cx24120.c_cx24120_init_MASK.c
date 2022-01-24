#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_9__ ;
typedef  struct TYPE_27__   TYPE_8__ ;
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_14__ ;
typedef  struct TYPE_18__   TYPE_13__ ;
typedef  struct TYPE_17__   TYPE_12__ ;
typedef  struct TYPE_16__   TYPE_11__ ;
typedef  struct TYPE_15__   TYPE_10__ ;

/* Type definitions */
typedef  int u8 ;
struct firmware {int size; int* data; } ;
struct TYPE_19__ {int len; TYPE_13__* stat; } ;
struct TYPE_17__ {int len; TYPE_11__* stat; } ;
struct TYPE_15__ {int len; TYPE_9__* stat; } ;
struct TYPE_27__ {int len; TYPE_7__* stat; } ;
struct TYPE_25__ {int len; TYPE_5__* stat; } ;
struct TYPE_23__ {int len; TYPE_3__* stat; } ;
struct dtv_frontend_properties {TYPE_14__ block_count; TYPE_12__ block_error; TYPE_10__ post_bit_count; TYPE_8__ post_bit_error; TYPE_6__ cnr; TYPE_4__ strength; } ;
struct dvb_frontend {struct cx24120_state* demodulator_priv; struct dtv_frontend_properties dtv_property_cache; } ;
struct cx24120_state {int cold_init; TYPE_2__* i2c; TYPE_1__* config; } ;
struct cx24120_cmd {int len; int* arg; int /*<<< orphan*/  id; } ;
struct TYPE_28__ {void* scale; } ;
struct TYPE_26__ {void* scale; } ;
struct TYPE_24__ {void* scale; } ;
struct TYPE_22__ {void* scale; } ;
struct TYPE_21__ {int /*<<< orphan*/  dev; } ;
struct TYPE_20__ {int (* request_firmware ) (struct dvb_frontend*,struct firmware const**,int /*<<< orphan*/ ) ;} ;
struct TYPE_18__ {void* scale; } ;
struct TYPE_16__ {void* scale; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_BANDWIDTH ; 
 int /*<<< orphan*/  CMD_BER_CTRL ; 
 int /*<<< orphan*/  CMD_FWVERSION ; 
 int /*<<< orphan*/  CMD_START_TUNER ; 
 void* CX24120_BER_WINDOW ; 
 int /*<<< orphan*/  CX24120_FIRMWARE ; 
 int CX24120_REG_MAILBOX ; 
 int EREMOTEIO ; 
 void* FE_SCALE_NOT_AVAILABLE ; 
 int FUNC0 (struct cx24120_state*,struct cx24120_cmd*) ; 
 scalar_t__ FUNC1 (struct cx24120_state*,int) ; 
 scalar_t__ FUNC2 (struct cx24120_state*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct cx24120_state*,int) ; 
 int FUNC4 (struct cx24120_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct cx24120_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct cx24120_state*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct cx24120_state*,int,int*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,unsigned char,unsigned char,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct firmware const*) ; 
 int FUNC13 (struct dvb_frontend*,struct firmware const**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct dvb_frontend *fe)
{
	const struct firmware *fw;
	struct dtv_frontend_properties *c = &fe->dtv_property_cache;
	struct cx24120_state *state = fe->demodulator_priv;
	struct cx24120_cmd cmd;
	u8 reg;
	int ret, i;
	unsigned char vers[4];

	if (state->cold_init)
		return 0;

	/* ???? */
	FUNC6(state, 0xea, 0x00);
	FUNC5(state);
	reg = FUNC3(state, 0xfb) & 0xfe;
	FUNC6(state, 0xfb, reg);
	reg = FUNC3(state, 0xfc) & 0xfe;
	FUNC6(state, 0xfc, reg);
	FUNC6(state, 0xc3, 0x04);
	FUNC6(state, 0xc4, 0x04);
	FUNC6(state, 0xce, 0x00);
	FUNC6(state, 0xcf, 0x00);
	reg = FUNC3(state, 0xea) & 0xfe;
	FUNC6(state, 0xea, reg);
	FUNC6(state, 0xeb, 0x0c);
	FUNC6(state, 0xec, 0x06);
	FUNC6(state, 0xed, 0x05);
	FUNC6(state, 0xee, 0x03);
	FUNC6(state, 0xef, 0x05);
	FUNC6(state, 0xf3, 0x03);
	FUNC6(state, 0xf4, 0x44);

	for (i = 0; i < 3; i++) {
		FUNC6(state, 0xf0 + i, 0x04);
		FUNC6(state, 0xe6 + i, 0x02);
	}

	FUNC6(state, 0xea, (reg | 0x01));
	for (i = 0; i < 6; i += 2) {
		FUNC6(state, 0xc5 + i, 0x00);
		FUNC6(state, 0xc6 + i, 0x00);
	}

	FUNC6(state, 0xe4, 0x03);
	FUNC6(state, 0xeb, 0x0a);

	FUNC8(&state->i2c->dev, "requesting firmware (%s) to download...\n",
		CX24120_FIRMWARE);

	ret = state->config->request_firmware(fe, &fw, CX24120_FIRMWARE);
	if (ret) {
		FUNC9("Could not load firmware (%s): %d\n", CX24120_FIRMWARE,
		    ret);
		return ret;
	}

	FUNC8(&state->i2c->dev,
		"Firmware found, size %d bytes (%02x %02x .. %02x %02x)\n",
		(int)fw->size,			/* firmware_size in bytes */
		fw->data[0],			/* fw 1st byte */
		fw->data[1],			/* fw 2d byte */
		fw->data[fw->size - 2],		/* fw before last byte */
		fw->data[fw->size - 1]);	/* fw last byte */

	FUNC5(state);
	reg = FUNC3(state, 0xfb) & 0xfe;
	FUNC6(state, 0xfb, reg);
	FUNC6(state, 0xe0, 0x76);
	FUNC6(state, 0xf7, 0x81);
	FUNC6(state, 0xf8, 0x00);
	FUNC6(state, 0xf9, 0x00);
	FUNC7(state, 0xfa, fw->data, (fw->size - 1), 0x00);
	FUNC6(state, 0xf7, 0xc0);
	FUNC6(state, 0xe0, 0x00);
	reg = (fw->size - 2) & 0x00ff;
	FUNC6(state, 0xf8, reg);
	reg = ((fw->size - 2) >> 8) & 0x00ff;
	FUNC6(state, 0xf9, reg);
	FUNC6(state, 0xf7, 0x00);
	FUNC6(state, 0xdc, 0x00);
	FUNC6(state, 0xdc, 0x07);
	FUNC11(500);

	/* Check final byte matches final byte of firmware */
	reg = FUNC3(state, 0xe1);
	if (reg == fw->data[fw->size - 1]) {
		FUNC8(&state->i2c->dev, "Firmware uploaded successfully\n");
		ret = 0;
	} else {
		FUNC9("Firmware upload failed. Last byte returned=0x%x\n", ret);
		ret = -EREMOTEIO;
	}
	FUNC6(state, 0xdc, 0x00);
	FUNC12(fw);
	if (ret != 0)
		return ret;

	/* Start tuner */
	cmd.id = CMD_START_TUNER;
	cmd.len = 3;
	cmd.arg[0] = 0x00;
	cmd.arg[1] = 0x00;
	cmd.arg[2] = 0x00;

	if (FUNC0(state, &cmd) != 0) {
		FUNC9("Error tuner start! :(\n");
		return -EREMOTEIO;
	}

	/* Set VCO */
	ret = FUNC4(state);
	if (ret != 0) {
		FUNC9("Error set VCO! :(\n");
		return ret;
	}

	/* set bandwidth */
	cmd.id = CMD_BANDWIDTH;
	cmd.len = 12;
	cmd.arg[0] = 0x00;
	cmd.arg[1] = 0x00;
	cmd.arg[2] = 0x00;
	cmd.arg[3] = 0x00;
	cmd.arg[4] = 0x05;
	cmd.arg[5] = 0x02;
	cmd.arg[6] = 0x02;
	cmd.arg[7] = 0x00;
	cmd.arg[8] = 0x05;
	cmd.arg[9] = 0x02;
	cmd.arg[10] = 0x02;
	cmd.arg[11] = 0x00;

	if (FUNC0(state, &cmd)) {
		FUNC9("Error set bandwidth!\n");
		return -EREMOTEIO;
	}

	reg = FUNC3(state, 0xba);
	if (reg > 3) {
		FUNC8(&state->i2c->dev, "Reset-readreg 0xba: %x\n", ret);
		FUNC9("Error initialising tuner!\n");
		return -EREMOTEIO;
	}

	FUNC8(&state->i2c->dev, "Tuner initialised correctly.\n");

	/* Initialise mpeg outputs */
	FUNC6(state, 0xeb, 0x0a);
	if (FUNC2(state, 0) ||
	    FUNC1(state, 0) ||
	    FUNC1(state, 1) ||
	    FUNC1(state, 2)) {
		FUNC9("Error initialising mpeg output. :(\n");
		return -EREMOTEIO;
	}

	/* Set size of BER window */
	cmd.id = CMD_BER_CTRL;
	cmd.len = 3;
	cmd.arg[0] = 0x00;
	cmd.arg[1] = CX24120_BER_WINDOW;
	cmd.arg[2] = CX24120_BER_WINDOW;
	if (FUNC0(state, &cmd)) {
		FUNC9("Error setting ber window\n");
		return -EREMOTEIO;
	}

	/* Firmware CMD 35: Get firmware version */
	cmd.id = CMD_FWVERSION;
	cmd.len = 1;
	for (i = 0; i < 4; i++) {
		cmd.arg[0] = i;
		ret = FUNC0(state, &cmd);
		if (ret != 0)
			return ret;
		vers[i] = FUNC3(state, CX24120_REG_MAILBOX);
	}
	FUNC10("FW version %i.%i.%i.%i\n", vers[0], vers[1], vers[2], vers[3]);

	/* init stats here in order signal app which stats are supported */
	c->strength.len = 1;
	c->strength.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
	c->cnr.len = 1;
	c->cnr.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
	c->post_bit_error.len = 1;
	c->post_bit_error.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
	c->post_bit_count.len = 1;
	c->post_bit_count.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
	c->block_error.len = 1;
	c->block_error.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
	c->block_count.len = 1;
	c->block_count.stat[0].scale = FE_SCALE_NOT_AVAILABLE;

	state->cold_init = 1;

	return 0;
}