
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nvkm_bios {scalar_t__ data; } ;
struct firmware {scalar_t__ size; scalar_t__ data; } ;


 int memcpy (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static u32
shadow_fw_read(void *data, u32 offset, u32 length, struct nvkm_bios *bios)
{
 const struct firmware *fw = data;
 if (offset + length <= fw->size) {
  memcpy(bios->data + offset, fw->data + offset, length);
  return length;
 }
 return 0;
}
