
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rect {int y; int x; int height; int width; } ;
struct hubp {int dummy; } ;
struct dcn10_hubp {int dummy; } ;


 int DCSURF_PRI_VIEWPORT_DIMENSION ;
 int DCSURF_PRI_VIEWPORT_DIMENSION_C ;
 int DCSURF_PRI_VIEWPORT_START ;
 int DCSURF_PRI_VIEWPORT_START_C ;
 int DCSURF_SEC_VIEWPORT_DIMENSION ;
 int DCSURF_SEC_VIEWPORT_START ;
 int PRI_VIEWPORT_HEIGHT ;
 int PRI_VIEWPORT_HEIGHT_C ;
 int PRI_VIEWPORT_WIDTH ;
 int PRI_VIEWPORT_WIDTH_C ;
 int PRI_VIEWPORT_X_START ;
 int PRI_VIEWPORT_X_START_C ;
 int PRI_VIEWPORT_Y_START ;
 int PRI_VIEWPORT_Y_START_C ;
 int REG_SET_2 (int ,int ,int ,int ,int ,int ) ;
 int SEC_VIEWPORT_HEIGHT ;
 int SEC_VIEWPORT_WIDTH ;
 int SEC_VIEWPORT_X_START ;
 int SEC_VIEWPORT_Y_START ;
 struct dcn10_hubp* TO_DCN10_HUBP (struct hubp*) ;

void min_set_viewport(
 struct hubp *hubp,
 const struct rect *viewport,
 const struct rect *viewport_c)
{
 struct dcn10_hubp *hubp1 = TO_DCN10_HUBP(hubp);

 REG_SET_2(DCSURF_PRI_VIEWPORT_DIMENSION, 0,
    PRI_VIEWPORT_WIDTH, viewport->width,
    PRI_VIEWPORT_HEIGHT, viewport->height);

 REG_SET_2(DCSURF_PRI_VIEWPORT_START, 0,
    PRI_VIEWPORT_X_START, viewport->x,
    PRI_VIEWPORT_Y_START, viewport->y);


 REG_SET_2(DCSURF_SEC_VIEWPORT_DIMENSION, 0,
    SEC_VIEWPORT_WIDTH, viewport->width,
    SEC_VIEWPORT_HEIGHT, viewport->height);

 REG_SET_2(DCSURF_SEC_VIEWPORT_START, 0,
    SEC_VIEWPORT_X_START, viewport->x,
    SEC_VIEWPORT_Y_START, viewport->y);


 REG_SET_2(DCSURF_PRI_VIEWPORT_DIMENSION_C, 0,
    PRI_VIEWPORT_WIDTH_C, viewport_c->width,
    PRI_VIEWPORT_HEIGHT_C, viewport_c->height);

 REG_SET_2(DCSURF_PRI_VIEWPORT_START_C, 0,
    PRI_VIEWPORT_X_START_C, viewport_c->x,
    PRI_VIEWPORT_Y_START_C, viewport_c->y);
}
