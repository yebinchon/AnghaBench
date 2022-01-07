
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fw_card {int * topology_map; TYPE_1__* root_node; } ;
typedef int __be32 ;
struct TYPE_2__ {int node_id; } ;


 int be32_to_cpu (int ) ;
 void* cpu_to_be32 (int) ;
 int cpu_to_be32p (int ) ;
 int fw_compute_block_crc (int *) ;

__attribute__((used)) static void update_topology_map(struct fw_card *card,
    u32 *self_ids, int self_id_count)
{
 int node_count = (card->root_node->node_id & 0x3f) + 1;
 __be32 *map = card->topology_map;

 *map++ = cpu_to_be32((self_id_count + 2) << 16);
 *map++ = cpu_to_be32(be32_to_cpu(card->topology_map[1]) + 1);
 *map++ = cpu_to_be32((node_count << 16) | self_id_count);

 while (self_id_count--)
  *map++ = cpu_to_be32p(self_ids++);

 fw_compute_block_crc(card->topology_map);
}
