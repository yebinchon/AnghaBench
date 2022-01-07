
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct sensors_info {scalar_t__ num_sensors; struct scmi_sensor_info* sensors; } ;
struct TYPE_5__ {int buf; } ;
struct TYPE_4__ {struct scmi_msg_resp_sensor_description* buf; } ;
struct scmi_xfer {TYPE_2__ tx; TYPE_1__ rx; } ;
struct scmi_sensor_info {int scale; int name; int num_trip_points; int async; int type; void* id; } ;
struct scmi_msg_resp_sensor_description {TYPE_3__* desc; int num_remaining; int num_returned; } ;
struct scmi_handle {int dev; } ;
typedef int __le32 ;
struct TYPE_6__ {int name; int id; int attributes_high; int attributes_low; } ;


 int NUM_TRIP_POINTS (scalar_t__) ;
 int SCMI_MAX_STR_SIZE ;
 int SCMI_PROTOCOL_SENSOR ;
 int SENSOR_DESCRIPTION_GET ;
 int SENSOR_SCALE (scalar_t__) ;
 int SENSOR_SCALE_EXTEND ;
 int SENSOR_SCALE_SIGN ;
 int SENSOR_TYPE (scalar_t__) ;
 int SUPPORTS_ASYNC_READ (scalar_t__) ;
 int dev_err (int ,char*,scalar_t__) ;
 scalar_t__ le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;
 int put_unaligned_le32 (scalar_t__,int ) ;
 int scmi_do_xfer (struct scmi_handle const*,struct scmi_xfer*) ;
 int scmi_xfer_get_init (struct scmi_handle const*,int ,int ,int,int ,struct scmi_xfer**) ;
 int scmi_xfer_put (struct scmi_handle const*,struct scmi_xfer*) ;
 int strlcpy (int ,int ,int ) ;

__attribute__((used)) static int scmi_sensor_description_get(const struct scmi_handle *handle,
           struct sensors_info *si)
{
 int ret, cnt;
 u32 desc_index = 0;
 u16 num_returned, num_remaining;
 struct scmi_xfer *t;
 struct scmi_msg_resp_sensor_description *buf;

 ret = scmi_xfer_get_init(handle, SENSOR_DESCRIPTION_GET,
     SCMI_PROTOCOL_SENSOR, sizeof(__le32), 0, &t);
 if (ret)
  return ret;

 buf = t->rx.buf;

 do {

  put_unaligned_le32(desc_index, t->tx.buf);

  ret = scmi_do_xfer(handle, t);
  if (ret)
   break;

  num_returned = le16_to_cpu(buf->num_returned);
  num_remaining = le16_to_cpu(buf->num_remaining);

  if (desc_index + num_returned > si->num_sensors) {
   dev_err(handle->dev, "No. of sensors can't exceed %d",
    si->num_sensors);
   break;
  }

  for (cnt = 0; cnt < num_returned; cnt++) {
   u32 attrh, attrl;
   struct scmi_sensor_info *s;

   attrl = le32_to_cpu(buf->desc[cnt].attributes_low);
   attrh = le32_to_cpu(buf->desc[cnt].attributes_high);
   s = &si->sensors[desc_index + cnt];
   s->id = le32_to_cpu(buf->desc[cnt].id);
   s->type = SENSOR_TYPE(attrh);
   s->scale = SENSOR_SCALE(attrh);

   if (s->scale & SENSOR_SCALE_SIGN)
    s->scale |= SENSOR_SCALE_EXTEND;
   s->async = SUPPORTS_ASYNC_READ(attrl);
   s->num_trip_points = NUM_TRIP_POINTS(attrl);
   strlcpy(s->name, buf->desc[cnt].name, SCMI_MAX_STR_SIZE);
  }

  desc_index += num_returned;




 } while (num_returned && num_remaining);

 scmi_xfer_put(handle, t);
 return ret;
}
