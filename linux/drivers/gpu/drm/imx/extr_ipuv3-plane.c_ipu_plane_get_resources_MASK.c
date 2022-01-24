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
struct ipu_plane {int dma; scalar_t__ dp_flow; void* dp; int /*<<< orphan*/  ipu; void* dmfc; void* alpha_ch; void* ipu_ch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int FUNC3 (int) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int) ; 
 void* FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 void* FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ipu_plane*) ; 

int FUNC8(struct ipu_plane *ipu_plane)
{
	int ret;
	int alpha_ch;

	ipu_plane->ipu_ch = FUNC6(ipu_plane->ipu, ipu_plane->dma);
	if (FUNC1(ipu_plane->ipu_ch)) {
		ret = FUNC2(ipu_plane->ipu_ch);
		FUNC0("failed to get idmac channel: %d\n", ret);
		return ret;
	}

	alpha_ch = FUNC3(ipu_plane->dma);
	if (alpha_ch >= 0) {
		ipu_plane->alpha_ch = FUNC6(ipu_plane->ipu, alpha_ch);
		if (FUNC1(ipu_plane->alpha_ch)) {
			ret = FUNC2(ipu_plane->alpha_ch);
			FUNC0("failed to get alpha idmac channel %d: %d\n",
				  alpha_ch, ret);
			return ret;
		}
	}

	ipu_plane->dmfc = FUNC4(ipu_plane->ipu, ipu_plane->dma);
	if (FUNC1(ipu_plane->dmfc)) {
		ret = FUNC2(ipu_plane->dmfc);
		FUNC0("failed to get dmfc: ret %d\n", ret);
		goto err_out;
	}

	if (ipu_plane->dp_flow >= 0) {
		ipu_plane->dp = FUNC5(ipu_plane->ipu, ipu_plane->dp_flow);
		if (FUNC1(ipu_plane->dp)) {
			ret = FUNC2(ipu_plane->dp);
			FUNC0("failed to get dp flow: %d\n", ret);
			goto err_out;
		}
	}

	return 0;
err_out:
	FUNC7(ipu_plane);

	return ret;
}