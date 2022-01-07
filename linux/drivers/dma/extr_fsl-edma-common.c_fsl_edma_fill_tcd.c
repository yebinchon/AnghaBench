
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fsl_edma_hw_tcd {void* csr; void* biter; void* dlast_sga; void* doff; void* citer; void* slast; void* nbytes; void* soff; void* attr; void* daddr; void* saddr; } ;


 int EDMA_TCD_BITER_BITER (int ) ;
 int EDMA_TCD_CITER_CITER (int ) ;
 int EDMA_TCD_CSR_D_REQ ;
 int EDMA_TCD_CSR_E_SG ;
 int EDMA_TCD_CSR_INT_MAJOR ;
 void* cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int ) ;

__attribute__((used)) static inline
void fsl_edma_fill_tcd(struct fsl_edma_hw_tcd *tcd, u32 src, u32 dst,
         u16 attr, u16 soff, u32 nbytes, u32 slast, u16 citer,
         u16 biter, u16 doff, u32 dlast_sga, bool major_int,
         bool disable_req, bool enable_sg)
{
 u16 csr = 0;







 tcd->saddr = cpu_to_le32(src);
 tcd->daddr = cpu_to_le32(dst);

 tcd->attr = cpu_to_le16(attr);

 tcd->soff = cpu_to_le16(soff);

 tcd->nbytes = cpu_to_le32(nbytes);
 tcd->slast = cpu_to_le32(slast);

 tcd->citer = cpu_to_le16(EDMA_TCD_CITER_CITER(citer));
 tcd->doff = cpu_to_le16(doff);

 tcd->dlast_sga = cpu_to_le32(dlast_sga);

 tcd->biter = cpu_to_le16(EDMA_TCD_BITER_BITER(biter));
 if (major_int)
  csr |= EDMA_TCD_CSR_INT_MAJOR;

 if (disable_req)
  csr |= EDMA_TCD_CSR_D_REQ;

 if (enable_sg)
  csr |= EDMA_TCD_CSR_E_SG;

 tcd->csr = cpu_to_le16(csr);
}
