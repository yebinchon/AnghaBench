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
struct mxl5xx_cfg {int fw_len; int /*<<< orphan*/  fw_priv; int /*<<< orphan*/  (* fw_read ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ;int /*<<< orphan*/ * fw; } ;
struct mxl {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct mxl*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct mxl *state, struct mxl5xx_cfg *cfg)
{
	int stat = 0;
	u8 *buf;

	if (cfg->fw)
		return FUNC0(state, cfg->fw, cfg->fw_len);

	if (!cfg->fw_read)
		return -1;

	buf = FUNC3(0x40000);
	if (!buf)
		return -ENOMEM;

	cfg->fw_read(cfg->fw_priv, buf, 0x40000);
	stat = FUNC0(state, buf, 0x40000);
	FUNC2(buf);

	return stat;
}