
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opa_smp {int dummy; } ;


 int memset (void*,int ,size_t) ;
 void* opa_get_smp_data (struct opa_smp*) ;
 size_t opa_get_smp_data_size (struct opa_smp*) ;

__attribute__((used)) static inline void clear_opa_smp_data(struct opa_smp *smp)
{
 void *data = opa_get_smp_data(smp);
 size_t size = opa_get_smp_data_size(smp);

 memset(data, 0, size);
}
