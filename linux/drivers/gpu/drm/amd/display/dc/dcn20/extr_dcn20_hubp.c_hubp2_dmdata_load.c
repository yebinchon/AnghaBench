
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hubp {int dummy; } ;
struct dcn20_hubp {int dummy; } ;


 int DMDATA_SW_DATA ;
 int REG_WRITE (int ,int const) ;
 struct dcn20_hubp* TO_DCN20_HUBP (struct hubp*) ;

void hubp2_dmdata_load(
  struct hubp *hubp,
  uint32_t dmdata_sw_size,
  const uint32_t *dmdata_sw_data)
{
 int i;
 struct dcn20_hubp *hubp2 = TO_DCN20_HUBP(hubp);


 for (i = 0; i < dmdata_sw_size / 4; i++)
  REG_WRITE(DMDATA_SW_DATA, dmdata_sw_data[i]);
}
