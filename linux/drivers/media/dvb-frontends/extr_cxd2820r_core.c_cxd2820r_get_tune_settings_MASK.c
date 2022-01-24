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
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct dvb_frontend_tune_settings {int dummy; } ;
struct dtv_frontend_properties {int delivery_system; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; struct cxd2820r_priv* demodulator_priv; } ;
struct cxd2820r_priv {struct i2c_client** client; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SYS_DVBC_ANNEX_A 130 
#define  SYS_DVBT 129 
#define  SYS_DVBT2 128 
 int FUNC0 (struct dvb_frontend*,struct dvb_frontend_tune_settings*) ; 
 int FUNC1 (struct dvb_frontend*,struct dvb_frontend_tune_settings*) ; 
 int FUNC2 (struct dvb_frontend*,struct dvb_frontend_tune_settings*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int FUNC4(struct dvb_frontend *fe,
				      struct dvb_frontend_tune_settings *s)
{
	struct cxd2820r_priv *priv = fe->demodulator_priv;
	struct i2c_client *client = priv->client[0];
	struct dtv_frontend_properties *c = &fe->dtv_property_cache;
	int ret;

	FUNC3(&client->dev, "delivery_system=%d\n", c->delivery_system);

	switch (c->delivery_system) {
	case SYS_DVBT:
		ret = FUNC1(fe, s);
		break;
	case SYS_DVBT2:
		ret = FUNC2(fe, s);
		break;
	case SYS_DVBC_ANNEX_A:
		ret = FUNC0(fe, s);
		break;
	default:
		ret = -EINVAL;
		break;
	}
	return ret;
}