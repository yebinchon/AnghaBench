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
struct vidi_context {int /*<<< orphan*/  dev; TYPE_1__* raw_edid; } ;
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;
struct TYPE_2__ {int extensions; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int EDID_LENGTH ; 
 int EFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct vidi_context* FUNC1 (struct drm_connector*) ; 
 int FUNC2 (struct drm_connector*,struct edid*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*,struct edid*) ; 
 struct edid* FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct drm_connector *connector)
{
	struct vidi_context *ctx = FUNC1(connector);
	struct edid *edid;
	int edid_len;

	/*
	 * the edid data comes from user side and it would be set
	 * to ctx->raw_edid through specific ioctl.
	 */
	if (!ctx->raw_edid) {
		FUNC0(ctx->dev, "raw_edid is null.\n");
		return -EFAULT;
	}

	edid_len = (1 + ctx->raw_edid->extensions) * EDID_LENGTH;
	edid = FUNC4(ctx->raw_edid, edid_len, GFP_KERNEL);
	if (!edid) {
		FUNC0(ctx->dev, "failed to allocate edid\n");
		return -ENOMEM;
	}

	FUNC3(connector, edid);

	return FUNC2(connector, edid);
}