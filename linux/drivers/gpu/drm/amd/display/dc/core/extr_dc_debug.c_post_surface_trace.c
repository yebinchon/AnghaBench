
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dc {TYPE_1__* ctx; } ;
struct TYPE_2__ {int logger; } ;


 int DC_LOGGER_INIT (int ) ;
 int SURFACE_TRACE (char*) ;

void post_surface_trace(struct dc *dc)
{
 DC_LOGGER_INIT(dc->ctx->logger);

 SURFACE_TRACE("post surface process.\n");

}
