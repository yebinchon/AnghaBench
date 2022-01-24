#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct i2c_device_addr {struct drx39xxj_state* user_data; } ;
struct TYPE_6__ {TYPE_2__* stat; } ;
struct dtv_frontend_properties {TYPE_3__ cnr; } ;
struct drxj_data {int /*<<< orphan*/  mirror; } ;
struct drx_demod_instance {struct i2c_device_addr* my_i2c_dev_addr; struct drxj_data* my_ext_attr; } ;
struct drx_channel {int /*<<< orphan*/  mirror; } ;
struct TYPE_4__ {struct dtv_frontend_properties dtv_property_cache; } ;
struct drx39xxj_state {TYPE_1__ frontend; } ;
typedef  int /*<<< orphan*/  s32 ;
typedef  enum drx_lock_status { ____Placeholder_drx_lock_status } drx_lock_status ;
struct TYPE_5__ {int svalue; } ;

/* Variables and functions */
#define  DEMOD_LOCKED 131 
 int DRXJ_DEMOD_LOCK ; 
 int /*<<< orphan*/  DRXJ_QAM_DEMOD_LOCK_EXT_WAITTIME ; 
 scalar_t__ DRXJ_QAM_FEC_LOCK_WAITTIME ; 
 scalar_t__ DRXJ_QAM_MAX_WAITTIME ; 
 int DRX_LOCKED ; 
 int /*<<< orphan*/  DRX_MIRROR_AUTO ; 
 int /*<<< orphan*/  DRX_MIRROR_YES ; 
 int DRX_NEVER_LOCK ; 
 int DRX_NOT_LOCKED ; 
#define  NO_LOCK 130 
 int /*<<< orphan*/  QAM_SY_TIMEOUT__A ; 
#define  SPEC_MIRRORED 129 
#define  SYNC_FLIPPED 128 
 int FUNC0 (struct drx_demod_instance*) ; 
 int FUNC1 (struct drx_demod_instance*,int*) ; 
 int FUNC2 (struct i2c_device_addr*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i2c_device_addr*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int FUNC7 (struct drx_demod_instance*,struct drx_channel*) ; 

__attribute__((used)) static int
FUNC8(struct drx_demod_instance *demod,
	  struct drx_channel *channel,
	  s32 tuner_freq_offset, enum drx_lock_status *lock_status)
{
	struct drxj_data *ext_attr = demod->my_ext_attr;
	struct i2c_device_addr *dev_addr = demod->my_i2c_dev_addr;
	struct drx39xxj_state *state = dev_addr->user_data;
	struct dtv_frontend_properties *p = &state->frontend.dtv_property_cache;
	int rc;
	u32 lck_state = NO_LOCK;
	u32 start_time = 0;
	u32 d_locked_time = 0;
	u32 timeout_ofs = 0;
	u16 data = 0;

	/* external attributes for storing acquired channel constellation */
	*lock_status = DRX_NOT_LOCKED;
	start_time = FUNC4(jiffies);
	lck_state = NO_LOCK;
	do {
		rc = FUNC1(demod, lock_status);
		if (rc != 0) {
			FUNC6("error %d\n", rc);
			goto rw_error;
		}

		switch (lck_state) {
		case NO_LOCK:
			if (*lock_status == DRXJ_DEMOD_LOCK) {
				rc = FUNC0(demod);
				if (rc != 0) {
					FUNC6("error %d\n", rc);
					goto rw_error;
				}
				if (p->cnr.stat[0].svalue > 20800) {
					lck_state = DEMOD_LOCKED;
					/* some delay to see if fec_lock possible TODO find the right value */
					timeout_ofs += DRXJ_QAM_DEMOD_LOCK_EXT_WAITTIME;	/* see something, waiting longer */
					d_locked_time = FUNC4(jiffies);
				}
			}
			break;
		case DEMOD_LOCKED:
			if ((*lock_status == DRXJ_DEMOD_LOCK) &&	/* still demod_lock in 150ms */
			    ((FUNC4(jiffies) - d_locked_time) >
			     DRXJ_QAM_FEC_LOCK_WAITTIME)) {
				rc = FUNC2(demod->my_i2c_dev_addr, QAM_SY_TIMEOUT__A, &data, 0);
				if (rc != 0) {
					FUNC6("error %d\n", rc);
					goto rw_error;
				}
				rc = FUNC3(demod->my_i2c_dev_addr, QAM_SY_TIMEOUT__A, data | 0x1, 0);
				if (rc != 0) {
					FUNC6("error %d\n", rc);
					goto rw_error;
				}
				lck_state = SYNC_FLIPPED;
				FUNC5(10);
			}
			break;
		case SYNC_FLIPPED:
			if (*lock_status == DRXJ_DEMOD_LOCK) {
				if (channel->mirror == DRX_MIRROR_AUTO) {
					/* flip sync pattern back */
					rc = FUNC2(demod->my_i2c_dev_addr, QAM_SY_TIMEOUT__A, &data, 0);
					if (rc != 0) {
						FUNC6("error %d\n", rc);
						goto rw_error;
					}
					rc = FUNC3(demod->my_i2c_dev_addr, QAM_SY_TIMEOUT__A, data & 0xFFFE, 0);
					if (rc != 0) {
						FUNC6("error %d\n", rc);
						goto rw_error;
					}
					/* flip spectrum */
					ext_attr->mirror = DRX_MIRROR_YES;
					rc = FUNC7(demod, channel);
					if (rc != 0) {
						FUNC6("error %d\n", rc);
						goto rw_error;
					}
					lck_state = SPEC_MIRRORED;
					/* reset timer TODO: still need 500ms? */
					start_time = d_locked_time =
					    FUNC4(jiffies);
					timeout_ofs = 0;
				} else {	/* no need to wait lock */

					start_time =
					    FUNC4(jiffies) -
					    DRXJ_QAM_MAX_WAITTIME - timeout_ofs;
				}
			}
			break;
		case SPEC_MIRRORED:
			if ((*lock_status == DRXJ_DEMOD_LOCK) &&	/* still demod_lock in 150ms */
			    ((FUNC4(jiffies) - d_locked_time) >
			     DRXJ_QAM_FEC_LOCK_WAITTIME)) {
				rc = FUNC0(demod);
				if (rc != 0) {
					FUNC6("error %d\n", rc);
					goto rw_error;
				}
				if (p->cnr.stat[0].svalue > 20800) {
					rc = FUNC2(demod->my_i2c_dev_addr, QAM_SY_TIMEOUT__A, &data, 0);
					if (rc != 0) {
						FUNC6("error %d\n", rc);
						goto rw_error;
					}
					rc = FUNC3(demod->my_i2c_dev_addr, QAM_SY_TIMEOUT__A, data | 0x1, 0);
					if (rc != 0) {
						FUNC6("error %d\n", rc);
						goto rw_error;
					}
					/* no need to wait lock */
					start_time =
					    FUNC4(jiffies) -
					    DRXJ_QAM_MAX_WAITTIME - timeout_ofs;
				}
			}
			break;
		default:
			break;
		}
		FUNC5(10);
	} while
	    ((*lock_status != DRX_LOCKED) &&
	     (*lock_status != DRX_NEVER_LOCK) &&
	     ((FUNC4(jiffies) - start_time) <
	      (DRXJ_QAM_MAX_WAITTIME + timeout_ofs))
	    );
	/* Returning control to application ... */

	return 0;
rw_error:
	return rc;
}