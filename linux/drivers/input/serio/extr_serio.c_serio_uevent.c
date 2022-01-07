
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* extra; scalar_t__* id; scalar_t__* proto; scalar_t__* type; } ;
struct serio {scalar_t__* firmware_id; TYPE_1__ id; } ;
struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;


 int ENODEV ;
 int SERIO_ADD_UEVENT_VAR (char*,scalar_t__*,...) ;
 struct serio* to_serio_port (struct device*) ;

__attribute__((used)) static int serio_uevent(struct device *dev, struct kobj_uevent_env *env)
{
 struct serio *serio;

 if (!dev)
  return -ENODEV;

 serio = to_serio_port(dev);

 SERIO_ADD_UEVENT_VAR("SERIO_TYPE=%02x", serio->id.type);
 SERIO_ADD_UEVENT_VAR("SERIO_PROTO=%02x", serio->id.proto);
 SERIO_ADD_UEVENT_VAR("SERIO_ID=%02x", serio->id.id);
 SERIO_ADD_UEVENT_VAR("SERIO_EXTRA=%02x", serio->id.extra);

 SERIO_ADD_UEVENT_VAR("MODALIAS=serio:ty%02Xpr%02Xid%02Xex%02X",
    serio->id.type, serio->id.proto, serio->id.id, serio->id.extra);

 if (serio->firmware_id[0])
  SERIO_ADD_UEVENT_VAR("SERIO_FIRMWARE_ID=%s",
         serio->firmware_id);

 return 0;
}
