#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct nvkm_gpuobj {int dummy; } ;
struct TYPE_3__ {scalar_t__ limit; } ;
struct nvkm_falcon {TYPE_1__ code; } ;
struct nvkm_acr {int /*<<< orphan*/  subdev; } ;
struct hsf_load_header {int dummy; } ;
struct fw_bl_desc {int code_off; int data_off; int start_tag; int dmem_load_off; scalar_t__ const data_size; int /*<<< orphan*/  code_size; } ;
struct fw_bin_header {int header_offset; int data_offset; } ;
struct acr_r352 {TYPE_2__* func; void* hsbl_unload_blob; struct hsf_load_header unload_bl_header; struct nvkm_gpuobj* unload_blob; void* hsbl_blob; struct hsf_load_header load_bl_header; struct nvkm_gpuobj* load_blob; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* generate_hs_bl_desc ) (struct hsf_load_header const*,void*,int /*<<< orphan*/ ) ;scalar_t__ hs_bl_desc_size; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct acr_r352* FUNC1 (struct nvkm_acr*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (scalar_t__ const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_falcon*,void*,int,scalar_t__ const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nvkm_falcon*,void*,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct hsf_load_header const*,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct nvkm_acr *_acr, struct nvkm_falcon *falcon,
	      struct nvkm_gpuobj *blob, u64 offset)
{
	struct acr_r352 *acr = FUNC1(_acr);
	const u32 bl_desc_size = acr->func->hs_bl_desc_size;
	const struct hsf_load_header *load_hdr;
	struct fw_bin_header *bl_hdr;
	struct fw_bl_desc *hsbl_desc;
	void *bl, *blob_data, *hsbl_code, *hsbl_data;
	u32 code_size;
	u8 *bl_desc;

	bl_desc = FUNC3(bl_desc_size, GFP_KERNEL);
	if (!bl_desc)
		return -ENOMEM;

	/* Find the bootloader descriptor for our blob and copy it */
	if (blob == acr->load_blob) {
		load_hdr = &acr->load_bl_header;
		bl = acr->hsbl_blob;
	} else if (blob == acr->unload_blob) {
		load_hdr = &acr->unload_bl_header;
		bl = acr->hsbl_unload_blob;
	} else {
		FUNC4(_acr->subdev, "invalid secure boot blob!\n");
		FUNC2(bl_desc);
		return -EINVAL;
	}

	bl_hdr = bl;
	hsbl_desc = bl + bl_hdr->header_offset;
	blob_data = bl + bl_hdr->data_offset;
	hsbl_code = blob_data + hsbl_desc->code_off;
	hsbl_data = blob_data + hsbl_desc->data_off;
	code_size = FUNC0(hsbl_desc->code_size, 256);

	/*
	 * Copy HS bootloader data
	 */
	FUNC5(falcon, hsbl_data, 0x0, hsbl_desc->data_size, 0);

	/* Copy HS bootloader code to end of IMEM */
	FUNC6(falcon, hsbl_code, falcon->code.limit - code_size,
			      code_size, hsbl_desc->start_tag, 0, false);

	/* Generate the BL header */
	acr->func->generate_hs_bl_desc(load_hdr, bl_desc, offset);

	/*
	 * Copy HS BL header where the HS descriptor expects it to be
	 */
	FUNC5(falcon, bl_desc, hsbl_desc->dmem_load_off,
			      bl_desc_size, 0);

	FUNC2(bl_desc);
	return hsbl_desc->start_tag << 8;
}