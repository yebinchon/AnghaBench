
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bl_status; } ;
struct cyttsp {TYPE_1__ bl_data; } ;


 int CY_REG_BASE ;
 int memset (TYPE_1__*,int ,int) ;
 int ttsp_read_block_data (struct cyttsp*,int ,int,TYPE_1__*) ;

__attribute__((used)) static int cyttsp_load_bl_regs(struct cyttsp *ts)
{
 memset(&ts->bl_data, 0, sizeof(ts->bl_data));
 ts->bl_data.bl_status = 0x10;

 return ttsp_read_block_data(ts, CY_REG_BASE,
        sizeof(ts->bl_data), &ts->bl_data);
}
