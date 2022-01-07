
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pvrdma_port_width { ____Placeholder_pvrdma_port_width } pvrdma_port_width ;
typedef enum ib_port_width { ____Placeholder_ib_port_width } ib_port_width ;



__attribute__((used)) static inline enum ib_port_width pvrdma_port_width_to_ib(
     enum pvrdma_port_width width)
{
 return (enum ib_port_width)width;
}
