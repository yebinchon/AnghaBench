
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uclogic_params_pen {int inrange; int id; int desc_size; int * desc_ptr; } ;
struct hid_device {int dummy; } ;
typedef int s32 ;
typedef int __u8 ;


 int ARRAY_SIZE (int*) ;
 int EINVAL ;
 int ENOMEM ;
 int EPIPE ;
 int UCLOGIC_PARAMS_PEN_INRANGE_INVERTED ;
 int UCLOGIC_RDESC_PEN_PH_ID_NUM ;
 size_t UCLOGIC_RDESC_PEN_PH_ID_PRESSURE_LM ;
 size_t UCLOGIC_RDESC_PEN_PH_ID_X_LM ;
 size_t UCLOGIC_RDESC_PEN_PH_ID_X_PM ;
 size_t UCLOGIC_RDESC_PEN_PH_ID_Y_LM ;
 size_t UCLOGIC_RDESC_PEN_PH_ID_Y_PM ;
 int UCLOGIC_RDESC_PEN_V1_ID ;
 int get_unaligned_le16 (int *) ;
 int hid_dbg (struct hid_device*,char*,...) ;
 int hid_err (struct hid_device*,char*,int) ;
 int kfree (int *) ;
 int memset (struct uclogic_params_pen*,int ,int) ;
 int uclogic_params_get_str_desc (int **,struct hid_device*,int,int const) ;
 int uclogic_rdesc_pen_v1_template_arr ;
 int uclogic_rdesc_pen_v1_template_size ;
 int * uclogic_rdesc_template_apply (int ,int ,int*,int ) ;

__attribute__((used)) static int uclogic_params_pen_init_v1(struct uclogic_params_pen *pen,
          bool *pfound,
          struct hid_device *hdev)
{
 int rc;
 bool found = 0;

 __u8 *buf = ((void*)0);

 const int len = 12;
 s32 resolution;

 s32 desc_params[UCLOGIC_RDESC_PEN_PH_ID_NUM];
 __u8 *desc_ptr = ((void*)0);


 if (pen == ((void*)0) || pfound == ((void*)0) || hdev == ((void*)0)) {
  rc = -EINVAL;
  goto cleanup;
 }







 rc = uclogic_params_get_str_desc(&buf, hdev, 100, len);
 if (rc == -EPIPE) {
  hid_dbg(hdev,
   "string descriptor with pen parameters not found, assuming not compatible\n");
  goto finish;
 } else if (rc < 0) {
  hid_err(hdev, "failed retrieving pen parameters: %d\n", rc);
  goto cleanup;
 } else if (rc != len) {
  hid_dbg(hdev,
   "string descriptor with pen parameters has invalid length (got %d, expected %d), assuming not compatible\n",
   rc, len);
  goto finish;
 }




 desc_params[UCLOGIC_RDESC_PEN_PH_ID_X_LM] =
  get_unaligned_le16(buf + 2);
 desc_params[UCLOGIC_RDESC_PEN_PH_ID_Y_LM] =
  get_unaligned_le16(buf + 4);
 desc_params[UCLOGIC_RDESC_PEN_PH_ID_PRESSURE_LM] =
  get_unaligned_le16(buf + 8);
 resolution = get_unaligned_le16(buf + 10);
 if (resolution == 0) {
  desc_params[UCLOGIC_RDESC_PEN_PH_ID_X_PM] = 0;
  desc_params[UCLOGIC_RDESC_PEN_PH_ID_Y_PM] = 0;
 } else {
  desc_params[UCLOGIC_RDESC_PEN_PH_ID_X_PM] =
   desc_params[UCLOGIC_RDESC_PEN_PH_ID_X_LM] * 1000 /
   resolution;
  desc_params[UCLOGIC_RDESC_PEN_PH_ID_Y_PM] =
   desc_params[UCLOGIC_RDESC_PEN_PH_ID_Y_LM] * 1000 /
   resolution;
 }
 kfree(buf);
 buf = ((void*)0);




 desc_ptr = uclogic_rdesc_template_apply(
    uclogic_rdesc_pen_v1_template_arr,
    uclogic_rdesc_pen_v1_template_size,
    desc_params, ARRAY_SIZE(desc_params));
 if (desc_ptr == ((void*)0)) {
  rc = -ENOMEM;
  goto cleanup;
 }




 memset(pen, 0, sizeof(*pen));
 pen->desc_ptr = desc_ptr;
 desc_ptr = ((void*)0);
 pen->desc_size = uclogic_rdesc_pen_v1_template_size;
 pen->id = UCLOGIC_RDESC_PEN_V1_ID;
 pen->inrange = UCLOGIC_PARAMS_PEN_INRANGE_INVERTED;
 found = 1;
finish:
 *pfound = found;
 rc = 0;
cleanup:
 kfree(desc_ptr);
 kfree(buf);
 return rc;
}
