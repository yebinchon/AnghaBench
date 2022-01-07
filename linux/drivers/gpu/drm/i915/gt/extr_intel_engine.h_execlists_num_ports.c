
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_execlists {unsigned int port_mask; } ;



__attribute__((used)) static inline unsigned int
execlists_num_ports(const struct intel_engine_execlists * const execlists)
{
 return execlists->port_mask + 1;
}
