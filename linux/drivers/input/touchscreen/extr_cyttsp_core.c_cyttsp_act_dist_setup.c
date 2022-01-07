
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cyttsp {int act_dist; } ;
typedef int act_dist_setup ;


 int CY_REG_ACT_DIST ;
 int ttsp_write_block_data (struct cyttsp*,int ,int,int *) ;

__attribute__((used)) static int cyttsp_act_dist_setup(struct cyttsp *ts)
{
 u8 act_dist_setup = ts->act_dist;


 return ttsp_write_block_data(ts, CY_REG_ACT_DIST,
    sizeof(act_dist_setup), &act_dist_setup);
}
