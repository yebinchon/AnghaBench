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
typedef  int /*<<< orphan*/  umode_t ;
struct intel_th_device {scalar_t__ id; int /*<<< orphan*/  name; } ;
struct intel_th {int /*<<< orphan*/  id; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int /*<<< orphan*/  kgid_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 struct intel_th* FUNC1 (struct intel_th_device*) ; 
 struct intel_th_device* FUNC2 (struct device*) ; 

__attribute__((used)) static char *FUNC3(struct device *dev, umode_t *mode,
				     kuid_t *uid, kgid_t *gid)
{
	struct intel_th_device *thdev = FUNC2(dev);
	struct intel_th *th = FUNC1(thdev);
	char *node;

	if (thdev->id >= 0)
		node = FUNC0(GFP_KERNEL, "intel_th%d/%s%d", th->id,
				 thdev->name, thdev->id);
	else
		node = FUNC0(GFP_KERNEL, "intel_th%d/%s", th->id,
				 thdev->name);

	return node;
}