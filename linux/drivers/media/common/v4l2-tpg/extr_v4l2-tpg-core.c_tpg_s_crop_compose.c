
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_rect {int width; } ;
struct tpg_data {int scaled_width; int src_width; int max_line_width; int recalc_lines; struct v4l2_rect crop; struct v4l2_rect compose; } ;



void tpg_s_crop_compose(struct tpg_data *tpg, const struct v4l2_rect *crop,
  const struct v4l2_rect *compose)
{
 tpg->crop = *crop;
 tpg->compose = *compose;
 tpg->scaled_width = (tpg->src_width * tpg->compose.width +
     tpg->crop.width - 1) / tpg->crop.width;
 tpg->scaled_width &= ~1;
 if (tpg->scaled_width > tpg->max_line_width)
  tpg->scaled_width = tpg->max_line_width;
 if (tpg->scaled_width < 2)
  tpg->scaled_width = 2;
 tpg->recalc_lines = 1;
}
