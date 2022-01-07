
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct ec_response_motion_sense {int dummy; } ;
struct cros_ec_sensors_core_state {TYPE_2__* msg; struct ec_response_motion_sense* resp; TYPE_1__* ec; struct ec_response_motion_sense param; } ;
struct TYPE_4__ {struct ec_response_motion_sense* data; int insize; } ;
struct TYPE_3__ {int max_response; } ;


 int cros_ec_cmd_xfer_status (TYPE_1__*,TYPE_2__*) ;
 int memcpy (struct ec_response_motion_sense*,struct ec_response_motion_sense*,int) ;
 int min (scalar_t__,int ) ;

int cros_ec_motion_send_host_cmd(struct cros_ec_sensors_core_state *state,
     u16 opt_length)
{
 int ret;

 if (opt_length)
  state->msg->insize = min(opt_length, state->ec->max_response);
 else
  state->msg->insize = state->ec->max_response;

 memcpy(state->msg->data, &state->param, sizeof(state->param));

 ret = cros_ec_cmd_xfer_status(state->ec, state->msg);
 if (ret < 0)
  return ret;

 if (ret &&
     state->resp != (struct ec_response_motion_sense *)state->msg->data)
  memcpy(state->resp, state->msg->data, ret);

 return 0;
}
