
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum sfpb_ahb_arb_master_port_en { ____Placeholder_sfpb_ahb_arb_master_port_en } sfpb_ahb_arb_master_port_en ;


 int SFPB_GPREG_MASTER_PORT_EN__MASK ;
 int SFPB_GPREG_MASTER_PORT_EN__SHIFT ;

__attribute__((used)) static inline uint32_t SFPB_GPREG_MASTER_PORT_EN(enum sfpb_ahb_arb_master_port_en val)
{
 return ((val) << SFPB_GPREG_MASTER_PORT_EN__SHIFT) & SFPB_GPREG_MASTER_PORT_EN__MASK;
}
