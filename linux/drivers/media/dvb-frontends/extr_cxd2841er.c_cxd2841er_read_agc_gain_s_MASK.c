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
typedef  int u16 ;
struct cxd2841er_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_SLVT ; 
 int /*<<< orphan*/  FUNC0 (struct cxd2841er_priv*,int /*<<< orphan*/ ,int,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cxd2841er_priv*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static u16 FUNC2(struct cxd2841er_priv *priv)
{
	u8 data[2];

	/* Set SLV-T Bank : 0xA0 */
	FUNC1(priv, I2C_SLVT, 0x00, 0xa0);
	/*
	 *  slave     Bank      Addr      Bit       Signal name
	 * <SLV-T>    A0h       1Fh       [4:0]     IRFAGC_GAIN[12:8]
	 * <SLV-T>    A0h       20h       [7:0]     IRFAGC_GAIN[7:0]
	 */
	FUNC0(priv, I2C_SLVT, 0x1f, data, 2);
	return ((((u16)data[0] & 0x1F) << 8) | (u16)(data[1] & 0xFF)) << 3;
}