
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int buf; } ;
struct TYPE_3__ {int buf; } ;
struct scmi_xfer {TYPE_2__ rx; TYPE_1__ tx; } ;
struct scmi_handle {int dummy; } ;
typedef int __le32 ;


 int BASE_DISCOVER_AGENT ;
 int SCMI_MAX_STR_SIZE ;
 int SCMI_PROTOCOL_BASE ;
 int put_unaligned_le32 (int,int ) ;
 int scmi_do_xfer (struct scmi_handle const*,struct scmi_xfer*) ;
 int scmi_xfer_get_init (struct scmi_handle const*,int ,int ,int,int ,struct scmi_xfer**) ;
 int scmi_xfer_put (struct scmi_handle const*,struct scmi_xfer*) ;
 int strlcpy (char*,int ,int ) ;

__attribute__((used)) static int scmi_base_discover_agent_get(const struct scmi_handle *handle,
     int id, char *name)
{
 int ret;
 struct scmi_xfer *t;

 ret = scmi_xfer_get_init(handle, BASE_DISCOVER_AGENT,
     SCMI_PROTOCOL_BASE, sizeof(__le32),
     SCMI_MAX_STR_SIZE, &t);
 if (ret)
  return ret;

 put_unaligned_le32(id, t->tx.buf);

 ret = scmi_do_xfer(handle, t);
 if (!ret)
  strlcpy(name, t->rx.buf, SCMI_MAX_STR_SIZE);

 scmi_xfer_put(handle, t);

 return ret;
}
