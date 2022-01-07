
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct nitrox_device {int dummy; } ;


 int BMI_BIST_REG ;
 int BMO_BIST_REG ;
 int EFL_CORE_BIST_REGX (int) ;
 int EFL_TOP_BIST_STAT ;
 int EIO ;
 int EMU_BIST_STATUSX (int) ;
 int LBC_BIST_STATUS ;
 int NPS_CORE_BIST_REG ;
 int NPS_CORE_NPC_BIST_REG ;
 int NPS_PKT_IN_BIST_REG ;
 int NPS_PKT_SLC_BIST_REG ;
 int NR_CLUSTERS ;
 int PEM_BIST_STATUSX (int ) ;
 int POM_BIST_REG ;
 int UCD_BIST_STATUS ;
 scalar_t__ nitrox_read_csr (struct nitrox_device*,int ) ;

__attribute__((used)) static int nitrox_bist_check(struct nitrox_device *ndev)
{
 u64 value = 0;
 int i;

 for (i = 0; i < NR_CLUSTERS; i++) {
  value += nitrox_read_csr(ndev, EMU_BIST_STATUSX(i));
  value += nitrox_read_csr(ndev, EFL_CORE_BIST_REGX(i));
 }
 value += nitrox_read_csr(ndev, UCD_BIST_STATUS);
 value += nitrox_read_csr(ndev, NPS_CORE_BIST_REG);
 value += nitrox_read_csr(ndev, NPS_CORE_NPC_BIST_REG);
 value += nitrox_read_csr(ndev, NPS_PKT_SLC_BIST_REG);
 value += nitrox_read_csr(ndev, NPS_PKT_IN_BIST_REG);
 value += nitrox_read_csr(ndev, POM_BIST_REG);
 value += nitrox_read_csr(ndev, BMI_BIST_REG);
 value += nitrox_read_csr(ndev, EFL_TOP_BIST_STAT);
 value += nitrox_read_csr(ndev, BMO_BIST_REG);
 value += nitrox_read_csr(ndev, LBC_BIST_STATUS);
 value += nitrox_read_csr(ndev, PEM_BIST_STATUSX(0));
 if (value)
  return -EIO;
 return 0;
}
