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
struct ipu_soc {int dummy; } ;
struct ipu_crtc {int /*<<< orphan*/  di; int /*<<< orphan*/  dc; TYPE_1__* dev; } ;
struct ipu_client_platformdata {int /*<<< orphan*/  di; int /*<<< orphan*/  dc; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct ipu_soc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ipu_soc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ipu_soc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ipu_crtc*) ; 

__attribute__((used)) static int FUNC6(struct ipu_crtc *ipu_crtc,
		struct ipu_client_platformdata *pdata)
{
	struct ipu_soc *ipu = FUNC2(ipu_crtc->dev->parent);
	int ret;

	ipu_crtc->dc = FUNC3(ipu, pdata->dc);
	if (FUNC0(ipu_crtc->dc)) {
		ret = FUNC1(ipu_crtc->dc);
		goto err_out;
	}

	ipu_crtc->di = FUNC4(ipu, pdata->di);
	if (FUNC0(ipu_crtc->di)) {
		ret = FUNC1(ipu_crtc->di);
		goto err_out;
	}

	return 0;
err_out:
	FUNC5(ipu_crtc);

	return ret;
}