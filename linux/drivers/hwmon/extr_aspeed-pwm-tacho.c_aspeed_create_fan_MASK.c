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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct aspeed_pwm_tacho_data {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct aspeed_pwm_tacho_data*,int /*<<< orphan*/ *,int,scalar_t__) ; 
 int FUNC1 (struct device*,struct device_node*,struct aspeed_pwm_tacho_data*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct aspeed_pwm_tacho_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device_node*,char*) ; 
 int FUNC5 (struct device_node*,char*,scalar_t__*) ; 
 int FUNC6 (struct device_node*,char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(struct device *dev,
			     struct device_node *child,
			     struct aspeed_pwm_tacho_data *priv)
{
	u8 *fan_tach_ch;
	u32 pwm_port;
	int ret, count;

	ret = FUNC5(child, "reg", &pwm_port);
	if (ret)
		return ret;
	FUNC2(priv, (u8)pwm_port);

	ret = FUNC4(child, "cooling-levels");

	if (ret > 0) {
		ret = FUNC1(dev, child, priv, pwm_port,
						ret);
		if (ret)
			return ret;
	}

	count = FUNC4(child, "aspeed,fan-tach-ch");
	if (count < 1)
		return -EINVAL;
	fan_tach_ch = FUNC3(dev, count, sizeof(*fan_tach_ch),
				   GFP_KERNEL);
	if (!fan_tach_ch)
		return -ENOMEM;
	ret = FUNC6(child, "aspeed,fan-tach-ch",
					fan_tach_ch, count);
	if (ret)
		return ret;
	FUNC0(priv, fan_tach_ch, count, pwm_port);

	return 0;
}