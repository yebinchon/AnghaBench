
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int CHUNK_ID_FRWR ;
 int EINVAL ;
 int FW_CHUNK_PAYLOAD_OFFSET ;
 scalar_t__ WDT_FIRMWARE_ID ;
 scalar_t__ get_unaligned_le32 (void const*) ;

__attribute__((used)) static int wdt87xx_validate_fw_chunk(const void *data, int id)
{
 if (id == CHUNK_ID_FRWR) {
  u32 fw_id;

  fw_id = get_unaligned_le32(data + FW_CHUNK_PAYLOAD_OFFSET);
  if (fw_id != WDT_FIRMWARE_ID)
   return -EINVAL;
 }

 return 0;
}
