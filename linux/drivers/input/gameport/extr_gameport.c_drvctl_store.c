
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gameport {int dummy; } ;
struct device_driver {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 struct device_driver* driver_find (char const*,int *) ;
 int gameport_bind_driver (struct gameport*,int ) ;
 int gameport_bus ;
 int gameport_disconnect_port (struct gameport*) ;
 int gameport_find_driver (struct gameport*) ;
 int gameport_mutex ;
 int gameport_reconnect_port (struct gameport*) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int strncmp (char const*,char*,size_t) ;
 int to_gameport_driver (struct device_driver*) ;
 struct gameport* to_gameport_port (struct device*) ;

__attribute__((used)) static ssize_t drvctl_store(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
 struct gameport *gameport = to_gameport_port(dev);
 struct device_driver *drv;
 int error;

 error = mutex_lock_interruptible(&gameport_mutex);
 if (error)
  return error;

 if (!strncmp(buf, "none", count)) {
  gameport_disconnect_port(gameport);
 } else if (!strncmp(buf, "reconnect", count)) {
  gameport_reconnect_port(gameport);
 } else if (!strncmp(buf, "rescan", count)) {
  gameport_disconnect_port(gameport);
  gameport_find_driver(gameport);
 } else if ((drv = driver_find(buf, &gameport_bus)) != ((void*)0)) {
  gameport_disconnect_port(gameport);
  error = gameport_bind_driver(gameport, to_gameport_driver(drv));
 } else {
  error = -EINVAL;
 }

 mutex_unlock(&gameport_mutex);

 return error ? error : count;
}
