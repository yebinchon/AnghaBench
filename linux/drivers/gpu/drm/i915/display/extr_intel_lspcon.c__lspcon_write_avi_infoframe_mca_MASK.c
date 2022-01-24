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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct drm_dp_aux {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 scalar_t__ LSPCON_MCA_AVI_IF_CTRL ; 
 int LSPCON_MCA_AVI_IF_HANDLED ; 
 int LSPCON_MCA_AVI_IF_KICKOFF ; 
 scalar_t__ LSPCON_MCA_AVI_IF_WRITE_OFFSET ; 
 int FUNC2 (struct drm_dp_aux*,scalar_t__,int*,int) ; 
 int FUNC3 (struct drm_dp_aux*,scalar_t__,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static bool FUNC5(struct drm_dp_aux *aux,
					    const u8 *buffer, ssize_t len)
{
	int ret;
	u32 val = 0;
	u32 retry;
	u16 reg;
	const u8 *data = buffer;

	reg = LSPCON_MCA_AVI_IF_WRITE_OFFSET;
	while (val < len) {
		/* DPCD write for AVI IF can fail on a slow FW day, so retry */
		for (retry = 0; retry < 5; retry++) {
			ret = FUNC3(aux, reg, (void *)data, 1);
			if (ret == 1) {
				break;
			} else if (retry < 4) {
				FUNC4(50);
				continue;
			} else {
				FUNC1("DPCD write failed at:0x%x\n", reg);
				return false;
			}
		}
		val++; reg++; data++;
	}

	val = 0;
	reg = LSPCON_MCA_AVI_IF_CTRL;
	ret = FUNC2(aux, reg, &val, 1);
	if (ret < 0) {
		FUNC1("DPCD read failed, address 0x%x\n", reg);
		return false;
	}

	/* Indicate LSPCON chip about infoframe, clear bit 1 and set bit 0 */
	val &= ~LSPCON_MCA_AVI_IF_HANDLED;
	val |= LSPCON_MCA_AVI_IF_KICKOFF;

	ret = FUNC3(aux, reg, &val, 1);
	if (ret < 0) {
		FUNC1("DPCD read failed, address 0x%x\n", reg);
		return false;
	}

	val = 0;
	ret = FUNC2(aux, reg, &val, 1);
	if (ret < 0) {
		FUNC1("DPCD read failed, address 0x%x\n", reg);
		return false;
	}

	if (val == LSPCON_MCA_AVI_IF_HANDLED)
		FUNC0("AVI IF handled by FW\n");

	return true;
}