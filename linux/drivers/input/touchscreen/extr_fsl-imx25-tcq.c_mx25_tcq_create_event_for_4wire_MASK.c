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
struct mx25_tcq_priv {unsigned int pen_threshold; unsigned int sample_count; int /*<<< orphan*/  idev; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mx25_tcq_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct mx25_tcq_priv*) ; 

__attribute__((used)) static void FUNC8(struct mx25_tcq_priv *priv,
					    u32 *sample_buf,
					    unsigned int samples)
{
	unsigned int x_pos = 0;
	unsigned int y_pos = 0;
	unsigned int touch_pre = 0;
	unsigned int touch_post = 0;
	unsigned int i;

	for (i = 0; i < samples; i++) {
		unsigned int index = FUNC1(sample_buf[i]);
		unsigned int val = FUNC0(sample_buf[i]);

		switch (index) {
		case 1:
			touch_pre = val;
			break;
		case 2:
			x_pos = val;
			break;
		case 3:
			y_pos = val;
			break;
		case 5:
			touch_post = val;
			break;
		default:
			FUNC2(priv->dev, "Dropped samples because of invalid index %d\n",
				index);
			return;
		}
	}

	if (samples != 0) {
		/*
		 * only if both touch measures are below a threshold,
		 * the position is valid
		 */
		if (touch_pre < priv->pen_threshold &&
		    touch_post < priv->pen_threshold) {
			/* valid samples, generate a report */
			x_pos /= priv->sample_count;
			y_pos /= priv->sample_count;
			FUNC3(priv->idev, ABS_X, x_pos);
			FUNC3(priv->idev, ABS_Y, y_pos);
			FUNC4(priv->idev, BTN_TOUCH, 1);
			FUNC5(priv->idev);

			/* get next sample */
			FUNC6(priv);
		} else if (touch_pre >= priv->pen_threshold &&
			   touch_post >= priv->pen_threshold) {
			/*
			 * if both samples are invalid,
			 * generate a release report
			 */
			FUNC4(priv->idev, BTN_TOUCH, 0);
			FUNC5(priv->idev);
			FUNC7(priv);
		} else {
			/*
			 * if only one of both touch measurements are
			 * below the threshold, still some bouncing
			 * happens. Take additional samples in this
			 * case to be sure
			 */
			FUNC6(priv);
		}
	}
}