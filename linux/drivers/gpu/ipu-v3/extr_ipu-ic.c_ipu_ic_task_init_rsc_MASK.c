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
typedef  int u32 ;
struct ipu_ic_priv {int /*<<< orphan*/  lock; } ;
struct ipu_ic_csc {int /*<<< orphan*/  out_cs; int /*<<< orphan*/  in_cs; } ;
struct ipu_ic {int /*<<< orphan*/  out_cs; int /*<<< orphan*/  in_cs; TYPE_1__* reg; struct ipu_ic_priv* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  rsc; } ;

/* Variables and functions */
 int FUNC0 (struct ipu_ic*,int,int,int*,int*) ; 
 int FUNC1 (struct ipu_ic*,struct ipu_ic_csc const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ipu_ic*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC5(struct ipu_ic *ic,
			 const struct ipu_ic_csc *csc,
			 int in_width, int in_height,
			 int out_width, int out_height,
			 u32 rsc)
{
	struct ipu_ic_priv *priv = ic->priv;
	u32 downsize_coeff, resize_coeff;
	unsigned long flags;
	int ret = 0;

	if (!rsc) {
		/* Setup vertical resizing */

		ret = FUNC0(ic, in_height, out_height,
					 &resize_coeff, &downsize_coeff);
		if (ret)
			return ret;

		rsc = (downsize_coeff << 30) | (resize_coeff << 16);

		/* Setup horizontal resizing */
		ret = FUNC0(ic, in_width, out_width,
					 &resize_coeff, &downsize_coeff);
		if (ret)
			return ret;

		rsc |= (downsize_coeff << 14) | resize_coeff;
	}

	FUNC3(&priv->lock, flags);

	FUNC2(ic, rsc, ic->reg->rsc);

	/* Setup color space conversion */
	ic->in_cs = csc->in_cs;
	ic->out_cs = csc->out_cs;

	ret = FUNC1(ic, csc, 0);

	FUNC4(&priv->lock, flags);
	return ret;
}