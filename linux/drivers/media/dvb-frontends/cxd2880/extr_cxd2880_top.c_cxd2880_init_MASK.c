#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct dvb_frontend {struct cxd2880_priv* demodulator_priv; } ;
struct cxd2880_tnrdmd_create_param {int en_internal_ldo; int xosc_cap; int xosc_i; int stationary_use; int /*<<< orphan*/  xtal_share_type; int /*<<< orphan*/  ts_output_if; } ;
struct TYPE_4__ {int /*<<< orphan*/ * io; } ;
struct cxd2880_priv {int /*<<< orphan*/  spi_mutex; TYPE_1__ tnrdmd; int /*<<< orphan*/  regio; } ;

/* Variables and functions */
 int /*<<< orphan*/  CXD2880_TNRDMD_CFG_TSPIN_CURRENT ; 
 int /*<<< orphan*/  CXD2880_TNRDMD_TSOUT_IF_SPI ; 
 int /*<<< orphan*/  CXD2880_TNRDMD_XTAL_SHARE_NONE ; 
 int EINVAL ; 
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,struct cxd2880_tnrdmd_create_param*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

__attribute__((used)) static int FUNC8(struct dvb_frontend *fe)
{
	int ret;
	struct cxd2880_priv *priv = NULL;
	struct cxd2880_tnrdmd_create_param create_param;

	if (!fe) {
		FUNC6("invalid arg.\n");
		return -EINVAL;
	}

	priv = fe->demodulator_priv;

	create_param.ts_output_if = CXD2880_TNRDMD_TSOUT_IF_SPI;
	create_param.xtal_share_type = CXD2880_TNRDMD_XTAL_SHARE_NONE;
	create_param.en_internal_ldo = 1;
	create_param.xosc_cap = 18;
	create_param.xosc_i = 8;
	create_param.stationary_use = 1;

	FUNC3(priv->spi_mutex);
	if (priv->tnrdmd.io != &priv->regio) {
		ret = FUNC1(&priv->tnrdmd,
					    &priv->regio, &create_param);
		if (ret) {
			FUNC4(priv->spi_mutex);
			FUNC7("cxd2880 tnrdmd create failed %d\n", ret);
			return ret;
		}
	}
	ret = FUNC0(&priv->tnrdmd);
	if (ret) {
		FUNC4(priv->spi_mutex);
		FUNC6("cxd2880 integ init failed %d\n", ret);
		return ret;
	}

	ret = FUNC2(&priv->tnrdmd,
				     CXD2880_TNRDMD_CFG_TSPIN_CURRENT,
				     0x00);
	if (ret) {
		FUNC4(priv->spi_mutex);
		FUNC6("cxd2880 set config failed %d\n", ret);
		return ret;
	}
	FUNC4(priv->spi_mutex);

	FUNC5("OK.\n");

	return ret;
}