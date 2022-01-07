
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int FME_PR_ERR_CRC_ERR ;
 int FME_PR_ERR_FIFO_OVERFLOW ;
 int FME_PR_ERR_INCOMPATIBLE_BS ;
 int FME_PR_ERR_OPERATION_ERR ;
 int FME_PR_ERR_PROTOCOL_ERR ;
 int FPGA_MGR_STATUS_CRC_ERR ;
 int FPGA_MGR_STATUS_FIFO_OVERFLOW_ERR ;
 int FPGA_MGR_STATUS_INCOMPATIBLE_IMAGE_ERR ;
 int FPGA_MGR_STATUS_IP_PROTOCOL_ERR ;
 int FPGA_MGR_STATUS_OPERATION_ERR ;

__attribute__((used)) static u64 pr_error_to_mgr_status(u64 err)
{
 u64 status = 0;

 if (err & FME_PR_ERR_OPERATION_ERR)
  status |= FPGA_MGR_STATUS_OPERATION_ERR;
 if (err & FME_PR_ERR_CRC_ERR)
  status |= FPGA_MGR_STATUS_CRC_ERR;
 if (err & FME_PR_ERR_INCOMPATIBLE_BS)
  status |= FPGA_MGR_STATUS_INCOMPATIBLE_IMAGE_ERR;
 if (err & FME_PR_ERR_PROTOCOL_ERR)
  status |= FPGA_MGR_STATUS_IP_PROTOCOL_ERR;
 if (err & FME_PR_ERR_FIFO_OVERFLOW)
  status |= FPGA_MGR_STATUS_FIFO_OVERFLOW_ERR;

 return status;
}
