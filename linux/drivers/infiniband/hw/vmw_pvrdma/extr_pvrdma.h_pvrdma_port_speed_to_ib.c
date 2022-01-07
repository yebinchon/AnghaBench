
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pvrdma_port_speed { ____Placeholder_pvrdma_port_speed } pvrdma_port_speed ;
typedef enum ib_port_speed { ____Placeholder_ib_port_speed } ib_port_speed ;



__attribute__((used)) static inline enum ib_port_speed pvrdma_port_speed_to_ib(
     enum pvrdma_port_speed speed)
{
 return (enum ib_port_speed)speed;
}
