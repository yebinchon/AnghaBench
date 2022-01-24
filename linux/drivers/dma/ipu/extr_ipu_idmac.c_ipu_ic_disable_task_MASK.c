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
typedef  int uint32_t ;
struct ipu {int dummy; } ;
typedef  enum ipu_channel { ____Placeholder_ipu_channel } ipu_channel ;

/* Variables and functions */
 int /*<<< orphan*/  IC_CONF ; 
 int IC_CONF_PRPENC_EN ; 
 int IC_CONF_RWS_EN ; 
#define  IDMAC_IC_0 129 
#define  IDMAC_IC_7 128 
 int FUNC0 (struct ipu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipu*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ipu *ipu, enum ipu_channel channel)
{
	uint32_t ic_conf, mask;

	switch (channel) {
	case IDMAC_IC_0:
		mask = IC_CONF_PRPENC_EN;
		break;
	case IDMAC_IC_7:
		mask = IC_CONF_RWS_EN | IC_CONF_PRPENC_EN;
		break;
	default:
		return;
	}
	ic_conf = FUNC0(ipu, IC_CONF) & ~mask;
	FUNC1(ipu, ic_conf, IC_CONF);
}