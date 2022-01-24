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
struct nvbios {int dummy; } ;
struct nouveau_drm {int dummy; } ;
struct drm_device {int dummy; } ;
struct bit_entry {int length; int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct nouveau_drm*,char*) ; 
 struct nouveau_drm* FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvbios*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct drm_device *dev, struct nvbios *bios, struct bit_entry *bitentry)
{
	/*
	 * Parses the init table segment that the bit entry points to.
	 *
	 * See parse_script_table_pointers for layout
	 */
	struct nouveau_drm *drm = FUNC1(dev);

	if (bitentry->length < 14) {
		FUNC0(drm, "Do not understand init table\n");
		return -EINVAL;
	}

	FUNC2(bios, bitentry->offset);
	return 0;
}