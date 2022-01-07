
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data_descriptor_entry {unsigned int count; int address; int length; scalar_t__ index; scalar_t__ flags; } ;


 int cpu_to_be32 (unsigned int) ;
 int cpu_to_be64 (int ) ;
 int nx842_get_pa (struct data_descriptor_entry*) ;

__attribute__((used)) static void setup_indirect_dde(struct data_descriptor_entry *dde,
          struct data_descriptor_entry *ddl,
          unsigned int dde_count, unsigned int byte_count)
{
 dde->flags = 0;
 dde->count = dde_count;
 dde->index = 0;
 dde->length = cpu_to_be32(byte_count);
 dde->address = cpu_to_be64(nx842_get_pa(ddl));
}
