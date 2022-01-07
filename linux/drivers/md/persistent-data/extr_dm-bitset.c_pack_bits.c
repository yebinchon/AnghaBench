
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct packer_context {int (* fn ) (int,int*,int ) ;int context; scalar_t__ nr_bits; } ;
typedef int __le64 ;


 int clear_bit (unsigned int,unsigned long*) ;
 int cpu_to_le64 (scalar_t__) ;
 unsigned int min (unsigned int,scalar_t__) ;
 int set_bit (unsigned int,unsigned long*) ;
 int stub1 (int,int*,int ) ;

__attribute__((used)) static int pack_bits(uint32_t index, void *value, void *context)
{
 int r;
 struct packer_context *p = context;
 unsigned bit, nr = min(64u, p->nr_bits - (index * 64));
 uint64_t word = 0;
 bool bv;

 for (bit = 0; bit < nr; bit++) {
  r = p->fn(index * 64 + bit, &bv, p->context);
  if (r)
   return r;

  if (bv)
   set_bit(bit, (unsigned long *) &word);
  else
   clear_bit(bit, (unsigned long *) &word);
 }

 *((__le64 *) value) = cpu_to_le64(word);

 return 0;
}
