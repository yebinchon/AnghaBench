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
struct drm_device {struct amdgpu_device* dev_private; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct atom_context {char* vbios_version; } ;
struct TYPE_2__ {struct atom_context* atom_context; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct drm_device* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
						 struct device_attribute *attr,
						 char *buf)
{
	struct drm_device *ddev = FUNC0(dev);
	struct amdgpu_device *adev = ddev->dev_private;
	struct atom_context *ctx = adev->mode_info.atom_context;

	return FUNC1(buf, PAGE_SIZE, "%s\n", ctx->vbios_version);
}