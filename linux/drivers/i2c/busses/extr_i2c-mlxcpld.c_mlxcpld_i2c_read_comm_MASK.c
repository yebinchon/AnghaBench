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
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int,int) ; 

__attribute__((used)) static void FUNC4(struct mlxcpld_i2c_priv *priv, u8 offs,
				  u8 *data, u8 datalen)
{
	u32 addr = priv->base_addr + offs;

	switch (datalen) {
	case 1:
		*(data) = FUNC0(addr);
		break;
	case 2:
		*((u16 *)data) = FUNC2(addr);
		break;
	case 3:
		*((u16 *)data) = FUNC2(addr);
		*(data + 2) = FUNC0(addr + 2);
		break;
	case 4:
		*((u32 *)data) = FUNC1(addr);
		break;
	default:
		FUNC3(data, datalen, addr);
		break;
	}
}