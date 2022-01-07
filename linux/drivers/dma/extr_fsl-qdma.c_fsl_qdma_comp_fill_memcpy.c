
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsl_qdma_format {void* data; } ;
struct fsl_qdma_comp {scalar_t__ desc_bus_addr; scalar_t__ bus_addr; struct fsl_qdma_format* desc_virt_addr; struct fsl_qdma_format* virt_addr; } ;
typedef scalar_t__ dma_addr_t ;


 int FSL_QDMA_CMD_LWC ;
 int FSL_QDMA_CMD_LWC_OFFSET ;
 int FSL_QDMA_CMD_RWTTYPE ;
 int FSL_QDMA_CMD_RWTTYPE_OFFSET ;
 int FSL_QDMA_COMMAND_BUFFER_SIZE ;
 int FSL_QDMA_DESCRIPTOR_BUFFER_SIZE ;
 void* QDMA_SDDF_CMD (int) ;
 int cpu_to_le32 (int) ;
 int memset (struct fsl_qdma_format*,int ,int ) ;
 int qdma_ccdf_get_offset (struct fsl_qdma_format*) ;
 int qdma_ccdf_get_status (struct fsl_qdma_format*) ;
 int qdma_ccdf_set_format (struct fsl_qdma_format*,int ) ;
 int qdma_ccdf_set_ser (struct fsl_qdma_format*,int ) ;
 int qdma_csgf_set_f (struct fsl_qdma_format*,int) ;
 int qdma_csgf_set_len (struct fsl_qdma_format*,int) ;
 int qdma_desc_addr_set64 (struct fsl_qdma_format*,scalar_t__) ;

__attribute__((used)) static void fsl_qdma_comp_fill_memcpy(struct fsl_qdma_comp *fsl_comp,
          dma_addr_t dst, dma_addr_t src, u32 len)
{
 u32 cmd;
 struct fsl_qdma_format *sdf, *ddf;
 struct fsl_qdma_format *ccdf, *csgf_desc, *csgf_src, *csgf_dest;

 ccdf = fsl_comp->virt_addr;
 csgf_desc = fsl_comp->virt_addr + 1;
 csgf_src = fsl_comp->virt_addr + 2;
 csgf_dest = fsl_comp->virt_addr + 3;
 sdf = fsl_comp->desc_virt_addr;
 ddf = fsl_comp->desc_virt_addr + 1;

 memset(fsl_comp->virt_addr, 0, FSL_QDMA_COMMAND_BUFFER_SIZE);
 memset(fsl_comp->desc_virt_addr, 0, FSL_QDMA_DESCRIPTOR_BUFFER_SIZE);

 qdma_desc_addr_set64(ccdf, fsl_comp->bus_addr + 16);
 qdma_ccdf_set_format(ccdf, qdma_ccdf_get_offset(ccdf));
 qdma_ccdf_set_ser(ccdf, qdma_ccdf_get_status(ccdf));


 qdma_desc_addr_set64(csgf_desc, fsl_comp->desc_bus_addr);

 qdma_csgf_set_len(csgf_desc, 32);
 qdma_desc_addr_set64(csgf_src, src);
 qdma_csgf_set_len(csgf_src, len);
 qdma_desc_addr_set64(csgf_dest, dst);
 qdma_csgf_set_len(csgf_dest, len);

 qdma_csgf_set_f(csgf_dest, len);

 cmd = cpu_to_le32(FSL_QDMA_CMD_RWTTYPE <<
     FSL_QDMA_CMD_RWTTYPE_OFFSET);
 sdf->data = QDMA_SDDF_CMD(cmd);

 cmd = cpu_to_le32(FSL_QDMA_CMD_RWTTYPE <<
     FSL_QDMA_CMD_RWTTYPE_OFFSET);
 cmd |= cpu_to_le32(FSL_QDMA_CMD_LWC << FSL_QDMA_CMD_LWC_OFFSET);
 ddf->data = QDMA_SDDF_CMD(cmd);
}
