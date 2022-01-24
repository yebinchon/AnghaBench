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
struct tda998x_priv {int wq_edid_wait; int /*<<< orphan*/  edid_mutex; TYPE_1__* hdmi; int /*<<< orphan*/  wq_edid; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; scalar_t__ irq; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int INT_FLAGS_2_EDID_BLK_RD ; 
 int /*<<< orphan*/  REG_DDC_ADDR ; 
 int /*<<< orphan*/  REG_DDC_OFFS ; 
 int /*<<< orphan*/  REG_DDC_SEGM ; 
 int /*<<< orphan*/  REG_DDC_SEGM_ADDR ; 
 int /*<<< orphan*/  REG_EDID_CTRL ; 
 int /*<<< orphan*/  REG_EDID_DATA_0 ; 
 int /*<<< orphan*/  REG_INT_FLAGS_2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct tda998x_priv*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct tda998x_priv*,int /*<<< orphan*/ ,int*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct tda998x_priv*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(void *data, u8 *buf, unsigned int blk, size_t length)
{
	struct tda998x_priv *priv = data;
	u8 offset, segptr;
	int ret, i;

	offset = (blk & 1) ? 128 : 0;
	segptr = blk / 2;

	FUNC3(&priv->edid_mutex);

	FUNC7(priv, REG_DDC_ADDR, 0xa0);
	FUNC7(priv, REG_DDC_OFFS, offset);
	FUNC7(priv, REG_DDC_SEGM_ADDR, 0x60);
	FUNC7(priv, REG_DDC_SEGM, segptr);

	/* enable reading EDID: */
	priv->wq_edid_wait = 1;
	FUNC7(priv, REG_EDID_CTRL, 0x1);

	/* flag must be cleared by sw: */
	FUNC7(priv, REG_EDID_CTRL, 0x0);

	/* wait for block read to complete: */
	if (priv->hdmi->irq) {
		i = FUNC8(priv->wq_edid,
					!priv->wq_edid_wait,
					FUNC1(100));
		if (i < 0) {
			FUNC0(&priv->hdmi->dev, "read edid wait err %d\n", i);
			ret = i;
			goto failed;
		}
	} else {
		for (i = 100; i > 0; i--) {
			FUNC2(1);
			ret = FUNC5(priv, REG_INT_FLAGS_2);
			if (ret < 0)
				goto failed;
			if (ret & INT_FLAGS_2_EDID_BLK_RD)
				break;
		}
	}

	if (i == 0) {
		FUNC0(&priv->hdmi->dev, "read edid timeout\n");
		ret = -ETIMEDOUT;
		goto failed;
	}

	ret = FUNC6(priv, REG_EDID_DATA_0, buf, length);
	if (ret != length) {
		FUNC0(&priv->hdmi->dev, "failed to read edid block %d: %d\n",
			blk, ret);
		goto failed;
	}

	ret = 0;

 failed:
	FUNC4(&priv->edid_mutex);
	return ret;
}