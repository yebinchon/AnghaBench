#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct sensors_info {struct scmi_sensor_info* sensors; } ;
struct TYPE_4__ {void* buf; } ;
struct TYPE_3__ {struct scmi_msg_sensor_reading_get* buf; } ;
struct scmi_xfer {TYPE_2__ rx; TYPE_1__ tx; } ;
struct scmi_sensor_info {scalar_t__ async; } ;
struct scmi_msg_sensor_reading_get {void* flags; void* id; } ;
struct scmi_handle {struct sensors_info* sensor_priv; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  SCMI_PROTOCOL_SENSOR ; 
 int /*<<< orphan*/  SENSOR_READING_GET ; 
 int SENSOR_READ_ASYNC ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int FUNC2 (struct scmi_handle const*,struct scmi_xfer*) ; 
 int FUNC3 (struct scmi_handle const*,struct scmi_xfer*) ; 
 int FUNC4 (struct scmi_handle const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct scmi_xfer**) ; 
 int /*<<< orphan*/  FUNC5 (struct scmi_handle const*,struct scmi_xfer*) ; 

__attribute__((used)) static int FUNC6(const struct scmi_handle *handle,
				   u32 sensor_id, u64 *value)
{
	int ret;
	struct scmi_xfer *t;
	struct scmi_msg_sensor_reading_get *sensor;
	struct sensors_info *si = handle->sensor_priv;
	struct scmi_sensor_info *s = si->sensors + sensor_id;

	ret = FUNC4(handle, SENSOR_READING_GET,
				 SCMI_PROTOCOL_SENSOR, sizeof(*sensor),
				 sizeof(u64), &t);
	if (ret)
		return ret;

	sensor = t->tx.buf;
	sensor->id = FUNC0(sensor_id);

	if (s->async) {
		sensor->flags = FUNC0(SENSOR_READ_ASYNC);
		ret = FUNC3(handle, t);
		if (!ret)
			*value = FUNC1((void *)
						    ((__le32 *)t->rx.buf + 1));
	} else {
		sensor->flags = FUNC0(0);
		ret = FUNC2(handle, t);
		if (!ret)
			*value = FUNC1(t->rx.buf);
	}

	FUNC5(handle, t);
	return ret;
}