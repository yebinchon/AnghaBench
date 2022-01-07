
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_secboot {struct nvkm_subdev subdev; } ;
struct nvkm_falcon {int dummy; } ;
typedef void nvkm_engine ;
struct nvkm_device {TYPE_1__** nvdec; } ;
struct hsf_load_header {int non_sec_code_off; int non_sec_code_size; int* apps; int data_dma_base; int data_size; } ;
struct hsf_fw_header {int hdr_offset; } ;
struct fw_bin_header {int header_offset; int data_offset; } ;
struct TYPE_2__ {struct nvkm_falcon* falcon; int engine; } ;


 int ALIGN (int,int) ;
 int EINVAL ;
 int ETIMEDOUT ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 scalar_t__ gp102_secboot_scrub_required (struct nvkm_secboot*) ;
 void* hs_ucode_load_blob (struct nvkm_subdev*,struct nvkm_falcon*,char*) ;
 int kfree (void*) ;
 int nvkm_debug (struct nvkm_subdev*,char*) ;
 void* nvkm_engine_ref (int *) ;
 int nvkm_engine_unref (void**) ;
 int nvkm_error (struct nvkm_subdev*,char*) ;
 int nvkm_falcon_bind_context (struct nvkm_falcon*,int *) ;
 int nvkm_falcon_get (struct nvkm_falcon*,struct nvkm_subdev*) ;
 int nvkm_falcon_load_dmem (struct nvkm_falcon*,void*,int ,int ,int ) ;
 int nvkm_falcon_load_imem (struct nvkm_falcon*,void*,int,int,int,int ,int) ;
 int nvkm_falcon_put (struct nvkm_falcon*,struct nvkm_subdev*) ;
 int nvkm_falcon_reset (struct nvkm_falcon*) ;
 int nvkm_falcon_set_start_addr (struct nvkm_falcon*,int) ;
 int nvkm_falcon_start (struct nvkm_falcon*) ;
 int nvkm_falcon_wait_for_halt (struct nvkm_falcon*,int) ;

__attribute__((used)) static int
gp102_run_secure_scrub(struct nvkm_secboot *sb)
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

 nvkm_debug(subdev, "running VPR scrubber binary on NVDEC...\n");

 engine = nvkm_engine_ref(&device->nvdec[0]->engine);
 if (IS_ERR(engine))
  return PTR_ERR(engine);
 falcon = device->nvdec[0]->falcon;

 nvkm_falcon_get(falcon, &sb->subdev);

 scrub_image = hs_ucode_load_blob(subdev, falcon, "nvdec/scrubber");
 if (IS_ERR(scrub_image))
  return PTR_ERR(scrub_image);

 nvkm_falcon_reset(falcon);
 nvkm_falcon_bind_context(falcon, ((void*)0));

 hsbin_hdr = scrub_image;
 fw_hdr = scrub_image + hsbin_hdr->header_offset;
 lhdr = scrub_image + fw_hdr->hdr_offset;
 scrub_data = scrub_image + hsbin_hdr->data_offset;

 nvkm_falcon_load_imem(falcon, scrub_data, lhdr->non_sec_code_off,
         lhdr->non_sec_code_size,
         lhdr->non_sec_code_off >> 8, 0, 0);
 nvkm_falcon_load_imem(falcon, scrub_data + lhdr->apps[0],
         ALIGN(lhdr->apps[0], 0x100),
         lhdr->apps[1],
         lhdr->apps[0] >> 8, 0, 1);
 nvkm_falcon_load_dmem(falcon, scrub_data + lhdr->data_dma_base, 0,
         lhdr->data_size, 0);

 kfree(scrub_image);

 nvkm_falcon_set_start_addr(falcon, 0x0);
 nvkm_falcon_start(falcon);

 ret = nvkm_falcon_wait_for_halt(falcon, 500);
 if (ret < 0) {
  nvkm_error(subdev, "failed to run VPR scrubber binary!\n");
  ret = -ETIMEDOUT;
  goto end;
 }


 nvkm_falcon_reset(falcon);

 if (gp102_secboot_scrub_required(sb)) {
  nvkm_error(subdev, "VPR scrubber binary failed!\n");
  ret = -EINVAL;
  goto end;
 }

 nvkm_debug(subdev, "VPR scrub successfully completed\n");

end:
 nvkm_falcon_put(falcon, &sb->subdev);
 nvkm_engine_unref(&engine);
 return ret;
}
