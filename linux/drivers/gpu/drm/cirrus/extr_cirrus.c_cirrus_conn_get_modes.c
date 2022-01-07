
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_connector {TYPE_2__* dev; } ;
struct TYPE_3__ {int max_height; int max_width; } ;
struct TYPE_4__ {TYPE_1__ mode_config; } ;


 int drm_add_modes_noedid (struct drm_connector*,int ,int ) ;
 int drm_set_preferred_mode (struct drm_connector*,int,int) ;

__attribute__((used)) static int cirrus_conn_get_modes(struct drm_connector *conn)
{
 int count;

 count = drm_add_modes_noedid(conn,
         conn->dev->mode_config.max_width,
         conn->dev->mode_config.max_height);
 drm_set_preferred_mode(conn, 1024, 768);
 return count;
}
