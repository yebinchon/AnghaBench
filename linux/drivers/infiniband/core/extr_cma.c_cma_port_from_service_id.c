
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int __be64 ;


 int be64_to_cpu (int ) ;

__attribute__((used)) static u16 cma_port_from_service_id(__be64 service_id)
{
 return (u16)be64_to_cpu(service_id);
}
