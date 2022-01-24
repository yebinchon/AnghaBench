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
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct dvb_frontend_ops {int dummy; } ;
struct dvb_frontend {struct cxd2880_priv* demodulator_priv; int /*<<< orphan*/  ops; } ;
struct TYPE_6__ {int (* write_reg ) (TYPE_1__*,int /*<<< orphan*/ ,int,int) ;int (* read_regs ) (TYPE_1__*,int /*<<< orphan*/ ,int,scalar_t__*,int) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  spi; } ;
struct cxd2880_priv {TYPE_1__ regio; int /*<<< orphan*/  cxd2880_spi; TYPE_3__ spi_device; int /*<<< orphan*/  spi_mutex; int /*<<< orphan*/  spi; } ;
struct cxd2880_config {int /*<<< orphan*/  spi; int /*<<< orphan*/  spi_mutex; } ;
typedef  enum cxd2880_tnrdmd_chip_id { ____Placeholder_cxd2880_tnrdmd_chip_id } cxd2880_tnrdmd_chip_id ;

/* Variables and functions */
 int /*<<< orphan*/  CXD2880_IO_TGT_SYS ; 
 int /*<<< orphan*/  CXD2880_SPI_MODE_0 ; 
 int CXD2880_TNRDMD_CHIP_ID_CXD2880_ES1_0X ; 
 int CXD2880_TNRDMD_CHIP_ID_CXD2880_ES1_11 ; 
 int CXD2880_TNRDMD_CHIP_ID_UNKNOWN ; 
 int /*<<< orphan*/  CXD2880_TNRDMD_DRIVER_VERSION ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  cxd2880_dvbt_t2_ops ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cxd2880_priv*) ; 
 struct cxd2880_priv* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int,scalar_t__*,int) ; 

struct dvb_frontend *FUNC10(struct dvb_frontend *fe,
				    struct cxd2880_config *cfg)
{
	int ret;
	enum cxd2880_tnrdmd_chip_id chipid =
					CXD2880_TNRDMD_CHIP_ID_UNKNOWN;
	static struct cxd2880_priv *priv;
	u8 data = 0;

	if (!fe) {
		FUNC6("invalid arg.\n");
		return NULL;
	}

	priv = FUNC4(sizeof(struct cxd2880_priv), GFP_KERNEL);
	if (!priv)
		return NULL;

	priv->spi = cfg->spi;
	priv->spi_mutex = cfg->spi_mutex;
	priv->spi_device.spi = cfg->spi;

	FUNC5(&fe->ops, &cxd2880_dvbt_t2_ops,
	       sizeof(struct dvb_frontend_ops));

	ret = FUNC2(&priv->spi_device,
					    CXD2880_SPI_MODE_0,
					    55000000);
	if (ret) {
		FUNC6("spi_device_initialize failed. %d\n", ret);
		FUNC3(priv);
		return NULL;
	}

	ret = FUNC1(&priv->cxd2880_spi,
					    &priv->spi_device);
	if (ret) {
		FUNC6("spi_device_create_spi failed. %d\n", ret);
		FUNC3(priv);
		return NULL;
	}

	ret = FUNC0(&priv->regio, &priv->cxd2880_spi, 0);
	if (ret) {
		FUNC6("io_spi_create failed. %d\n", ret);
		FUNC3(priv);
		return NULL;
	}
	ret = priv->regio.write_reg(&priv->regio,
				    CXD2880_IO_TGT_SYS, 0x00, 0x00);
	if (ret) {
		FUNC6("set bank to 0x00 failed.\n");
		FUNC3(priv);
		return NULL;
	}
	ret = priv->regio.read_regs(&priv->regio,
				    CXD2880_IO_TGT_SYS, 0xfd, &data, 1);
	if (ret) {
		FUNC6("read chip id failed.\n");
		FUNC3(priv);
		return NULL;
	}

	chipid = (enum cxd2880_tnrdmd_chip_id)data;
	if (chipid != CXD2880_TNRDMD_CHIP_ID_CXD2880_ES1_0X &&
	    chipid != CXD2880_TNRDMD_CHIP_ID_CXD2880_ES1_11) {
		FUNC6("chip id invalid.\n");
		FUNC3(priv);
		return NULL;
	}

	fe->demodulator_priv = priv;
	FUNC7("CXD2880 driver version: Ver %s\n",
		CXD2880_TNRDMD_DRIVER_VERSION);

	return fe;
}