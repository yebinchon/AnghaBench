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
typedef  size_t u32 ;
struct komeda_kms_dev {size_t n_crtcs; int /*<<< orphan*/ * crtcs; } ;
struct komeda_events {int dummy; } ;
struct komeda_dev {TYPE_1__* funcs; } ;
struct drm_device {struct komeda_dev* dev_private; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  int /*<<< orphan*/  evts ;
struct TYPE_2__ {int /*<<< orphan*/  (* irq_handler ) (struct komeda_dev*,struct komeda_events*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct komeda_events*) ; 
 int /*<<< orphan*/  FUNC1 (struct komeda_events*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct komeda_dev*,struct komeda_events*) ; 
 struct komeda_kms_dev* FUNC3 (struct drm_device*) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *data)
{
	struct drm_device *drm = data;
	struct komeda_dev *mdev = drm->dev_private;
	struct komeda_kms_dev *kms = FUNC3(drm);
	struct komeda_events evts;
	irqreturn_t status;
	u32 i;

	/* Call into the CHIP to recognize events */
	FUNC1(&evts, 0, sizeof(evts));
	status = mdev->funcs->irq_handler(mdev, &evts);

	/* Notify the crtc to handle the events */
	for (i = 0; i < kms->n_crtcs; i++)
		FUNC0(&kms->crtcs[i], &evts);

	return status;
}