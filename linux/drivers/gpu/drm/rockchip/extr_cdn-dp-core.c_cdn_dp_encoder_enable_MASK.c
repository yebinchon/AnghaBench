#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drm_encoder {int dummy; } ;
struct cdn_dp_device {int /*<<< orphan*/  lock; TYPE_1__* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTROL_VIDEO_IDLE ; 
 int /*<<< orphan*/  CONTROL_VIDEO_VALID ; 
 int DP_SEL_VOP_LIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  GRF_SOC_CON9 ; 
 int /*<<< orphan*/  FUNC2 (struct cdn_dp_device*) ; 
 int FUNC3 (struct cdn_dp_device*) ; 
 int FUNC4 (struct cdn_dp_device*) ; 
 int FUNC5 (struct cdn_dp_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct cdn_dp_device*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct cdn_dp_device*) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct drm_encoder*) ; 
 struct cdn_dp_device* FUNC9 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct drm_encoder *encoder)
{
	struct cdn_dp_device *dp = FUNC9(encoder);
	int ret, val;

	ret = FUNC8(dp->dev->of_node, encoder);
	if (ret < 0) {
		FUNC1(dp->dev, "Could not get vop id, %d", ret);
		return;
	}

	FUNC0(dp->dev, "vop %s output to cdn-dp\n",
			  (ret) ? "LIT" : "BIG");
	if (ret)
		val = DP_SEL_VOP_LIT | (DP_SEL_VOP_LIT << 16);
	else
		val = DP_SEL_VOP_LIT << 16;

	ret = FUNC5(dp, GRF_SOC_CON9, val);
	if (ret)
		return;

	FUNC10(&dp->lock);

	ret = FUNC4(dp);
	if (ret) {
		FUNC1(dp->dev, "Failed to enable encoder %d\n",
			      ret);
		goto out;
	}
	if (!FUNC2(dp)) {
		ret = FUNC7(dp);
		if (ret) {
			FUNC1(dp->dev, "Failed link train %d\n", ret);
			goto out;
		}
	}

	ret = FUNC6(dp, CONTROL_VIDEO_IDLE);
	if (ret) {
		FUNC1(dp->dev, "Failed to idle video %d\n", ret);
		goto out;
	}

	ret = FUNC3(dp);
	if (ret) {
		FUNC1(dp->dev, "Failed to config video %d\n", ret);
		goto out;
	}

	ret = FUNC6(dp, CONTROL_VIDEO_VALID);
	if (ret) {
		FUNC1(dp->dev, "Failed to valid video %d\n", ret);
		goto out;
	}
out:
	FUNC11(&dp->lock);
}