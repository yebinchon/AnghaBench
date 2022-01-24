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
struct komeda_pipeline {int n_layers; int n_scalers; int /*<<< orphan*/  ctrlr; int /*<<< orphan*/  improc; scalar_t__ merger; scalar_t__ splitter; int /*<<< orphan*/  compiz; int /*<<< orphan*/ * scalers; scalar_t__ wb_layer; scalar_t__* layers; } ;
struct komeda_kms_dev {int dummy; } ;
struct komeda_dev {int n_pipelines; struct komeda_pipeline** pipelines; } ;

/* Variables and functions */
 int FUNC0 (struct komeda_kms_dev*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct komeda_kms_dev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct komeda_kms_dev*,scalar_t__) ; 
 int FUNC3 (struct komeda_kms_dev*,scalar_t__) ; 
 int FUNC4 (struct komeda_kms_dev*,struct komeda_pipeline*) ; 
 int FUNC5 (struct komeda_kms_dev*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct komeda_kms_dev*,scalar_t__) ; 
 int FUNC7 (struct komeda_kms_dev*,int /*<<< orphan*/ ) ; 

int FUNC8(struct komeda_kms_dev *kms,
				struct komeda_dev *mdev)
{
	struct komeda_pipeline *pipe;
	int i, j, err;

	for (i = 0; i < mdev->n_pipelines; i++) {
		pipe = mdev->pipelines[i];

		err = FUNC4(kms, pipe);
		if (err)
			return err;

		for (j = 0; j < pipe->n_layers; j++) {
			err = FUNC2(kms, pipe->layers[j]);
			if (err)
				return err;
		}

		if (pipe->wb_layer) {
			err = FUNC2(kms, pipe->wb_layer);
			if (err)
				return err;
		}

		for (j = 0; j < pipe->n_scalers; j++) {
			err = FUNC5(kms, pipe->scalers[j]);
			if (err)
				return err;
		}

		err = FUNC0(kms, pipe->compiz);
		if (err)
			return err;

		if (pipe->splitter) {
			err = FUNC6(kms, pipe->splitter);
			if (err)
				return err;
		}

		if (pipe->merger) {
			err = FUNC3(kms, pipe->merger);
			if (err)
				return err;
		}

		err = FUNC1(kms, pipe->improc);
		if (err)
			return err;

		err = FUNC7(kms, pipe->ctrlr);
		if (err)
			return err;
	}

	return 0;
}