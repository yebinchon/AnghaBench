
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pstore {int dummy; } ;
struct disk_exception {int new_chunk; int old_chunk; } ;
struct core_exception {void* new_chunk; void* old_chunk; } ;


 struct disk_exception* get_exception (struct pstore*,void*,int ) ;
 void* le64_to_cpu (int ) ;

__attribute__((used)) static void read_exception(struct pstore *ps, void *ps_area,
      uint32_t index, struct core_exception *result)
{
 struct disk_exception *de = get_exception(ps, ps_area, index);


 result->old_chunk = le64_to_cpu(de->old_chunk);
 result->new_chunk = le64_to_cpu(de->new_chunk);
}
