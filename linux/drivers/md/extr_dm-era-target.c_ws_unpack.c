
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeset_metadata {int root; int nr_bits; } ;
struct writeset_disk {int root; int nr_bits; } ;


 int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static void ws_unpack(const struct writeset_disk *disk, struct writeset_metadata *core)
{
 core->nr_bits = le32_to_cpu(disk->nr_bits);
 core->root = le64_to_cpu(disk->root);
}
