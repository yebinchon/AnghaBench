#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_6__ {int demod_chip; int /*<<< orphan*/  get_dvb_frontend; } ;
struct TYPE_5__ {struct lgdt330x_state* demodulator_priv; TYPE_2__ ops; } ;
struct lgdt330x_state {int current_frequency; int current_modulation; TYPE_2__ config; struct i2c_client* client; TYPE_1__ frontend; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/ * platform_data; } ;
struct i2c_client {TYPE_3__ dev; } ;
struct dvb_frontend_ops {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
#define  LGDT3302 129 
#define  LGDT3303 128 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_3__*,char*) ; 
 scalar_t__ FUNC2 (struct lgdt330x_state*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,struct lgdt330x_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct lgdt330x_state*) ; 
 struct lgdt330x_state* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lgdt3302_ops ; 
 int /*<<< orphan*/  lgdt3303_ops ; 
 int /*<<< orphan*/  lgdt330x_get_dvb_frontend ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client,
			  const struct i2c_device_id *id)
{
	struct lgdt330x_state *state = NULL;
	u8 buf[1];

	/* Allocate memory for the internal state */
	state = FUNC5(sizeof(*state), GFP_KERNEL);
	if (!state)
		goto error;

	/* Setup the state */
	FUNC6(&state->config, client->dev.platform_data,
	       sizeof(state->config));
	FUNC3(client, state);
	state->client = client;

	/* Create dvb_frontend */
	switch (state->config.demod_chip) {
	case LGDT3302:
		FUNC6(&state->frontend.ops, &lgdt3302_ops,
		       sizeof(struct dvb_frontend_ops));
		break;
	case LGDT3303:
		FUNC6(&state->frontend.ops, &lgdt3303_ops,
		       sizeof(struct dvb_frontend_ops));
		break;
	default:
		goto error;
	}
	state->frontend.demodulator_priv = state;

	/* Setup get frontend callback */
	state->config.get_dvb_frontend = lgdt330x_get_dvb_frontend;

	/* Verify communication with demod chip */
	if (FUNC2(state, 2, buf, 1))
		goto error;

	state->current_frequency = -1;
	state->current_modulation = -1;

	FUNC0(&state->client->dev,
		"Demod loaded for LGDT330%s chip\n",
		state->config.demod_chip == LGDT3302 ? "2" : "3");

	return 0;

error:
	FUNC4(state);
	if (debug)
		FUNC1(KERN_DEBUG, &client->dev, "Error loading lgdt330x driver\n");
	return -ENODEV;
}