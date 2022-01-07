
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
struct nvbios {int length; int data; } ;
struct drm_device {int dummy; } ;
typedef int hwsq_signature ;


 int findstr (int ,int ,char const*,int const) ;
 int load_nv17_hwsq_ucode_entry (struct drm_device*,struct nvbios*,int,int ) ;

__attribute__((used)) static int load_nv17_hw_sequencer_ucode(struct drm_device *dev,
     struct nvbios *bios)
{
 static const uint8_t hwsq_signature[] = { 'H', 'W', 'S', 'Q' };
 const int sz = sizeof(hwsq_signature);
 int hwsq_offset;

 hwsq_offset = findstr(bios->data, bios->length, hwsq_signature, sz);
 if (!hwsq_offset)
  return 0;


 return load_nv17_hwsq_ucode_entry(dev, bios, hwsq_offset + sz, 0);
}
