
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int guaranteed; } ;
struct stm_drvdata {int stmspscr; int stmsper; int traceid; int numsp; TYPE_1__ chs; } ;


 int bitmap_clear (int ,int ,int ) ;

__attribute__((used)) static void stm_init_default_data(struct stm_drvdata *drvdata)
{

 drvdata->stmspscr = 0x0;





 drvdata->stmsper = ~0x0;







 drvdata->traceid = 0x1;


 bitmap_clear(drvdata->chs.guaranteed, 0, drvdata->numsp);
}
