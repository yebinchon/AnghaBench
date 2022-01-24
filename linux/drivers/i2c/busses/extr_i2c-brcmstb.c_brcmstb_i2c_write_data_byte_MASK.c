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
typedef  int u8 ;
struct brcmstb_i2c_dev {int dummy; } ;
typedef  enum bsc_xfer_cmd { ____Placeholder_bsc_xfer_cmd } bsc_xfer_cmd ;

/* Variables and functions */
 int CMD_WR ; 
 int CMD_WR_NOACK ; 
 int FUNC0 (struct brcmstb_i2c_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmstb_i2c_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cnt_reg ; 
 int /*<<< orphan*/  data_in ; 

__attribute__((used)) static int FUNC2(struct brcmstb_i2c_dev *dev,
				       u8 *buf, unsigned int nak_expected)
{
	enum bsc_xfer_cmd cmd = nak_expected ? CMD_WR : CMD_WR_NOACK;

	FUNC1(dev, 1, cnt_reg);
	FUNC1(dev, *buf, data_in);

	return FUNC0(dev, cmd);
}