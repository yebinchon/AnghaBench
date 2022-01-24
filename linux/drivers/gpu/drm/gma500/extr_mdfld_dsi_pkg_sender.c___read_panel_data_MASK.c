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
typedef  int u16 ;
struct mdfld_dsi_pkg_sender {int mipi_intr_stat_reg; int mipi_hs_gen_data_reg; int mipi_lp_gen_data_reg; int /*<<< orphan*/  lock; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EINVAL ; 
 int ETIMEDOUT ; 
 int MDFLD_DSI_READ_MAX_COUNT ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mdfld_dsi_pkg_sender*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct mdfld_dsi_pkg_sender *sender, u8 data_type,
			u8 *data, u16 len, u32 *data_out, u16 len_out, bool hs)
{
	unsigned long flags;
	struct drm_device *dev;
	int i;
	u32 gen_data_reg;
	int retry = MDFLD_DSI_READ_MAX_COUNT;

	if (!sender || !data_out || !len_out) {
		FUNC1("Invalid parameters\n");
		return -EINVAL;
	}

	dev = sender->dev;

	/**
	 * do reading.
	 * 0) send out generic read request
	 * 1) polling read data avail interrupt
	 * 2) read data
	 */
	FUNC5(&sender->lock, flags);

	FUNC3(sender->mipi_intr_stat_reg, FUNC0(29));

	if ((FUNC2(sender->mipi_intr_stat_reg) & FUNC0(29)))
		FUNC1("Can NOT clean read data valid interrupt\n");

	/*send out read request*/
	FUNC4(sender, data_type, data, len, hs);

	/*polling read data avail interrupt*/
	while (retry && !(FUNC2(sender->mipi_intr_stat_reg) & FUNC0(29))) {
		FUNC7(100);
		retry--;
	}

	if (!retry) {
		FUNC6(&sender->lock, flags);
		return -ETIMEDOUT;
	}

	FUNC3(sender->mipi_intr_stat_reg, FUNC0(29));

	/*read data*/
	if (hs)
		gen_data_reg = sender->mipi_hs_gen_data_reg;
	else
		gen_data_reg = sender->mipi_lp_gen_data_reg;

	for (i = 0; i < len_out; i++)
		*(data_out + i) = FUNC2(gen_data_reg);

	FUNC6(&sender->lock, flags);

	return 0;
}