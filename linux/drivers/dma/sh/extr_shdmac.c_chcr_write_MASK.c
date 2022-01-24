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
typedef  int /*<<< orphan*/  u32 ;
struct sh_dmae_device {scalar_t__ chcr_offset; } ;
struct sh_dmae_chan {scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct sh_dmae_device* FUNC1 (struct sh_dmae_chan*) ; 

__attribute__((used)) static void FUNC2(struct sh_dmae_chan *sh_dc, u32 data)
{
	struct sh_dmae_device *shdev = FUNC1(sh_dc);

	FUNC0(data, sh_dc->base + shdev->chcr_offset);
}