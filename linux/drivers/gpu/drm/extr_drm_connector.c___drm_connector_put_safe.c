
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_mode_config {int connector_free_work; int connector_free_list; int connector_list_lock; } ;
struct TYPE_5__ {int refcount; } ;
struct TYPE_6__ {TYPE_2__ refcount; } ;
struct drm_connector {int free_node; TYPE_3__ base; TYPE_1__* dev; } ;
struct TYPE_4__ {struct drm_mode_config mode_config; } ;


 int llist_add (int *,int *) ;
 int lockdep_assert_held (int *) ;
 int refcount_dec_and_test (int *) ;
 int schedule_work (int *) ;

__attribute__((used)) static void
__drm_connector_put_safe(struct drm_connector *conn)
{
 struct drm_mode_config *config = &conn->dev->mode_config;

 lockdep_assert_held(&config->connector_list_lock);

 if (!refcount_dec_and_test(&conn->base.refcount.refcount))
  return;

 llist_add(&conn->free_node, &config->connector_free_list);
 schedule_work(&config->connector_free_work);
}
