
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hfi1_devdata {int dummy; } ;
struct firmware_details {int firmware_len; int signature; int * firmware_ptr; } ;


 int SBUS_MASTER_BROADCAST ;
 int WRITE_SBUS_RECEIVER ;
 int dd_dev_info (struct hfi1_devdata*,char*) ;
 int load_security_variables (struct hfi1_devdata*,struct firmware_details*) ;
 int run_rsa (struct hfi1_devdata*,char*,int ) ;
 int sbus_request (struct hfi1_devdata*,int const,int,int ,int) ;

__attribute__((used)) static int load_pcie_serdes_firmware(struct hfi1_devdata *dd,
         struct firmware_details *fdet)
{
 int i;
 const u8 ra = SBUS_MASTER_BROADCAST;

 dd_dev_info(dd, "Downloading PCIe firmware\n");


 load_security_variables(dd, fdet);

 sbus_request(dd, ra, 0x05, WRITE_SBUS_RECEIVER, 0x00000001);

 sbus_request(dd, ra, 0x01, WRITE_SBUS_RECEIVER, 0x00000d40);





 for (i = 0; i < fdet->firmware_len; i += 4) {
  sbus_request(dd, ra, 0x04, WRITE_SBUS_RECEIVER,
        *(u32 *)&fdet->firmware_ptr[i]);
 }

 sbus_request(dd, ra, 0x01, WRITE_SBUS_RECEIVER, 0x00000140);

 sbus_request(dd, ra, 0x05, WRITE_SBUS_RECEIVER, 0x00000000);





 return run_rsa(dd, "PCIe serdes", fdet->signature);
}
