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
typedef  int u32 ;
struct ipu_dc_priv {scalar_t__ dc_reg; } ;
typedef  enum ipu_dc_map { ____Placeholder_ipu_dc_map } ipu_dc_map ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct ipu_dc_priv *priv, enum ipu_dc_map map,
		int byte_num, int offset, int mask)
{
	int ptr = map * 3 + byte_num;
	u32 reg;

	reg = FUNC2(priv->dc_reg + FUNC1(ptr));
	reg &= ~(0xffff << (16 * (ptr & 0x1)));
	reg |= ((offset << 8) | mask) << (16 * (ptr & 0x1));
	FUNC3(reg, priv->dc_reg + FUNC1(ptr));

	reg = FUNC2(priv->dc_reg + FUNC0(map));
	reg &= ~(0x1f << ((16 * (map & 0x1)) + (5 * byte_num)));
	reg |= ptr << ((16 * (map & 0x1)) + (5 * byte_num));
	FUNC3(reg, priv->dc_reg + FUNC0(map));
}