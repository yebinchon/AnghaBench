
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct scmi_msg_sensor_trip_point_notify* buf; } ;
struct scmi_xfer {TYPE_1__ tx; } ;
struct scmi_msg_sensor_trip_point_notify {void* event_control; void* id; } ;
struct scmi_handle {int dummy; } ;


 int SCMI_PROTOCOL_SENSOR ;
 int SENSOR_TP_NOTIFY_ALL ;
 int SENSOR_TRIP_POINT_NOTIFY ;
 void* cpu_to_le32 (int ) ;
 int scmi_do_xfer (struct scmi_handle const*,struct scmi_xfer*) ;
 int scmi_xfer_get_init (struct scmi_handle const*,int ,int ,int,int ,struct scmi_xfer**) ;
 int scmi_xfer_put (struct scmi_handle const*,struct scmi_xfer*) ;

__attribute__((used)) static int scmi_sensor_trip_point_notify(const struct scmi_handle *handle,
      u32 sensor_id, bool enable)
{
 int ret;
 u32 evt_cntl = enable ? SENSOR_TP_NOTIFY_ALL : 0;
 struct scmi_xfer *t;
 struct scmi_msg_sensor_trip_point_notify *cfg;

 ret = scmi_xfer_get_init(handle, SENSOR_TRIP_POINT_NOTIFY,
     SCMI_PROTOCOL_SENSOR, sizeof(*cfg), 0, &t);
 if (ret)
  return ret;

 cfg = t->tx.buf;
 cfg->id = cpu_to_le32(sensor_id);
 cfg->event_control = cpu_to_le32(evt_cntl);

 ret = scmi_do_xfer(handle, t);

 scmi_xfer_put(handle, t);
 return ret;
}
