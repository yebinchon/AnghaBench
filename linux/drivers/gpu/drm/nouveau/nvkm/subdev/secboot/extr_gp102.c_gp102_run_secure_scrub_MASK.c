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
struct nvkm_secboot {struct nvkm_subdev subdev; } ;
struct nvkm_falcon {int dummy; } ;
typedef  void nvkm_engine ;
struct nvkm_device {TYPE_1__** nvdec; } ;
struct hsf_load_header {int non_sec_code_off; int non_sec_code_size; int* apps; int data_dma_base; int /*<<< orphan*/  data_size; } ;
struct hsf_fw_header {int hdr_offset; } ;
struct fw_bin_header {int header_offset; int data_offset; } ;
struct TYPE_2__ {struct nvkm_falcon* falcon; int /*<<< orphan*/  engine; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int EINVAL ; 
 int ETIMEDOUT ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 scalar_t__ FUNC3 (struct nvkm_secboot*) ; 
 void* FUNC4 (struct nvkm_subdev*,struct nvkm_falcon*,char*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (struct nvkm_subdev*,char*) ; 
 void* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (void**) ; 
 int /*<<< orphan*/  FUNC9 (struct nvkm_subdev*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct nvkm_falcon*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct nvkm_falcon*,struct nvkm_subdev*) ; 
 int /*<<< orphan*/  FUNC12 (struct nvkm_falcon*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct nvkm_falcon*,void*,int,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct nvkm_falcon*,struct nvkm_subdev*) ; 
 int /*<<< orphan*/  FUNC15 (struct nvkm_falcon*) ; 
 int /*<<< orphan*/  FUNC16 (struct nvkm_falcon*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct nvkm_falcon*) ; 
 int FUNC18 (struct nvkm_falcon*,int) ; 

__attribute__((used)) static int
FUNC19(struct nvkm_secboot *sb)
{
	struct nvkm_subdev *subdev = &sb->subdev;
	struct nvkm_device *device = subdev->device;
	struct nvkm_engine *engine;
	struct nvkm_falcon *falcon;
	void *scrub_image;
	struct fw_bin_header *hsbin_hdr;
	struct hsf_fw_header *fw_hdr;
	struct hsf_load_header *lhdr;
	void *scrub_data;
	int ret;

	FUNC6(subdev, "running VPR scrubber binary on NVDEC...\n");

	engine = FUNC7(&device->nvdec[0]->engine);
	if (FUNC1(engine))
		return FUNC2(engine);
	falcon = device->nvdec[0]->falcon;

	FUNC11(falcon, &sb->subdev);

	scrub_image = FUNC4(subdev, falcon, "nvdec/scrubber");
	if (FUNC1(scrub_image))
		return FUNC2(scrub_image);

	FUNC15(falcon);
	FUNC10(falcon, NULL);

	hsbin_hdr = scrub_image;
	fw_hdr = scrub_image + hsbin_hdr->header_offset;
	lhdr = scrub_image + fw_hdr->hdr_offset;
	scrub_data = scrub_image + hsbin_hdr->data_offset;

	FUNC13(falcon, scrub_data, lhdr->non_sec_code_off,
			      lhdr->non_sec_code_size,
			      lhdr->non_sec_code_off >> 8, 0, false);
	FUNC13(falcon, scrub_data + lhdr->apps[0],
			      FUNC0(lhdr->apps[0], 0x100),
			      lhdr->apps[1],
			      lhdr->apps[0] >> 8, 0, true);
	FUNC12(falcon, scrub_data + lhdr->data_dma_base, 0,
			      lhdr->data_size, 0);

	FUNC5(scrub_image);

	FUNC16(falcon, 0x0);
	FUNC17(falcon);

	ret = FUNC18(falcon, 500);
	if (ret < 0) {
		FUNC9(subdev, "failed to run VPR scrubber binary!\n");
		ret = -ETIMEDOUT;
		goto end;
	}

	/* put nvdec in clean state - without reset it will remain in HS mode */
	FUNC15(falcon);

	if (FUNC3(sb)) {
		FUNC9(subdev, "VPR scrubber binary failed!\n");
		ret = -EINVAL;
		goto end;
	}

	FUNC6(subdev, "VPR scrub successfully completed\n");

end:
	FUNC14(falcon, &sb->subdev);
	FUNC8(&engine);
	return ret;
}