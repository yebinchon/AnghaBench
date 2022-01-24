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
struct shadow {int member_0; scalar_t__ score; scalar_t__ skip; char* data; int /*<<< orphan*/  size; TYPE_1__* func; int /*<<< orphan*/ * member_1; } ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_device {int /*<<< orphan*/  cfgopt; } ;
struct nvkm_bios {char* data; int /*<<< orphan*/  size; struct nvkm_subdev subdev; } ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nvbios_acpi_fast ; 
 int /*<<< orphan*/  nvbios_acpi_slow ; 
 int /*<<< orphan*/  nvbios_of ; 
 int /*<<< orphan*/  nvbios_pcirom ; 
 int /*<<< orphan*/  nvbios_platform ; 
 int /*<<< orphan*/  nvbios_ramin ; 
 int /*<<< orphan*/  nvbios_rom ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_subdev*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_subdev*,char*,...) ; 
 char* FUNC4 (int /*<<< orphan*/ ,char*,int*) ; 
 TYPE_1__ shadow_fw ; 
 scalar_t__ FUNC5 (struct nvkm_bios*,struct shadow*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

int
FUNC7(struct nvkm_bios *bios)
{
	struct nvkm_subdev *subdev = &bios->subdev;
	struct nvkm_device *device = subdev->device;
	struct shadow mthds[] = {
		{ 0, &nvbios_of },
		{ 0, &nvbios_ramin },
		{ 0, &nvbios_rom },
		{ 0, &nvbios_acpi_fast },
		{ 4, &nvbios_acpi_slow },
		{ 1, &nvbios_pcirom },
		{ 1, &nvbios_platform },
		{}
	}, *mthd, *best = NULL;
	const char *optarg;
	char *source;
	int optlen;

	/* handle user-specified bios source */
	optarg = FUNC4(device->cfgopt, "NvBios", &optlen);
	source = optarg ? FUNC1(optarg, optlen, GFP_KERNEL) : NULL;
	if (source) {
		/* try to match one of the built-in methods */
		for (mthd = mthds; mthd->func; mthd++) {
			if (mthd->func->name &&
			    !FUNC6(source, mthd->func->name)) {
				best = mthd;
				if (FUNC5(bios, mthd, NULL))
					break;
			}
		}

		/* otherwise, attempt to load as firmware */
		if (!best && (best = mthd)) {
			mthd->func = &shadow_fw;
			FUNC5(bios, mthd, source);
			mthd->func = NULL;
		}

		if (!best->score) {
			FUNC3(subdev, "%s invalid\n", source);
			FUNC0(source);
			source = NULL;
		}
	}

	/* scan all potential bios sources, looking for best image */
	if (!best || !best->score) {
		for (mthd = mthds, best = mthd; mthd->func; mthd++) {
			if (!mthd->skip || best->score < mthd->skip) {
				if (FUNC5(bios, mthd, NULL)) {
					if (mthd->score > best->score)
						best = mthd;
				}
			}
		}
	}

	/* cleanup the ones we didn't use */
	for (mthd = mthds; mthd->func; mthd++) {
		if (mthd != best)
			FUNC0(mthd->data);
	}

	if (!best->score) {
		FUNC3(subdev, "unable to locate usable image\n");
		return -EINVAL;
	}

	FUNC2(subdev, "using image from %s\n", best->func ?
		   best->func->name : source);
	bios->data = best->data;
	bios->size = best->size;
	FUNC0(source);
	return 0;
}