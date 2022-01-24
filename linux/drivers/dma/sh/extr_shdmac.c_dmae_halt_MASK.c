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
struct sh_dmae_device {int chcr_ie_bit; } ;
struct sh_dmae_chan {int dummy; } ;

/* Variables and functions */
 int CHCR_DE ; 
 int CHCR_TE ; 
 int FUNC0 (struct sh_dmae_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct sh_dmae_chan*,int) ; 
 struct sh_dmae_device* FUNC2 (struct sh_dmae_chan*) ; 

__attribute__((used)) static void FUNC3(struct sh_dmae_chan *sh_chan)
{
	struct sh_dmae_device *shdev = FUNC2(sh_chan);
	u32 chcr = FUNC0(sh_chan);

	chcr &= ~(CHCR_DE | CHCR_TE | shdev->chcr_ie_bit);
	FUNC1(sh_chan, chcr);
}