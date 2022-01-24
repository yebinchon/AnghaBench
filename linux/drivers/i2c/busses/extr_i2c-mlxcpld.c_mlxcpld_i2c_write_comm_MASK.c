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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct mlxcpld_i2c_priv {int base_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct mlxcpld_i2c_priv *priv, u8 offs,
				   u8 *data, u8 datalen)
{
	u32 addr = priv->base_addr + offs;

	switch (datalen) {
	case 1:
		FUNC1(*(data), addr);
		break;
	case 2:
		FUNC3(*((u16 *)data), addr);
		break;
	case 3:
		FUNC3(*((u16 *)data), addr);
		FUNC1(*(data + 2), addr + 2);
		break;
	case 4:
		FUNC2(*((u32 *)data), addr);
		break;
	default:
		FUNC0(data, datalen, addr);
		break;
	}
}