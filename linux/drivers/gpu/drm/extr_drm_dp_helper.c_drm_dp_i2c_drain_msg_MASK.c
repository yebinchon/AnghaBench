#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct drm_dp_aux_msg {int size; int buffer; } ;
struct drm_dp_aux {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int EPROTO ; 
 int FUNC1 (struct drm_dp_aux*,struct drm_dp_aux_msg*) ; 

__attribute__((used)) static int FUNC2(struct drm_dp_aux *aux, struct drm_dp_aux_msg *orig_msg)
{
	int err, ret = orig_msg->size;
	struct drm_dp_aux_msg msg = *orig_msg;

	while (msg.size > 0) {
		err = FUNC1(aux, &msg);
		if (err <= 0)
			return err == 0 ? -EPROTO : err;

		if (err < msg.size && err < ret) {
			FUNC0("Partial I2C reply: requested %zu bytes got %d bytes\n",
				      msg.size, err);
			ret = err;
		}

		msg.size -= err;
		msg.buffer += err;
	}

	return ret;
}