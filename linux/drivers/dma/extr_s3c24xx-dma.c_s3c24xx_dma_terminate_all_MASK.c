#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct s3c24xx_dma_engine {TYPE_1__* pdev; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct s3c24xx_dma_chan {TYPE_3__ vc; TYPE_2__* at; scalar_t__ phy; int /*<<< orphan*/  state; int /*<<< orphan*/  id; struct s3c24xx_dma_engine* host; } ;
struct dma_chan {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  vd; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  S3C24XX_DMA_CHAN_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct s3c24xx_dma_engine*,struct s3c24xx_dma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct s3c24xx_dma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct s3c24xx_dma_chan* FUNC5 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct dma_chan *chan)
{
	struct s3c24xx_dma_chan *s3cchan = FUNC5(chan);
	struct s3c24xx_dma_engine *s3cdma = s3cchan->host;
	unsigned long flags;
	int ret = 0;

	FUNC3(&s3cchan->vc.lock, flags);

	if (!s3cchan->phy && !s3cchan->at) {
		FUNC0(&s3cdma->pdev->dev, "trying to terminate already stopped channel %d\n",
			s3cchan->id);
		ret = -EINVAL;
		goto unlock;
	}

	s3cchan->state = S3C24XX_DMA_CHAN_IDLE;

	/* Mark physical channel as free */
	if (s3cchan->phy)
		FUNC2(s3cchan);

	/* Dequeue current job */
	if (s3cchan->at) {
		FUNC6(&s3cchan->at->vd);
		s3cchan->at = NULL;
	}

	/* Dequeue jobs not yet fired as well */
	FUNC1(s3cdma, s3cchan);
unlock:
	FUNC4(&s3cchan->vc.lock, flags);

	return ret;
}