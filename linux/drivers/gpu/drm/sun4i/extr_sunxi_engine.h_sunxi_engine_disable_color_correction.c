
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sunxi_engine {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* disable_color_correction ) (struct sunxi_engine*) ;} ;


 int stub1 (struct sunxi_engine*) ;

__attribute__((used)) static inline void
sunxi_engine_disable_color_correction(struct sunxi_engine *engine)
{
 if (engine->ops && engine->ops->disable_color_correction)
  engine->ops->disable_color_correction(engine);
}
