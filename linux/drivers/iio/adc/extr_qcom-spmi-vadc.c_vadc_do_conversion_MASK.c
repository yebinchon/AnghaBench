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
typedef  int /*<<< orphan*/  u16 ;
struct vadc_priv {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  complete; scalar_t__ poll_eoc; } ;
struct vadc_channel_prop {int /*<<< orphan*/  avg_samples; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  VADC_CONV_REQ ; 
 int /*<<< orphan*/  VADC_CONV_REQ_SET ; 
 int VADC_CONV_TIME_MIN_US ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct vadc_priv*,struct vadc_channel_prop*) ; 
 int FUNC6 (struct vadc_priv*,int) ; 
 int FUNC7 (struct vadc_priv*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct vadc_priv*,int) ; 
 int FUNC9 (struct vadc_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static int FUNC11(struct vadc_priv *vadc,
			      struct vadc_channel_prop *prop, u16 *data)
{
	unsigned int timeout;
	int ret;

	FUNC2(&vadc->lock);

	ret = FUNC5(vadc, prop);
	if (ret)
		goto unlock;

	if (!vadc->poll_eoc)
		FUNC4(&vadc->complete);

	ret = FUNC8(vadc, true);
	if (ret)
		goto unlock;

	ret = FUNC9(vadc, VADC_CONV_REQ, VADC_CONV_REQ_SET);
	if (ret)
		goto err_disable;

	timeout = FUNC0(prop->avg_samples) * VADC_CONV_TIME_MIN_US * 2;

	if (vadc->poll_eoc) {
		ret = FUNC6(vadc, timeout);
	} else {
		ret = FUNC10(&vadc->complete, timeout);
		if (!ret) {
			ret = -ETIMEDOUT;
			goto err_disable;
		}

		/* Double check conversion status */
		ret = FUNC6(vadc, VADC_CONV_TIME_MIN_US);
		if (ret)
			goto err_disable;
	}

	ret = FUNC7(vadc, data);

err_disable:
	FUNC8(vadc, false);
	if (ret)
		FUNC1(vadc->dev, "conversion failed\n");
unlock:
	FUNC3(&vadc->lock);
	return ret;
}