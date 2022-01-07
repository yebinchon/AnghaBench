
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct komeda_scaler {scalar_t__ scaling_split_overlap; scalar_t__ enh_split_overlap; } ;
struct komeda_data_flow_cfg {int right_part; int overlap; int in_h; int in_w; int out_w; int out_x; scalar_t__ left_crop; scalar_t__ right_crop; scalar_t__ en_img_enhancement; scalar_t__ en_scaling; scalar_t__ in_x; scalar_t__ is_yuv; scalar_t__ in_y; scalar_t__ blending_zorder; int rot; } ;


 int ALIGN (int,int) ;
 int drm_rotation_90_or_270 (int ) ;
 int has_flip_h (int ) ;
 int memcpy (struct komeda_data_flow_cfg*,struct komeda_data_flow_cfg*,int) ;

__attribute__((used)) static void komeda_split_data_flow(struct komeda_scaler *scaler,
       struct komeda_data_flow_cfg *dflow,
       struct komeda_data_flow_cfg *l_dflow,
       struct komeda_data_flow_cfg *r_dflow)
{
 bool r90 = drm_rotation_90_or_270(dflow->rot);
 bool flip_h = has_flip_h(dflow->rot);
 u32 l_out, r_out, overlap;

 memcpy(l_dflow, dflow, sizeof(*dflow));
 memcpy(r_dflow, dflow, sizeof(*dflow));

 l_dflow->right_part = 0;
 r_dflow->right_part = 1;
 r_dflow->blending_zorder = dflow->blending_zorder + 1;

 overlap = 0;
 if (dflow->en_scaling && scaler)
  overlap += scaler->scaling_split_overlap;




 dflow->overlap = overlap;

 if (dflow->en_img_enhancement && scaler)
  overlap += scaler->enh_split_overlap;

 l_dflow->overlap = overlap;
 r_dflow->overlap = overlap;






 if (r90) {
  if (dflow->en_scaling) {
   l_dflow->in_h = ALIGN(dflow->in_h, 2) / 2 + l_dflow->overlap;
   r_dflow->in_h = l_dflow->in_h;
  } else if (dflow->en_img_enhancement) {

   l_dflow->in_h = ALIGN(dflow->in_h, 2) / 2 + l_dflow->overlap;
   r_dflow->in_h = dflow->in_h / 2 + r_dflow->overlap;
  } else {

   l_dflow->in_h = ALIGN(((dflow->in_h + 1) >> 1), 2);
   r_dflow->in_h = dflow->in_h - l_dflow->in_h;
  }
  if ((overlap != 0) && dflow->is_yuv) {
   l_dflow->in_h = ALIGN(l_dflow->in_h, 2);
   r_dflow->in_h = ALIGN(r_dflow->in_h, 2);
  }

  if (flip_h)
   l_dflow->in_y = dflow->in_y + dflow->in_h - l_dflow->in_h;
  else
   r_dflow->in_y = dflow->in_y + dflow->in_h - r_dflow->in_h;
 } else {
  if (dflow->en_scaling) {
   l_dflow->in_w = ALIGN(dflow->in_w, 2) / 2 + l_dflow->overlap;
   r_dflow->in_w = l_dflow->in_w;
  } else if (dflow->en_img_enhancement) {
   l_dflow->in_w = ALIGN(dflow->in_w, 2) / 2 + l_dflow->overlap;
   r_dflow->in_w = dflow->in_w / 2 + r_dflow->overlap;
  } else {
   l_dflow->in_w = ALIGN(((dflow->in_w + 1) >> 1), 2);
   r_dflow->in_w = dflow->in_w - l_dflow->in_w;
  }


  if ((overlap != 0) && dflow->is_yuv) {
   l_dflow->in_w = ALIGN(l_dflow->in_w, 2);
   r_dflow->in_w = ALIGN(r_dflow->in_w, 2);
  }


  if (flip_h)
   l_dflow->in_x = dflow->in_w + dflow->in_x - l_dflow->in_w;
  else
   r_dflow->in_x = dflow->in_w + dflow->in_x - r_dflow->in_w;
 }


 if (dflow->en_scaling || dflow->en_img_enhancement)
  l_dflow->out_w = ((dflow->out_w + 1) >> 1);
 else
  l_dflow->out_w = ALIGN(((dflow->out_w + 1) >> 1), 2);

 r_dflow->out_w = dflow->out_w - l_dflow->out_w;

 l_dflow->out_x = dflow->out_x;
 r_dflow->out_x = l_dflow->out_w + l_dflow->out_x;



 if (r90) {
  l_out = (dflow->out_w * l_dflow->in_h) / dflow->in_h;
  r_out = (dflow->out_w * r_dflow->in_h) / dflow->in_h;
 } else {
  l_out = (dflow->out_w * l_dflow->in_w) / dflow->in_w;
  r_out = (dflow->out_w * r_dflow->in_w) / dflow->in_w;
 }

 l_dflow->left_crop = 0;
 l_dflow->right_crop = l_out - l_dflow->out_w;
 r_dflow->left_crop = r_out - r_dflow->out_w;
 r_dflow->right_crop = 0;


 l_dflow->out_w += l_dflow->right_crop + l_dflow->left_crop;
 r_dflow->out_w += r_dflow->right_crop + r_dflow->left_crop;
}
