
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hubp {int dummy; } ;
struct dcn20_hubp {int dummy; } ;
struct TYPE_2__ {int high_part; int low_part; } ;
struct dc_dmdata_attributes {scalar_t__ dmdata_mode; int dmdata_dl_delta; int dmdata_qos_level; int dmdata_qos_mode; int dmdata_sw_data; int dmdata_size; int dmdata_repeat; TYPE_1__ address; } ;


 int DCSURF_FLIP_CONTROL ;
 int DMDATA_ADDRESS_HIGH ;
 int DMDATA_ADDRESS_LOW ;
 int DMDATA_CNTL ;
 int DMDATA_DL_DELTA ;
 scalar_t__ DMDATA_HW_MODE ;
 int DMDATA_MODE ;
 int DMDATA_QOS_CNTL ;
 int DMDATA_QOS_LEVEL ;
 int DMDATA_QOS_MODE ;
 int DMDATA_REPEAT ;
 int DMDATA_SIZE ;
 int DMDATA_SW_CNTL ;
 int DMDATA_SW_REPEAT ;
 int DMDATA_SW_SIZE ;
 int DMDATA_SW_UPDATED ;
 int DMDATA_UPDATED ;
 int REG_SET (int ,int ,int ,int ) ;
 int REG_SET_3 (int ,int ,int ,int ,int ,int ,int ,int ) ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_UPDATE_3 (int ,int ,int,int ,int ,int ,int ) ;
 int REG_WRITE (int ,int ) ;
 int SURFACE_UPDATE_LOCK ;
 struct dcn20_hubp* TO_DCN20_HUBP (struct hubp*) ;
 int hubp2_dmdata_load (struct hubp*,int ,int ) ;

void hubp2_dmdata_set_attributes(
  struct hubp *hubp,
  const struct dc_dmdata_attributes *attr)
{
 struct dcn20_hubp *hubp2 = TO_DCN20_HUBP(hubp);

 if (attr->dmdata_mode == DMDATA_HW_MODE) {

  REG_UPDATE(DMDATA_CNTL,
    DMDATA_MODE, 1);


  REG_UPDATE(DCSURF_FLIP_CONTROL, SURFACE_UPDATE_LOCK, 1);


  REG_UPDATE(DMDATA_CNTL,
    DMDATA_UPDATED, 0);
  REG_UPDATE_3(DMDATA_CNTL,
    DMDATA_UPDATED, 1,
    DMDATA_REPEAT, attr->dmdata_repeat,
    DMDATA_SIZE, attr->dmdata_size);


  REG_WRITE(DMDATA_ADDRESS_LOW, attr->address.low_part);
  REG_UPDATE(DMDATA_ADDRESS_HIGH,
    DMDATA_ADDRESS_HIGH, attr->address.high_part);

  REG_UPDATE(DCSURF_FLIP_CONTROL, SURFACE_UPDATE_LOCK, 0);

 } else {

  REG_SET(DMDATA_CNTL, 0,
    DMDATA_MODE, 0);

  REG_UPDATE(DMDATA_SW_CNTL,
    DMDATA_SW_UPDATED, 0);
  REG_UPDATE_3(DMDATA_SW_CNTL,
    DMDATA_SW_UPDATED, 1,
    DMDATA_SW_REPEAT, attr->dmdata_repeat,
    DMDATA_SW_SIZE, attr->dmdata_size);

  hubp2_dmdata_load(hubp, attr->dmdata_size, attr->dmdata_sw_data);
 }


 REG_SET_3(DMDATA_QOS_CNTL, 0,
   DMDATA_QOS_MODE, attr->dmdata_qos_mode,
   DMDATA_QOS_LEVEL, attr->dmdata_qos_level,
   DMDATA_DL_DELTA, attr->dmdata_dl_delta);
}
