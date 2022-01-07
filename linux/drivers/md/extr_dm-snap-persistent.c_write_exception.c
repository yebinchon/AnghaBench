
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pstore {int area; } ;
struct disk_exception {void* new_chunk; void* old_chunk; } ;
struct core_exception {int new_chunk; int old_chunk; } ;


 void* cpu_to_le64 (int ) ;
 struct disk_exception* get_exception (struct pstore*,int ,int ) ;

__attribute__((used)) static void write_exception(struct pstore *ps,
       uint32_t index, struct core_exception *e)
{
 struct disk_exception *de = get_exception(ps, ps->area, index);


 de->old_chunk = cpu_to_le64(e->old_chunk);
 de->new_chunk = cpu_to_le64(e->new_chunk);
}
