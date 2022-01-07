
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {scalar_t__ icode; } ;


 int DC_DC8051_CFG_MODE ;
 int DISABLE_SELF_GUID_CHECK ;
 int EINVAL ;
 scalar_t__ ICODE_FPGA_EMULATION ;
 scalar_t__ ICODE_FUNCTIONAL_SIMULATOR ;
 scalar_t__ LOOPBACK_CABLE ;
 scalar_t__ LOOPBACK_LCB ;
 scalar_t__ LOOPBACK_SERDES ;
 int dd_dev_err (struct hfi1_devdata*,char*,...) ;
 int dd_dev_info (struct hfi1_devdata*,char*) ;
 scalar_t__ loopback ;
 int quick_linkup ;
 int read_csr (struct hfi1_devdata*,int ) ;
 int write_csr (struct hfi1_devdata*,int ,int) ;

__attribute__((used)) static int init_loopback(struct hfi1_devdata *dd)
{
 dd_dev_info(dd, "Entering loopback mode\n");


 write_csr(dd, DC_DC8051_CFG_MODE,
    (read_csr(dd, DC_DC8051_CFG_MODE) | DISABLE_SELF_GUID_CHECK));







 if ((dd->icode == ICODE_FUNCTIONAL_SIMULATOR) &&
     (loopback == LOOPBACK_SERDES || loopback == LOOPBACK_LCB ||
      loopback == LOOPBACK_CABLE)) {
  loopback = LOOPBACK_LCB;
  quick_linkup = 1;
  return 0;
 }




 if (loopback == LOOPBACK_SERDES)
  return 0;


 if (loopback == LOOPBACK_LCB) {
  quick_linkup = 1;


  if (dd->icode == ICODE_FPGA_EMULATION) {
   dd_dev_err(dd,
       "LCB loopback not supported in emulation\n");
   return -EINVAL;
  }
  return 0;
 }


 if (loopback == LOOPBACK_CABLE)
  return 0;

 dd_dev_err(dd, "Invalid loopback mode %d\n", loopback);
 return -EINVAL;
}
