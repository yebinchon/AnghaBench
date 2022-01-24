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
typedef  int u8 ;
typedef  int u16 ;
struct max9611_dev {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  i2c_client; } ;
typedef  enum max9611_conf_ids { ____Placeholder_max9611_conf_ids } max9611_conf_ids ;

/* Variables and functions */
 int MAX9611_MUX_MASK ; 
 int /*<<< orphan*/  MAX9611_REG_CTRL1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int** max9611_mux_conf ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct max9611_dev *max9611,
			       enum max9611_conf_ids selector,
			       u16 *raw_val)
{
	int ret;

	u8 mux_conf = max9611_mux_conf[selector][0] & MAX9611_MUX_MASK;
	u8 reg_addr = max9611_mux_conf[selector][1];

	/*
	 * Keep mutex lock held during read-write to avoid mux register
	 * (CTRL1) re-configuration.
	 */
	FUNC3(&max9611->lock);
	ret = FUNC2(max9611->i2c_client,
					MAX9611_REG_CTRL1, mux_conf);
	if (ret) {
		FUNC0(max9611->dev, "i2c write byte failed: 0x%2x - 0x%2x\n",
			MAX9611_REG_CTRL1, mux_conf);
		FUNC4(&max9611->lock);
		return ret;
	}

	/*
	 * need a delay here to make register configuration
	 * stabilize. 1 msec at least, from empirical testing.
	 */
	FUNC5(1000, 2000);

	ret = FUNC1(max9611->i2c_client, reg_addr);
	if (ret < 0) {
		FUNC0(max9611->dev, "i2c read word from 0x%2x failed\n",
			reg_addr);
		FUNC4(&max9611->lock);
		return ret;
	}

	*raw_val = ret;
	FUNC4(&max9611->lock);

	return 0;
}