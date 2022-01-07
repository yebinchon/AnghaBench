
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct ip_discovery_header {TYPE_2__* die_info; int num_dies; } ;
struct ip {int num_base_address; size_t number_instance; int* base_address; int hw_id; int revision; int minor; int major; } ;
struct die_header {int die_id; int num_ips; } ;
struct binary_header {TYPE_1__* table_list; } ;
struct amdgpu_device {int discovery; int*** reg_offset; } ;
struct TYPE_4__ {int die_offset; } ;
struct TYPE_3__ {int offset; } ;


 int DRM_DEBUG (char*,int,...) ;
 int DRM_ERROR (char*,...) ;
 int DRM_INFO (char*,int ) ;
 int EINVAL ;
 size_t IP_DISCOVERY ;
 int MAX_HWIP ;
 size_t* hw_id_map ;
 int * hw_id_names ;
 size_t le16_to_cpu (int ) ;
 int le32_to_cpu (int) ;

int amdgpu_discovery_reg_base_init(struct amdgpu_device *adev)
{
 struct binary_header *bhdr;
 struct ip_discovery_header *ihdr;
 struct die_header *dhdr;
 struct ip *ip;
 uint16_t die_offset;
 uint16_t ip_offset;
 uint16_t num_dies;
 uint16_t num_ips;
 uint8_t num_base_address;
 int hw_ip;
 int i, j, k;

 if (!adev->discovery) {
  DRM_ERROR("ip discovery uninitialized\n");
  return -EINVAL;
 }

 bhdr = (struct binary_header *)adev->discovery;
 ihdr = (struct ip_discovery_header *)(adev->discovery +
   le16_to_cpu(bhdr->table_list[IP_DISCOVERY].offset));
 num_dies = le16_to_cpu(ihdr->num_dies);

 DRM_DEBUG("number of dies: %d\n", num_dies);

 for (i = 0; i < num_dies; i++) {
  die_offset = le16_to_cpu(ihdr->die_info[i].die_offset);
  dhdr = (struct die_header *)(adev->discovery + die_offset);
  num_ips = le16_to_cpu(dhdr->num_ips);
  ip_offset = die_offset + sizeof(*dhdr);

  if (le16_to_cpu(dhdr->die_id) != i) {
   DRM_ERROR("invalid die id %d, expected %d\n",
     le16_to_cpu(dhdr->die_id), i);
   return -EINVAL;
  }

  DRM_DEBUG("number of hardware IPs on die%d: %d\n",
    le16_to_cpu(dhdr->die_id), num_ips);

  for (j = 0; j < num_ips; j++) {
   ip = (struct ip *)(adev->discovery + ip_offset);
   num_base_address = ip->num_base_address;

   DRM_DEBUG("%s(%d) #%d v%d.%d.%d:\n",
      hw_id_names[le16_to_cpu(ip->hw_id)],
      le16_to_cpu(ip->hw_id),
      ip->number_instance,
      ip->major, ip->minor,
      ip->revision);

   for (k = 0; k < num_base_address; k++) {




    ip->base_address[k] = le32_to_cpu(ip->base_address[k]);
    DRM_DEBUG("\t0x%08x\n", ip->base_address[k]);
   }

   for (hw_ip = 0; hw_ip < MAX_HWIP; hw_ip++) {
    if (hw_id_map[hw_ip] == le16_to_cpu(ip->hw_id)) {
     DRM_INFO("set register base offset for %s\n",
       hw_id_names[le16_to_cpu(ip->hw_id)]);
     adev->reg_offset[hw_ip][ip->number_instance] =
      ip->base_address;
    }

   }

   ip_offset += sizeof(*ip) + 4 * (ip->num_base_address - 1);
  }
 }

 return 0;
}
