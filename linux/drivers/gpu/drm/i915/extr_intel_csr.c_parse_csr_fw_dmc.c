
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned int u32 ;
struct intel_dmc_header_v3 {unsigned int* mmioaddr; unsigned int* mmiodata; unsigned int mmio_count; } ;
struct intel_dmc_header_v1 {unsigned int* mmioaddr; unsigned int* mmiodata; unsigned int mmio_count; } ;
struct intel_dmc_header_base {int header_ver; int header_len; int fw_size; } ;
struct intel_csr {unsigned int* mmiodata; unsigned int mmio_count; unsigned int max_fw_size; int dmc_fw_size; int dmc_payload; int * mmioaddr; } ;
typedef scalar_t__ dmc_header ;


 scalar_t__ ARRAY_SIZE (int *) ;
 int BUILD_BUG_ON (int) ;
 unsigned int const CSR_MMIO_END_RANGE ;
 unsigned int const CSR_MMIO_START_RANGE ;
 scalar_t__ DMC_V1_MAX_MMIO_COUNT ;
 scalar_t__ DMC_V3_MAX_MMIO_COUNT ;
 int DRM_ERROR (char*,...) ;
 int GFP_KERNEL ;
 int _MMIO (unsigned int const) ;
 int kmalloc (unsigned int,int ) ;
 int memcpy (int ,int *,unsigned int) ;

__attribute__((used)) static u32 parse_csr_fw_dmc(struct intel_csr *csr,
       const struct intel_dmc_header_base *dmc_header,
       size_t rem_size)
{
 unsigned int header_len_bytes, dmc_header_size, payload_size, i;
 const u32 *mmioaddr, *mmiodata;
 u32 mmio_count, mmio_count_max;
 u8 *payload;

 BUILD_BUG_ON(ARRAY_SIZE(csr->mmioaddr) < DMC_V3_MAX_MMIO_COUNT ||
       ARRAY_SIZE(csr->mmioaddr) < DMC_V1_MAX_MMIO_COUNT);





 if (rem_size < sizeof(struct intel_dmc_header_base))
  goto error_truncated;


 if (dmc_header->header_ver == 3) {
  const struct intel_dmc_header_v3 *v3 =
   (const struct intel_dmc_header_v3 *)dmc_header;

  if (rem_size < sizeof(struct intel_dmc_header_v3))
   goto error_truncated;

  mmioaddr = v3->mmioaddr;
  mmiodata = v3->mmiodata;
  mmio_count = v3->mmio_count;
  mmio_count_max = DMC_V3_MAX_MMIO_COUNT;

  header_len_bytes = dmc_header->header_len * 4;
  dmc_header_size = sizeof(*v3);
 } else if (dmc_header->header_ver == 1) {
  const struct intel_dmc_header_v1 *v1 =
   (const struct intel_dmc_header_v1 *)dmc_header;

  if (rem_size < sizeof(struct intel_dmc_header_v1))
   goto error_truncated;

  mmioaddr = v1->mmioaddr;
  mmiodata = v1->mmiodata;
  mmio_count = v1->mmio_count;
  mmio_count_max = DMC_V1_MAX_MMIO_COUNT;
  header_len_bytes = dmc_header->header_len;
  dmc_header_size = sizeof(*v1);
 } else {
  DRM_ERROR("Unknown DMC fw header version: %u\n",
     dmc_header->header_ver);
  return 0;
 }

 if (header_len_bytes != dmc_header_size) {
  DRM_ERROR("DMC firmware has wrong dmc header length "
     "(%u bytes)\n", header_len_bytes);
  return 0;
 }


 if (mmio_count > mmio_count_max) {
  DRM_ERROR("DMC firmware has wrong mmio count %u\n", mmio_count);
  return 0;
 }

 for (i = 0; i < mmio_count; i++) {
  if (mmioaddr[i] < CSR_MMIO_START_RANGE ||
      mmioaddr[i] > CSR_MMIO_END_RANGE) {
   DRM_ERROR("DMC firmware has wrong mmio address 0x%x\n",
      mmioaddr[i]);
   return 0;
  }
  csr->mmioaddr[i] = _MMIO(mmioaddr[i]);
  csr->mmiodata[i] = mmiodata[i];
 }
 csr->mmio_count = mmio_count;

 rem_size -= header_len_bytes;


 payload_size = dmc_header->fw_size * 4;
 if (rem_size < payload_size)
  goto error_truncated;

 if (payload_size > csr->max_fw_size) {
  DRM_ERROR("DMC FW too big (%u bytes)\n", payload_size);
  return 0;
 }
 csr->dmc_fw_size = dmc_header->fw_size;

 csr->dmc_payload = kmalloc(payload_size, GFP_KERNEL);
 if (!csr->dmc_payload) {
  DRM_ERROR("Memory allocation failed for dmc payload\n");
  return 0;
 }

 payload = (u8 *)(dmc_header) + header_len_bytes;
 memcpy(csr->dmc_payload, payload, payload_size);

 return header_len_bytes + payload_size;

error_truncated:
 DRM_ERROR("Truncated DMC firmware, refusing.\n");
 return 0;
}
