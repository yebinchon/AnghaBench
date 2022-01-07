
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_engine {int dummy; } ;
struct sun4i_frontend {int dummy; } ;
struct sun4i_backend {int frontend_teardown; int frontend_lock; struct sun4i_frontend* frontend; } ;


 struct sun4i_backend* engine_to_sun4i_backend (struct sunxi_engine*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sun4i_frontend_exit (struct sun4i_frontend*) ;

__attribute__((used)) static void sun4i_backend_vblank_quirk(struct sunxi_engine *engine)
{
 struct sun4i_backend *backend = engine_to_sun4i_backend(engine);
 struct sun4i_frontend *frontend = backend->frontend;

 if (!frontend)
  return;
 spin_lock(&backend->frontend_lock);
 if (backend->frontend_teardown) {
  sun4i_frontend_exit(frontend);
  backend->frontend_teardown = 0;
 }
 spin_unlock(&backend->frontend_lock);
}
