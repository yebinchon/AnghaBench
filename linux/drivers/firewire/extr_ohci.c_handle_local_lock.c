
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fw_packet {int * header; int * payload; } ;
struct fw_ohci {int card; } ;
typedef int lock_old ;
typedef int __be32 ;


 int CSR_BUS_MANAGER_ID ;
 int EXTCODE_COMPARE_SWAP ;
 int HEADER_GET_DATA_LENGTH (int ) ;
 int HEADER_GET_EXTENDED_TCODE (int ) ;
 int HEADER_GET_TCODE (int ) ;
 int OHCI1394_CSRCompareData ;
 int OHCI1394_CSRControl ;
 int OHCI1394_CSRData ;
 int RCODE_BUSY ;
 int RCODE_COMPLETE ;
 int RCODE_TYPE_ERROR ;
 int TCODE_LOCK_REQUEST ;
 int TCODE_READ_QUADLET_REQUEST ;
 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int) ;
 int fw_core_handle_response (int *,struct fw_packet*) ;
 int fw_fill_response (struct fw_packet*,int *,int ,int *,int) ;
 int ohci_err (struct fw_ohci*,char*) ;
 int reg_read (struct fw_ohci*,int ) ;
 int reg_write (struct fw_ohci*,int ,int) ;

__attribute__((used)) static void handle_local_lock(struct fw_ohci *ohci,
         struct fw_packet *packet, u32 csr)
{
 struct fw_packet response;
 int tcode, length, ext_tcode, sel, try;
 __be32 *payload, lock_old;
 u32 lock_arg, lock_data;

 tcode = HEADER_GET_TCODE(packet->header[0]);
 length = HEADER_GET_DATA_LENGTH(packet->header[3]);
 payload = packet->payload;
 ext_tcode = HEADER_GET_EXTENDED_TCODE(packet->header[3]);

 if (tcode == TCODE_LOCK_REQUEST &&
     ext_tcode == EXTCODE_COMPARE_SWAP && length == 8) {
  lock_arg = be32_to_cpu(payload[0]);
  lock_data = be32_to_cpu(payload[1]);
 } else if (tcode == TCODE_READ_QUADLET_REQUEST) {
  lock_arg = 0;
  lock_data = 0;
 } else {
  fw_fill_response(&response, packet->header,
     RCODE_TYPE_ERROR, ((void*)0), 0);
  goto out;
 }

 sel = (csr - CSR_BUS_MANAGER_ID) / 4;
 reg_write(ohci, OHCI1394_CSRData, lock_data);
 reg_write(ohci, OHCI1394_CSRCompareData, lock_arg);
 reg_write(ohci, OHCI1394_CSRControl, sel);

 for (try = 0; try < 20; try++)
  if (reg_read(ohci, OHCI1394_CSRControl) & 0x80000000) {
   lock_old = cpu_to_be32(reg_read(ohci,
       OHCI1394_CSRData));
   fw_fill_response(&response, packet->header,
      RCODE_COMPLETE,
      &lock_old, sizeof(lock_old));
   goto out;
  }

 ohci_err(ohci, "swap not done (CSR lock timeout)\n");
 fw_fill_response(&response, packet->header, RCODE_BUSY, ((void*)0), 0);

 out:
 fw_core_handle_response(&ohci->card, &response);
}
