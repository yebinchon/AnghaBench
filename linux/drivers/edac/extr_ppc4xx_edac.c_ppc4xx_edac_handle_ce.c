
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppc4xx_ecc_status {int dummy; } ;
struct mem_ctl_info {int nr_csrows; } ;
typedef int message ;


 int HW_EVENT_ERR_CORRECTED ;
 int PPC4XX_EDAC_MESSAGE_SIZE ;
 int edac_mc_handle_error (int ,struct mem_ctl_info*,int,int ,int ,int ,int,int ,int,char*,char*) ;
 scalar_t__ ppc4xx_edac_check_bank_error (struct ppc4xx_ecc_status const*,int) ;
 int ppc4xx_edac_generate_message (struct mem_ctl_info*,struct ppc4xx_ecc_status const*,char*,int) ;

__attribute__((used)) static void
ppc4xx_edac_handle_ce(struct mem_ctl_info *mci,
        const struct ppc4xx_ecc_status *status)
{
 int row;
 char message[PPC4XX_EDAC_MESSAGE_SIZE];

 ppc4xx_edac_generate_message(mci, status, message, sizeof(message));

 for (row = 0; row < mci->nr_csrows; row++)
  if (ppc4xx_edac_check_bank_error(status, row))
   edac_mc_handle_error(HW_EVENT_ERR_CORRECTED, mci, 1,
          0, 0, 0,
          row, 0, -1,
          message, "");
}
