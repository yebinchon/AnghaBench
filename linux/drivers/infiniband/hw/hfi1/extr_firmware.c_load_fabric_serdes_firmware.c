
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hfi1_devdata {size_t hfi1_id; } ;
struct firmware_details {int firmware_len; int signature; int * firmware_ptr; } ;


 int WRITE_SBUS_RECEIVER ;
 int dd_dev_info (struct hfi1_devdata*,char*) ;
 int * fabric_serdes_broadcast ;
 int load_security_variables (struct hfi1_devdata*,struct firmware_details*) ;
 int run_rsa (struct hfi1_devdata*,char*,int ) ;
 int sbus_request (struct hfi1_devdata*,int const,int,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int load_fabric_serdes_firmware(struct hfi1_devdata *dd,
           struct firmware_details *fdet)
{
 int i, err;
 const u8 ra = fabric_serdes_broadcast[dd->hfi1_id];

 dd_dev_info(dd, "Downloading fabric firmware\n");


 load_security_variables(dd, fdet);

 sbus_request(dd, ra, 0x07, WRITE_SBUS_RECEIVER, 0x00000011);

 udelay(1);

 sbus_request(dd, ra, 0x07, WRITE_SBUS_RECEIVER, 0x00000010);

 sbus_request(dd, ra, 0x00, WRITE_SBUS_RECEIVER, 0x40000000);

 for (i = 0; i < fdet->firmware_len; i += 4) {
  sbus_request(dd, ra, 0x0a, WRITE_SBUS_RECEIVER,
        *(u32 *)&fdet->firmware_ptr[i]);
 }

 sbus_request(dd, ra, 0x00, WRITE_SBUS_RECEIVER, 0x00000000);

 sbus_request(dd, ra, 0x0b, WRITE_SBUS_RECEIVER, 0x000c0000);


 err = run_rsa(dd, "fabric serdes", fdet->signature);
 if (err)
  return err;


 sbus_request(dd, ra, 0x07, WRITE_SBUS_RECEIVER, 0x00000002);

 sbus_request(dd, ra, 0x08, WRITE_SBUS_RECEIVER, 0x00000000);

 return 0;
}
