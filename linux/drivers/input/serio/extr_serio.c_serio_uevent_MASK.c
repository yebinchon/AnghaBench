#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__* extra; scalar_t__* id; scalar_t__* proto; scalar_t__* type; } ;
struct serio {scalar_t__* firmware_id; TYPE_1__ id; } ;
struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__*,...) ; 
 struct serio* FUNC1 (struct device*) ; 

__attribute__((used)) static int FUNC2(struct device *dev, struct kobj_uevent_env *env)
{
	struct serio *serio;

	if (!dev)
		return -ENODEV;

	serio = FUNC1(dev);

	FUNC0("SERIO_TYPE=%02x", serio->id.type);
	FUNC0("SERIO_PROTO=%02x", serio->id.proto);
	FUNC0("SERIO_ID=%02x", serio->id.id);
	FUNC0("SERIO_EXTRA=%02x", serio->id.extra);

	FUNC0("MODALIAS=serio:ty%02Xpr%02Xid%02Xex%02X",
				serio->id.type, serio->id.proto, serio->id.id, serio->id.extra);

	if (serio->firmware_id[0])
		FUNC0("SERIO_FIRMWARE_ID=%s",
				     serio->firmware_id);

	return 0;
}