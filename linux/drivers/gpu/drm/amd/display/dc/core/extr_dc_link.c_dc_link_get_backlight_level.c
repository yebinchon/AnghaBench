
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct dc_link {TYPE_3__* ctx; } ;
struct abm {TYPE_4__* funcs; } ;
struct TYPE_8__ {scalar_t__ (* get_current_backlight ) (struct abm*) ;} ;
struct TYPE_7__ {TYPE_2__* dc; } ;
struct TYPE_6__ {TYPE_1__* res_pool; } ;
struct TYPE_5__ {struct abm* abm; } ;


 int DC_ERROR_UNEXPECTED ;
 scalar_t__ stub1 (struct abm*) ;

int dc_link_get_backlight_level(const struct dc_link *link)
{
 struct abm *abm = link->ctx->dc->res_pool->abm;

 if (abm == ((void*)0) || abm->funcs->get_current_backlight == ((void*)0))
  return DC_ERROR_UNEXPECTED;

 return (int) abm->funcs->get_current_backlight(abm);
}
