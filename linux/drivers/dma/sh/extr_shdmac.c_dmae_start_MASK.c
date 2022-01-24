#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sh_dmae_device {int chcr_ie_bit; TYPE_1__* pdata; } ;
struct sh_dmae_chan {int dummy; } ;
struct TYPE_2__ {scalar_t__ needs_tend_set; } ;

/* Variables and functions */
 int CHCR_DE ; 
 int CHCR_TE ; 
 int /*<<< orphan*/  TEND ; 
 int FUNC0 (struct sh_dmae_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct sh_dmae_chan*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sh_dmae_chan*,int,int /*<<< orphan*/ ) ; 
 struct sh_dmae_device* FUNC3 (struct sh_dmae_chan*) ; 

__attribute__((used)) static void FUNC4(struct sh_dmae_chan *sh_chan)
{
	struct sh_dmae_device *shdev = FUNC3(sh_chan);
	u32 chcr = FUNC0(sh_chan);

	if (shdev->pdata->needs_tend_set)
		FUNC2(sh_chan, 0xFFFFFFFF, TEND);

	chcr |= CHCR_DE | shdev->chcr_ie_bit;
	FUNC1(sh_chan, chcr & ~CHCR_TE);
}