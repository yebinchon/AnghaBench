
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbridge_pvt {int dummy; } ;
typedef enum mem_type { ____Placeholder_mem_type } mem_type ;


 int MEM_RDDR4 ;

__attribute__((used)) static enum mem_type knl_get_memory_type(struct sbridge_pvt *pvt)
{

 return MEM_RDDR4;
}
