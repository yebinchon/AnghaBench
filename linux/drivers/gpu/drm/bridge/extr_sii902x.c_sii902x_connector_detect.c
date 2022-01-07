
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sii902x {int mutex; int regmap; } ;
struct drm_connector {int dummy; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 int SII902X_INT_STATUS ;
 unsigned int SII902X_PLUGGED_STATUS ;
 int connector_status_connected ;
 int connector_status_disconnected ;
 struct sii902x* connector_to_sii902x (struct drm_connector*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static enum drm_connector_status
sii902x_connector_detect(struct drm_connector *connector, bool force)
{
 struct sii902x *sii902x = connector_to_sii902x(connector);
 unsigned int status;

 mutex_lock(&sii902x->mutex);

 regmap_read(sii902x->regmap, SII902X_INT_STATUS, &status);

 mutex_unlock(&sii902x->mutex);

 return (status & SII902X_PLUGGED_STATUS) ?
        connector_status_connected : connector_status_disconnected;
}
