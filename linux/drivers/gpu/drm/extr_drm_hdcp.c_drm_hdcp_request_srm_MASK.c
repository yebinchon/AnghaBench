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
struct firmware {scalar_t__ size; scalar_t__ data; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct firmware const*) ; 
 int FUNC2 (struct firmware const**,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct drm_device *drm_dev)
{
	char fw_name[36] = "display_hdcp_srm.bin";
	const struct firmware *fw;

	int ret;

	ret = FUNC2(&fw, (const char *)fw_name,
				      drm_dev->dev);
	if (ret < 0)
		goto exit;

	if (fw->size && fw->data)
		FUNC0(fw->data, fw->size);

exit:
	FUNC1(fw);
}