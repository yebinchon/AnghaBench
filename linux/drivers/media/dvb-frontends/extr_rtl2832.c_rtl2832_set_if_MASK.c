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
typedef  int u64 ;
typedef  int u32 ;
struct rtl2832_dev {TYPE_1__* pdata; struct i2c_client* client; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct dvb_frontend {struct rtl2832_dev* demodulator_priv; } ;
struct TYPE_2__ {int clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  DVBT_EN_BBIN ; 
 int /*<<< orphan*/  DVBT_PSET_IFFREQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,...) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (struct rtl2832_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend *fe, u32 if_freq)
{
	struct rtl2832_dev *dev = fe->demodulator_priv;
	struct i2c_client *client = dev->client;
	int ret;
	u64 pset_iffreq;
	u8 en_bbin = (if_freq == 0 ? 0x1 : 0x0);

	/*
	* PSET_IFFREQ = - floor((IfFreqHz % CrystalFreqHz) * pow(2, 22)
	*		/ CrystalFreqHz)
	*/
	pset_iffreq = if_freq % dev->pdata->clk;
	pset_iffreq *= 0x400000;
	pset_iffreq = FUNC1(pset_iffreq, dev->pdata->clk);
	pset_iffreq = -pset_iffreq;
	pset_iffreq = pset_iffreq & 0x3fffff;
	FUNC0(&client->dev, "if_frequency=%d pset_iffreq=%08x\n",
		if_freq, (unsigned)pset_iffreq);

	ret = FUNC2(dev, DVBT_EN_BBIN, en_bbin);
	if (ret)
		goto err;

	ret = FUNC2(dev, DVBT_PSET_IFFREQ, pset_iffreq);
	if (ret)
		goto err;

	return 0;
err:
	FUNC0(&client->dev, "failed=%d\n", ret);
	return ret;
}