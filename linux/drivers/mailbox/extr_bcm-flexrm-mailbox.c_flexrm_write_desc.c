
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int cpu_to_le64 (int ) ;

__attribute__((used)) static void flexrm_write_desc(void *desc_ptr, u64 desc)
{
 *((u64 *)desc_ptr) = cpu_to_le64(desc);
}
