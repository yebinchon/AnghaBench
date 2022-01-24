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
struct ipuv3_channel {unsigned int num; struct ipu_soc* ipu; } ;
struct ipu_soc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (struct ipu_soc*,int /*<<< orphan*/ ) ; 

int FUNC3(struct ipuv3_channel *channel)
{
	struct ipu_soc *ipu = channel->ipu;
	unsigned int chno = channel->num;

	return (FUNC2(ipu, FUNC0(chno)) & FUNC1(chno)) ? 1 : 0;
}