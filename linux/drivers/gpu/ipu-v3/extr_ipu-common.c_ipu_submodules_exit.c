
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_soc {int dummy; } ;


 int ipu_cpmem_exit (struct ipu_soc*) ;
 int ipu_csi_exit (struct ipu_soc*,int) ;
 int ipu_dc_exit (struct ipu_soc*) ;
 int ipu_di_exit (struct ipu_soc*,int) ;
 int ipu_dmfc_exit (struct ipu_soc*) ;
 int ipu_dp_exit (struct ipu_soc*) ;
 int ipu_ic_exit (struct ipu_soc*) ;
 int ipu_image_convert_exit (struct ipu_soc*) ;
 int ipu_smfc_exit (struct ipu_soc*) ;
 int ipu_vdi_exit (struct ipu_soc*) ;

__attribute__((used)) static void ipu_submodules_exit(struct ipu_soc *ipu)
{
 ipu_smfc_exit(ipu);
 ipu_dp_exit(ipu);
 ipu_dmfc_exit(ipu);
 ipu_dc_exit(ipu);
 ipu_di_exit(ipu, 1);
 ipu_di_exit(ipu, 0);
 ipu_image_convert_exit(ipu);
 ipu_vdi_exit(ipu);
 ipu_ic_exit(ipu);
 ipu_csi_exit(ipu, 1);
 ipu_csi_exit(ipu, 0);
 ipu_cpmem_exit(ipu);
}
