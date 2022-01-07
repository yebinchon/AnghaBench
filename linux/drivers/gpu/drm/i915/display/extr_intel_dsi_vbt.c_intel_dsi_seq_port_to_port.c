
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef enum port { ____Placeholder_port } port ;


 int PORT_A ;
 int PORT_C ;

__attribute__((used)) static inline enum port intel_dsi_seq_port_to_port(u8 port)
{
 return port ? PORT_C : PORT_A;
}
