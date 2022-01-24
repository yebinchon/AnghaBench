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
struct dtv_frontend_properties {scalar_t__ lna; } ;
struct dvb_frontend {struct drx39xxj_state* demodulator_priv; struct dtv_frontend_properties dtv_property_cache; } ;
struct drxj_data {int /*<<< orphan*/  has_lna; } ;
struct drx_demod_instance {struct drxj_data* my_ext_attr; } ;
struct drx39xxj_state {struct drx_demod_instance* demod; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct drx_demod_instance*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend *fe)
{
	struct dtv_frontend_properties *c = &fe->dtv_property_cache;
	struct drx39xxj_state *state = fe->demodulator_priv;
	struct drx_demod_instance *demod = state->demod;
	struct drxj_data *ext_attr = demod->my_ext_attr;

	if (c->lna) {
		if (!ext_attr->has_lna) {
			FUNC1("LNA is not supported on this device!\n");
			return -EINVAL;

		}
	}

	return FUNC0(demod, c->lna);
}