
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeset_metadata {int root; int nr_bits; } ;
struct writeset_disk {int root; int nr_bits; } ;


 int cpu_to_le32 (int ) ;
 int cpu_to_le64 (int ) ;

__attribute__((used)) static void ws_pack(const struct writeset_metadata *core, struct writeset_disk *disk)
{
 disk->nr_bits = cpu_to_le32(core->nr_bits);
 disk->root = cpu_to_le64(core->root);
}
