
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_vgpu_i2c_gmbus {int dummy; } ;
struct TYPE_3__ {int i2c_over_aux_ch; int aux_ch_mot; } ;
struct intel_vgpu_i2c_edid {int port; int slave_selected; int edid_available; TYPE_1__ aux_ch; int gmbus; scalar_t__ current_edid_read; int state; } ;
struct TYPE_4__ {struct intel_vgpu_i2c_edid i2c_edid; } ;
struct intel_vgpu {TYPE_2__ display; } ;


 int I2C_NOT_SPECIFIED ;
 int memset (int *,int ,int) ;

void intel_vgpu_init_i2c_edid(struct intel_vgpu *vgpu)
{
 struct intel_vgpu_i2c_edid *edid = &vgpu->display.i2c_edid;

 edid->state = I2C_NOT_SPECIFIED;

 edid->port = -1;
 edid->slave_selected = 0;
 edid->edid_available = 0;
 edid->current_edid_read = 0;

 memset(&edid->gmbus, 0, sizeof(struct intel_vgpu_i2c_gmbus));

 edid->aux_ch.i2c_over_aux_ch = 0;
 edid->aux_ch.aux_ch_mot = 0;
}
