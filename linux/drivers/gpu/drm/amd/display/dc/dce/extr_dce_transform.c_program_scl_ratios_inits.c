
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fraction; int integer; } ;
struct TYPE_4__ {int fraction; int integer; } ;
struct scl_ratios_inits {TYPE_1__ v_init; TYPE_2__ h_init; int v_int_scale_ratio; int h_int_scale_ratio; } ;
struct dce_transform {int dummy; } ;


 int REG_SET (int ,int ,int ,int ) ;
 int REG_SET_2 (int ,int ,int ,int ,int ,int ) ;
 int REG_WRITE (int ,int ) ;
 int SCL_AUTOMATIC_MODE_CONTROL ;
 int SCL_HORZ_FILTER_INIT ;
 int SCL_HORZ_FILTER_SCALE_RATIO ;
 int SCL_H_INIT_FRAC ;
 int SCL_H_INIT_INT ;
 int SCL_H_SCALE_RATIO ;
 int SCL_VERT_FILTER_INIT ;
 int SCL_VERT_FILTER_SCALE_RATIO ;
 int SCL_V_INIT_FRAC ;
 int SCL_V_INIT_INT ;
 int SCL_V_SCALE_RATIO ;

__attribute__((used)) static void program_scl_ratios_inits(
 struct dce_transform *xfm_dce,
 struct scl_ratios_inits *inits)
{

 REG_SET(SCL_HORZ_FILTER_SCALE_RATIO, 0,
   SCL_H_SCALE_RATIO, inits->h_int_scale_ratio);

 REG_SET(SCL_VERT_FILTER_SCALE_RATIO, 0,
   SCL_V_SCALE_RATIO, inits->v_int_scale_ratio);

 REG_SET_2(SCL_HORZ_FILTER_INIT, 0,
   SCL_H_INIT_INT, inits->h_init.integer,
   SCL_H_INIT_FRAC, inits->h_init.fraction);

 REG_SET_2(SCL_VERT_FILTER_INIT, 0,
   SCL_V_INIT_INT, inits->v_init.integer,
   SCL_V_INIT_FRAC, inits->v_init.fraction);

 REG_WRITE(SCL_AUTOMATIC_MODE_CONTROL, 0);
}
