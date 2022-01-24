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
struct nvkm_device {int dummy; } ;
struct TYPE_2__ {void* patch; void* micro; void* minor; void* chip; void* major; } ;
struct nvkm_bios {TYPE_1__ version; int /*<<< orphan*/  subdev; void* bmp_offset; void* bit_offset; int /*<<< orphan*/  size; int /*<<< orphan*/  data; int /*<<< orphan*/  imaged_addr; int /*<<< orphan*/  image0_size; } ;
struct nvbios_image {int type; int /*<<< orphan*/  base; int /*<<< orphan*/  size; } ;
struct bit_entry {int length; void* offset; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct nvkm_bios*,char,struct bit_entry*) ; 
 int FUNC1 (struct nvkm_bios*) ; 
 struct nvkm_bios* FUNC2 (int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC4 (struct nvkm_bios*,int /*<<< orphan*/ ,struct nvbios_image*) ; 
 void* FUNC5 (struct nvkm_bios*,void*) ; 
 int FUNC6 (struct nvkm_bios*) ; 
 int /*<<< orphan*/  nvkm_bios ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,void*,void*,void*,void*,void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct nvkm_device*,int,int /*<<< orphan*/ *) ; 

int
FUNC10(struct nvkm_device *device, int index, struct nvkm_bios **pbios)
{
	struct nvkm_bios *bios;
	struct nvbios_image image;
	struct bit_entry bit_i;
	int ret, idx = 0;

	if (!(bios = *pbios = FUNC2(sizeof(*bios), GFP_KERNEL)))
		return -ENOMEM;
	FUNC9(&nvkm_bios, device, index, &bios->subdev);

	ret = FUNC6(bios);
	if (ret)
		return ret;

	/* Some tables have weird pointers that need adjustment before
	 * they're dereferenced.  I'm not entirely sure why...
	 */
	if (FUNC4(bios, idx++, &image)) {
		bios->image0_size = image.size;
		while (FUNC4(bios, idx++, &image)) {
			if (image.type == 0xe0) {
				bios->imaged_addr = image.base;
				break;
			}
		}
	}

	/* detect type of vbios we're dealing with */
	bios->bmp_offset = FUNC3(bios->data, bios->size,
					  "\xff\x7f""NV\0", 5);
	if (bios->bmp_offset) {
		FUNC7(&bios->subdev, "BMP version %x.%x\n",
			   FUNC1(bios) >> 8,
			   FUNC1(bios) & 0xff);
	}

	bios->bit_offset = FUNC3(bios->data, bios->size,
					  "\xff\xb8""BIT", 5);
	if (bios->bit_offset)
		FUNC7(&bios->subdev, "BIT signature found\n");

	/* determine the vbios version number */
	if (!FUNC0(bios, 'i', &bit_i) && bit_i.length >= 4) {
		bios->version.major = FUNC5(bios, bit_i.offset + 3);
		bios->version.chip  = FUNC5(bios, bit_i.offset + 2);
		bios->version.minor = FUNC5(bios, bit_i.offset + 1);
		bios->version.micro = FUNC5(bios, bit_i.offset + 0);
		bios->version.patch = FUNC5(bios, bit_i.offset + 4);
	} else
	if (FUNC1(bios)) {
		bios->version.major = FUNC5(bios, bios->bmp_offset + 13);
		bios->version.chip  = FUNC5(bios, bios->bmp_offset + 12);
		bios->version.minor = FUNC5(bios, bios->bmp_offset + 11);
		bios->version.micro = FUNC5(bios, bios->bmp_offset + 10);
	}

	FUNC8(&bios->subdev, "version %02x.%02x.%02x.%02x.%02x\n",
		  bios->version.major, bios->version.chip,
		  bios->version.minor, bios->version.micro, bios->version.patch);
	return 0;
}