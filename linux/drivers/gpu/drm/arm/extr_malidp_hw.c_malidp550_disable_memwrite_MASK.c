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
struct malidp_hw_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ MALIDP550_SE_CONTROL ; 
 int MALIDP550_SE_MEMWRITE_ONESHOT ; 
 int /*<<< orphan*/  MALIDP_DE_BLOCK ; 
 scalar_t__ MALIDP_DE_DISPLAY_FUNC ; 
 int MALIDP_SCALE_ENGINE_EN ; 
 int MALIDP_SE_MEMWRITE_EN ; 
 scalar_t__ FUNC0 (struct malidp_hw_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct malidp_hw_device*,int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct malidp_hw_device *hwdev)
{
	u32 base = FUNC0(hwdev, MALIDP_DE_BLOCK);

	FUNC1(hwdev, MALIDP550_SE_MEMWRITE_ONESHOT | MALIDP_SE_MEMWRITE_EN,
			    MALIDP550_SE_CONTROL);
	FUNC1(hwdev, MALIDP_SCALE_ENGINE_EN, base + MALIDP_DE_DISPLAY_FUNC);
}