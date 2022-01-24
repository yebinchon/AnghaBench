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
struct vidi_context {int connected; int /*<<< orphan*/  drm_dev; struct edid* raw_edid; } ;
struct edid {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int EINVAL ; 
 struct vidi_context* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ fake_edid_info ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				struct device_attribute *attr,
				const char *buf, size_t len)
{
	struct vidi_context *ctx = FUNC1(dev);
	int ret;

	ret = FUNC3(buf, 0, &ctx->connected);
	if (ret)
		return ret;

	if (ctx->connected > 1)
		return -EINVAL;

	/* use fake edid data for test. */
	if (!ctx->raw_edid)
		ctx->raw_edid = (struct edid *)fake_edid_info;

	/* if raw_edid isn't same as fake data then it can't be tested. */
	if (ctx->raw_edid != (struct edid *)fake_edid_info) {
		FUNC0(dev, "edid data is not fake data.\n");
		return -EINVAL;
	}

	FUNC0(dev, "requested connection.\n");

	FUNC2(ctx->drm_dev);

	return len;
}