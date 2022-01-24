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
typedef  int /*<<< orphan*/  u32 ;
struct dtv_frontend_properties {scalar_t__ delivery_system; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; struct cxd2880_priv* demodulator_priv; } ;
struct cxd2880_priv {int /*<<< orphan*/  spi_mutex; int /*<<< orphan*/  tnrdmd; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ SYS_DVBT ; 
 scalar_t__ SYS_DVBT2 ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(struct dvb_frontend *fe, u32 *ucblocks)
{
	int ret;
	struct cxd2880_priv *priv = NULL;
	struct dtv_frontend_properties *c = NULL;

	if (!fe || !ucblocks) {
		FUNC5("invalid arg\n");
		return -EINVAL;
	}

	priv = fe->demodulator_priv;
	c = &fe->dtv_property_cache;

	FUNC2(priv->spi_mutex);
	if (c->delivery_system == SYS_DVBT) {
		ret = FUNC1(&priv->tnrdmd,
								  ucblocks);
	} else if (c->delivery_system == SYS_DVBT2) {
		ret = FUNC0(&priv->tnrdmd,
								   ucblocks);
	} else {
		FUNC5("invalid system\n");
		FUNC3(priv->spi_mutex);
		return -EINVAL;
	}
	FUNC3(priv->spi_mutex);

	if (ret)
		FUNC4("ret = %d\n", ret);

	return ret;
}