
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct v4l2_mbus_framefmt {int field; } ;
struct ipu_csi {TYPE_1__* ipu; } ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;
struct TYPE_2__ {int dev; } ;


 int CSI_CCIR_CODE_1 ;
 int CSI_CCIR_CODE_2 ;
 int CSI_CCIR_CODE_3 ;
 int CSI_CCIR_ERR_DET_EN ;
 scalar_t__ V4L2_FIELD_IS_SEQUENTIAL (int) ;
 int dev_dbg (int ,char*) ;
 int ipu_csi_translate_field (int ,int ) ;
 int ipu_csi_write (struct ipu_csi*,int,int ) ;

__attribute__((used)) static int
ipu_csi_set_bt_interlaced_codes(struct ipu_csi *csi,
    const struct v4l2_mbus_framefmt *infmt,
    const struct v4l2_mbus_framefmt *outfmt,
    v4l2_std_id std)
{
 enum v4l2_field infield, outfield;
 bool swap_fields;


 infield = ipu_csi_translate_field(infmt->field, std);
 outfield = ipu_csi_translate_field(outfmt->field, std);
 swap_fields = (V4L2_FIELD_IS_SEQUENTIAL(infield) &&
         V4L2_FIELD_IS_SEQUENTIAL(outfield) &&
         infield != outfield);

 if (!swap_fields) {






  ipu_csi_write(csi, 0x40596 | CSI_CCIR_ERR_DET_EN,
         CSI_CCIR_CODE_1);
  ipu_csi_write(csi, 0xD07DF, CSI_CCIR_CODE_2);
 } else {
  dev_dbg(csi->ipu->dev, "capture field swap\n");


  ipu_csi_write(csi, 0xD07DF | CSI_CCIR_ERR_DET_EN,
         CSI_CCIR_CODE_1);
  ipu_csi_write(csi, 0x40596, CSI_CCIR_CODE_2);
 }

 ipu_csi_write(csi, 0xFF0000, CSI_CCIR_CODE_3);

 return 0;
}
