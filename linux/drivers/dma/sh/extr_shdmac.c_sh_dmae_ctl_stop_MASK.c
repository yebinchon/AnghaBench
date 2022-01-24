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
struct sh_dmae_device {int dummy; } ;

/* Variables and functions */
 unsigned short DMAOR_AE ; 
 unsigned short DMAOR_DME ; 
 unsigned short DMAOR_NMIF ; 
 unsigned short FUNC0 (struct sh_dmae_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct sh_dmae_device*,unsigned short) ; 
 int /*<<< orphan*/  sh_dmae_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct sh_dmae_device *shdev)
{
	unsigned short dmaor;
	unsigned long flags;

	FUNC2(&sh_dmae_lock, flags);

	dmaor = FUNC0(shdev);
	FUNC1(shdev, dmaor & ~(DMAOR_NMIF | DMAOR_AE | DMAOR_DME));

	FUNC3(&sh_dmae_lock, flags);
}