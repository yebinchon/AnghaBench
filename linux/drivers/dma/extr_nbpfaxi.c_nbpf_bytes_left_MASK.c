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
struct nbpf_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NBPF_CHAN_CUR_TR_BYTE ; 
 size_t FUNC0 (struct nbpf_channel*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC1(struct nbpf_channel *chan)
{
	return FUNC0(chan, NBPF_CHAN_CUR_TR_BYTE);
}