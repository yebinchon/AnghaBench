
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_ca_en50221 {int dummy; } ;


 int SP2_CI_ATTR_ACS ;
 int SP2_CI_WR ;
 int sp2_ci_op_cam (struct dvb_ca_en50221*,int,int ,int ,int,int ) ;

int sp2_ci_write_attribute_mem(struct dvb_ca_en50221 *en50221,
    int slot, int addr, u8 data)
{
 return sp2_ci_op_cam(en50221, slot, SP2_CI_ATTR_ACS,
   SP2_CI_WR, addr, data);
}
