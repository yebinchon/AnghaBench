
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct ip_discovery_header {TYPE_2__* die_info; int num_dies; } ;
struct ip {int major; int minor; int num_base_address; int hw_id; } ;
struct die_header {int num_ips; } ;
struct binary_header {TYPE_1__* table_list; } ;
struct amdgpu_device {int discovery; } ;
struct TYPE_4__ {int die_offset; } ;
struct TYPE_3__ {int offset; } ;


 int DRM_ERROR (char*) ;
 int EINVAL ;
 size_t IP_DISCOVERY ;
 int le16_to_cpu (int ) ;

int amdgpu_discovery_get_ip_version(struct amdgpu_device *adev, int hw_id,
        int *major, int *minor)
{
 struct binary_header *bhdr;
 struct ip_discovery_header *ihdr;
 struct die_header *dhdr;
 struct ip *ip;
 uint16_t die_offset;
 uint16_t ip_offset;
 uint16_t num_dies;
 uint16_t num_ips;
 int i, j;

 if (!adev->discovery) {
  DRM_ERROR("ip discovery uninitialized\n");
  return -EINVAL;
 }

 bhdr = (struct binary_header *)adev->discovery;
 ihdr = (struct ip_discovery_header *)(adev->discovery +
   le16_to_cpu(bhdr->table_list[IP_DISCOVERY].offset));
 num_dies = le16_to_cpu(ihdr->num_dies);

 for (i = 0; i < num_dies; i++) {
  die_offset = le16_to_cpu(ihdr->die_info[i].die_offset);
  dhdr = (struct die_header *)(adev->discovery + die_offset);
  num_ips = le16_to_cpu(dhdr->num_ips);
  ip_offset = die_offset + sizeof(*dhdr);

  for (j = 0; j < num_ips; j++) {
   ip = (struct ip *)(adev->discovery + ip_offset);

   if (le16_to_cpu(ip->hw_id) == hw_id) {
    if (major)
     *major = ip->major;
    if (minor)
     *minor = ip->minor;
    return 0;
   }
   ip_offset += sizeof(*ip) + 4 * (ip->num_base_address - 1);
  }
 }

 return -EINVAL;
}
