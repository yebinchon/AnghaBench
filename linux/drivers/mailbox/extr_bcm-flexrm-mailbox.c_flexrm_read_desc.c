
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int le64_to_cpu (int ) ;

__attribute__((used)) static u64 flexrm_read_desc(void *desc_ptr)
{
 return le64_to_cpu(*((u64 *)desc_ptr));
}
