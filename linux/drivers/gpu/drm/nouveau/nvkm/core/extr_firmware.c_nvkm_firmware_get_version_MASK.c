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
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_device {int /*<<< orphan*/  dev; TYPE_1__* chip; } ;
struct firmware {int dummy; } ;
typedef  int /*<<< orphan*/  f ;
typedef  int /*<<< orphan*/  cname ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct firmware const**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_subdev const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_subdev const*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,char const*,...) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 char FUNC6 (char) ; 

int
FUNC7(const struct nvkm_subdev *subdev, const char *fwname,
			  int min_version, int max_version,
			  const struct firmware **fw)
{
	struct nvkm_device *device = subdev->device;
	char f[64];
	char cname[16];
	int i;

	/* Convert device name to lowercase */
	FUNC5(cname, device->chip->name, sizeof(cname));
	cname[sizeof(cname) - 1] = '\0';
	i = FUNC4(cname);
	while (i) {
		--i;
		cname[i] = FUNC6(cname[i]);
	}

	for (i = max_version; i >= min_version; i--) {
		if (i != 0)
			FUNC3(f, sizeof(f), "nvidia/%s/%s-%d.bin", cname, fwname, i);
		else
			FUNC3(f, sizeof(f), "nvidia/%s/%s.bin", cname, fwname);

		if (!FUNC0(fw, f, device->dev)) {
			FUNC1(subdev, "firmware \"%s\" loaded\n", f);
			return i;
		}

		FUNC1(subdev, "firmware \"%s\" unavailable\n", f);
	}

	FUNC2(subdev, "failed to load firmware \"%s\"", fwname);
	return -ENOENT;
}