
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

__attribute__((used)) static int load_sbus_firmware(struct hfi1_devdata *dd,
         struct firmware_details *fdet)
{
 int i, err;
 const u8 ra = SBUS_MASTER_BROADCAST;

 dd_dev_info(dd, "Downloading SBus firmware\n");


 load_security_variables(dd, fdet);

 sbus_request(dd, ra, 0x01, WRITE_SBUS_RECEIVER, 0x000000c0);

 sbus_request(dd, ra, 0x01, WRITE_SBUS_RECEIVER, 0x00000240);

 sbus_request(dd, ra, 0x03, WRITE_SBUS_RECEIVER, 0x80000000);

 for (i = 0; i < fdet->firmware_len; i += 4) {
  sbus_request(dd, ra, 0x14, WRITE_SBUS_RECEIVER,
        *(u32 *)&fdet->firmware_ptr[i]);
 }

 sbus_request(dd, ra, 0x01, WRITE_SBUS_RECEIVER, 0x00000040);

 sbus_request(dd, ra, 0x16, WRITE_SBUS_RECEIVER, 0x000c0000);


 err = run_rsa(dd, "SBus", fdet->signature);
 if (err)
  return err;


 sbus_request(dd, ra, 0x01, WRITE_SBUS_RECEIVER, 0x00000140);

 return 0;
}
