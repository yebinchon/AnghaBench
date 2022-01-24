#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct dvb_frontend_ops {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {TYPE_1__ info; } ;
struct dvb_frontend {TYPE_2__ ops; struct as102_state* demodulator_priv; } ;
struct as102_state {int /*<<< orphan*/  elna_cfg; void* priv; struct as102_fe_ops const* ops; struct dvb_frontend frontend; } ;
struct as102_fe_ops {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  as102_fe_ops ; 
 struct as102_state* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 

struct dvb_frontend *FUNC3(const char *name,
				  const struct as102_fe_ops *ops,
				  void *priv,
				  uint8_t elna_cfg)
{
	struct as102_state *state;
	struct dvb_frontend *fe;

	state = FUNC0(sizeof(*state), GFP_KERNEL);
	if (!state)
		return NULL;

	fe = &state->frontend;
	fe->demodulator_priv = state;
	state->ops = ops;
	state->priv = priv;
	state->elna_cfg = elna_cfg;

	/* init frontend callback ops */
	FUNC1(&fe->ops, &as102_fe_ops, sizeof(struct dvb_frontend_ops));
	FUNC2(fe->ops.info.name, name, sizeof(fe->ops.info.name));

	return fe;

}