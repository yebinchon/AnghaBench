
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scmi_xfer {int * async_done; } ;
struct scmi_handle {int dummy; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int ETIMEDOUT ;
 int SCMI_MAX_RESPONSE_TIMEOUT ;
 int async_response ;
 int msecs_to_jiffies (int ) ;
 int scmi_do_xfer (struct scmi_handle const*,struct scmi_xfer*) ;
 int wait_for_completion_timeout (int *,int) ;

int scmi_do_xfer_with_response(const struct scmi_handle *handle,
          struct scmi_xfer *xfer)
{
 int ret, timeout = msecs_to_jiffies(SCMI_MAX_RESPONSE_TIMEOUT);
 DECLARE_COMPLETION_ONSTACK(async_response);

 xfer->async_done = &async_response;

 ret = scmi_do_xfer(handle, xfer);
 if (!ret && !wait_for_completion_timeout(xfer->async_done, timeout))
  ret = -ETIMEDOUT;

 xfer->async_done = ((void*)0);
 return ret;
}
