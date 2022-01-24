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
typedef  scalar_t__ u32 ;
struct mlx5_core_mkey {scalar_t__ type; scalar_t__ key; } ;

/* Variables and functions */
 scalar_t__ MLX5_MKEY_MW ; 
 scalar_t__ FUNC0 (scalar_t__) ; 

__attribute__((used)) static bool FUNC1(struct mlx5_core_mkey *mmkey, u32 key)
{
	if (!mmkey)
		return false;
	if (mmkey->type == MLX5_MKEY_MW)
		return FUNC0(mmkey->key) == FUNC0(key);
	return mmkey->key == key;
}