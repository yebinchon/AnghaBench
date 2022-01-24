#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint16_t ;
struct ip_discovery_header {TYPE_2__* die_info; int /*<<< orphan*/  num_dies; } ;
struct ip {int num_base_address; size_t number_instance; int* base_address; int /*<<< orphan*/  hw_id; int /*<<< orphan*/  revision; int /*<<< orphan*/  minor; int /*<<< orphan*/  major; } ;
struct die_header {int /*<<< orphan*/  die_id; int /*<<< orphan*/  num_ips; } ;
struct binary_header {TYPE_1__* table_list; } ;
struct amdgpu_device {int discovery; int*** reg_offset; } ;
struct TYPE_4__ {int /*<<< orphan*/  die_offset; } ;
struct TYPE_3__ {int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 size_t IP_DISCOVERY ; 
 int MAX_HWIP ; 
 size_t* hw_id_map ; 
 int /*<<< orphan*/ * hw_id_names ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 

int FUNC5(struct amdgpu_device *adev)
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
		FUNC1("ip discovery uninitialized\n");
		return -EINVAL;
	}

	bhdr = (struct binary_header *)adev->discovery;
	ihdr = (struct ip_discovery_header *)(adev->discovery +
			FUNC3(bhdr->table_list[IP_DISCOVERY].offset));
	num_dies = FUNC3(ihdr->num_dies);

	FUNC0("number of dies: %d\n", num_dies);

	for (i = 0; i < num_dies; i++) {
		die_offset = FUNC3(ihdr->die_info[i].die_offset);
		dhdr = (struct die_header *)(adev->discovery + die_offset);
		num_ips = FUNC3(dhdr->num_ips);
		ip_offset = die_offset + sizeof(*dhdr);

		if (FUNC3(dhdr->die_id) != i) {
			FUNC1("invalid die id %d, expected %d\n",
					FUNC3(dhdr->die_id), i);
			return -EINVAL;
		}

		FUNC0("number of hardware IPs on die%d: %d\n",
				FUNC3(dhdr->die_id), num_ips);

		for (j = 0; j < num_ips; j++) {
			ip = (struct ip *)(adev->discovery + ip_offset);
			num_base_address = ip->num_base_address;

			FUNC0("%s(%d) #%d v%d.%d.%d:\n",
				  hw_id_names[FUNC3(ip->hw_id)],
				  FUNC3(ip->hw_id),
				  ip->number_instance,
				  ip->major, ip->minor,
				  ip->revision);

			for (k = 0; k < num_base_address; k++) {
				/*
				 * convert the endianness of base addresses in place,
				 * so that we don't need to convert them when accessing adev->reg_offset.
				 */
				ip->base_address[k] = FUNC4(ip->base_address[k]);
				FUNC0("\t0x%08x\n", ip->base_address[k]);
			}

			for (hw_ip = 0; hw_ip < MAX_HWIP; hw_ip++) {
				if (hw_id_map[hw_ip] == FUNC3(ip->hw_id)) {
					FUNC2("set register base offset for %s\n",
							hw_id_names[FUNC3(ip->hw_id)]);
					adev->reg_offset[hw_ip][ip->number_instance] =
						ip->base_address;
				}

			}

			ip_offset += sizeof(*ip) + 4 * (ip->num_base_address - 1);
		}
	}

	return 0;
}