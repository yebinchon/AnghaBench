
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_ras_eeprom_table_header {int checksum; int tbl_size; int first_rec_offset; int version; int header; } ;


 int cpu_to_le32 (int ) ;

__attribute__((used)) static void __encode_table_header_to_buff(struct amdgpu_ras_eeprom_table_header *hdr,
       unsigned char *buff)
{
 uint32_t *pp = (uint32_t *) buff;

 pp[0] = cpu_to_le32(hdr->header);
 pp[1] = cpu_to_le32(hdr->version);
 pp[2] = cpu_to_le32(hdr->first_rec_offset);
 pp[3] = cpu_to_le32(hdr->tbl_size);
 pp[4] = cpu_to_le32(hdr->checksum);
}
