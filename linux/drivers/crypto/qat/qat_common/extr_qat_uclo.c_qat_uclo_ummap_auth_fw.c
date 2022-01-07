
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icp_qat_fw_loader_handle {int dummy; } ;
struct icp_qat_fw_auth_desc {int dummy; } ;
struct icp_qat_auth_chunk {int chunk_size; int chunk_bus_addr; } ;
struct icp_firml_dram_desc {int dram_size; int dram_bus_addr; struct icp_qat_fw_auth_desc* dram_base_addr_v; } ;


 int qat_uclo_simg_free (struct icp_qat_fw_loader_handle*,struct icp_firml_dram_desc*) ;

__attribute__((used)) static void qat_uclo_ummap_auth_fw(struct icp_qat_fw_loader_handle *handle,
       struct icp_qat_fw_auth_desc **desc)
{
 struct icp_firml_dram_desc dram_desc;

 dram_desc.dram_base_addr_v = *desc;
 dram_desc.dram_bus_addr = ((struct icp_qat_auth_chunk *)
       (*desc))->chunk_bus_addr;
 dram_desc.dram_size = ((struct icp_qat_auth_chunk *)
          (*desc))->chunk_size;
 qat_uclo_simg_free(handle, &dram_desc);
}
