#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  sgmap_cnt; int /*<<< orphan*/ * sg; int /*<<< orphan*/  sgcomp; int /*<<< orphan*/  sgcomp_len; int /*<<< orphan*/  sgcomp_dma; } ;
struct TYPE_3__ {int /*<<< orphan*/  sgmap_cnt; int /*<<< orphan*/ * sg; int /*<<< orphan*/  sgcomp; int /*<<< orphan*/  sgcomp_len; int /*<<< orphan*/  sgcomp_dma; } ;
struct nitrox_softreq {TYPE_2__ out; TYPE_1__ in; struct nitrox_device* ndev; } ;
struct nitrox_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct device* FUNC0 (struct nitrox_device*) ; 
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct nitrox_softreq *sr)
{
	struct nitrox_device *ndev = sr->ndev;
	struct device *dev = FUNC0(ndev);


	FUNC1(dev, sr->in.sg, sr->in.sgmap_cnt, DMA_BIDIRECTIONAL);
	FUNC2(dev, sr->in.sgcomp_dma, sr->in.sgcomp_len,
			 DMA_TO_DEVICE);
	FUNC3(sr->in.sgcomp);
	sr->in.sg = NULL;
	sr->in.sgmap_cnt = 0;

	FUNC1(dev, sr->out.sg, sr->out.sgmap_cnt,
		     DMA_BIDIRECTIONAL);
	FUNC2(dev, sr->out.sgcomp_dma, sr->out.sgcomp_len,
			 DMA_TO_DEVICE);
	FUNC3(sr->out.sgcomp);
	sr->out.sg = NULL;
	sr->out.sgmap_cnt = 0;
}