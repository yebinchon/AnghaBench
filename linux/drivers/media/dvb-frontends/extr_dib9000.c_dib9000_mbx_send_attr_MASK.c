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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct TYPE_3__ {int /*<<< orphan*/  mbx_if_lock; int /*<<< orphan*/  fw_is_running; } ;
struct TYPE_4__ {TYPE_1__ risc; } ;
struct dib9000_state {TYPE_2__ platform; } ;

/* Variables and functions */
 int EINTR ; 
 int EINVAL ; 
 int EIO ; 
 int MAX_MAILBOX_TRY ; 
 scalar_t__ MBX_MAX_WORDS ; 
 int FUNC0 (struct dib9000_state*,int,int) ; 
 scalar_t__ FUNC1 (struct dib9000_state*,int,scalar_t__*,scalar_t__,int) ; 
 scalar_t__ FUNC2 (struct dib9000_state*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct dib9000_state *state, u8 id, u16 * data, u8 len, u16 attr)
{
	u8 *d, b[2];
	u16 tmp;
	u16 size;
	u32 i;
	int ret = 0;

	if (!state->platform.risc.fw_is_running)
		return -EINVAL;

	if (FUNC5(&state->platform.risc.mbx_if_lock) < 0) {
		FUNC3("could not get the lock\n");
		return -EINTR;
	}
	tmp = MAX_MAILBOX_TRY;
	do {
		size = FUNC0(state, 1043, attr) & 0xff;
		if ((size + len + 1) > MBX_MAX_WORDS && --tmp) {
			FUNC3("MBX: RISC mbx full, retrying\n");
			FUNC4(100);
		} else
			break;
	} while (1);

	/*dprintk( "MBX: size: %d\n", size); */

	if (tmp == 0) {
		ret = -EINVAL;
		goto out;
	}
#ifdef DUMP_MSG
	dprintk("--> %02x %d %*ph\n", id, len + 1, len, data);
#endif

	/* byte-order conversion - works on big (where it is not necessary) or little endian */
	d = (u8 *) data;
	for (i = 0; i < len; i++) {
		tmp = data[i];
		*d++ = tmp >> 8;
		*d++ = tmp & 0xff;
	}

	/* write msg */
	b[0] = id;
	b[1] = len + 1;
	if (FUNC1(state, 1045, b, 2, attr) != 0 || FUNC1(state, 1045, (u8 *) data, len * 2, attr) != 0) {
		ret = -EIO;
		goto out;
	}

	/* update register nb_mes_in_RX */
	ret = (u8) FUNC2(state, 1043, 1 << 14, attr);

out:
	FUNC6(&state->platform.risc.mbx_if_lock);

	return ret;
}