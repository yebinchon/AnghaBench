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
typedef  scalar_t__ u8 ;
struct TYPE_2__ {int /*<<< orphan*/  aux; } ;
struct intel_digital_port {TYPE_1__ dp; } ;
struct hdcp2_dp_msg_data {unsigned int offset; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int DP_AUX_MAX_PAYLOAD_BYTES ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int) ; 
 int EINVAL ; 
 scalar_t__ HDCP_2_2_REP_SEND_RECVID_LIST ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned int,void*,int) ; 
 struct hdcp2_dp_msg_data* FUNC2 (scalar_t__) ; 
 int FUNC3 (struct intel_digital_port*) ; 
 int FUNC4 (struct intel_digital_port*,struct hdcp2_dp_msg_data const*) ; 

__attribute__((used)) static
int FUNC5(struct intel_digital_port *intel_dig_port,
			    u8 msg_id, void *buf, size_t size)
{
	unsigned int offset;
	u8 *byte = buf;
	ssize_t ret, bytes_to_recv, len;
	const struct hdcp2_dp_msg_data *hdcp2_msg_data;

	hdcp2_msg_data = FUNC2(msg_id);
	if (!hdcp2_msg_data)
		return -EINVAL;
	offset = hdcp2_msg_data->offset;

	ret = FUNC4(intel_dig_port, hdcp2_msg_data);
	if (ret < 0)
		return ret;

	if (msg_id == HDCP_2_2_REP_SEND_RECVID_LIST) {
		ret = FUNC3(intel_dig_port);
		if (ret < 0)
			return ret;

		size = ret;
	}
	bytes_to_recv = size - 1;

	/* DP adaptation msgs has no msg_id */
	byte++;

	while (bytes_to_recv) {
		len = bytes_to_recv > DP_AUX_MAX_PAYLOAD_BYTES ?
		      DP_AUX_MAX_PAYLOAD_BYTES : bytes_to_recv;

		ret = FUNC1(&intel_dig_port->dp.aux, offset,
				       (void *)byte, len);
		if (ret < 0) {
			FUNC0("msg_id %d, ret %zd\n", msg_id, ret);
			return ret;
		}

		bytes_to_recv -= ret;
		byte += ret;
		offset += ret;
	}
	byte = buf;
	*byte = msg_id;

	return size;
}