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
struct omap_i2c_dev {int latency; int /*<<< orphan*/  dev; int /*<<< orphan*/  (* set_mpu_wkup_lat ) (int /*<<< orphan*/ ,int) ;} ;
struct i2c_msg {int dummy; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 struct omap_i2c_dev* FUNC0 (struct i2c_adapter*) ; 
 int FUNC1 (struct omap_i2c_dev*) ; 
 int FUNC2 (struct omap_i2c_dev*) ; 
 int FUNC3 (struct i2c_adapter*,struct i2c_msg*,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC9(struct i2c_adapter *adap, struct i2c_msg msgs[], int num,
		     bool polling)
{
	struct omap_i2c_dev *omap = FUNC0(adap);
	int i;
	int r;

	r = FUNC4(omap->dev);
	if (r < 0)
		goto out;

	r = FUNC2(omap);
	if (r < 0)
		goto out;

	r = FUNC1(omap);
	if (r < 0)
		goto out;

	if (omap->set_mpu_wkup_lat != NULL)
		omap->set_mpu_wkup_lat(omap->dev, omap->latency);

	for (i = 0; i < num; i++) {
		r = FUNC3(adap, &msgs[i], (i == (num - 1)),
				      polling);
		if (r != 0)
			break;
	}

	if (r == 0)
		r = num;

	FUNC1(omap);

	if (omap->set_mpu_wkup_lat != NULL)
		omap->set_mpu_wkup_lat(omap->dev, -1);

out:
	FUNC5(omap->dev);
	FUNC6(omap->dev);
	return r;
}