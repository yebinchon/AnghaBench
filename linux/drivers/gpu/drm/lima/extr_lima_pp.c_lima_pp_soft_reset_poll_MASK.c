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
struct lima_ip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LIMA_PP_INT_RAWSTAT ; 
 int LIMA_PP_IRQ_RESET_COMPLETED ; 
 int /*<<< orphan*/  LIMA_PP_STATUS ; 
 int LIMA_PP_STATUS_RENDERING_ACTIVE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct lima_ip *ip)
{
	return !(FUNC0(LIMA_PP_STATUS) & LIMA_PP_STATUS_RENDERING_ACTIVE) &&
		FUNC0(LIMA_PP_INT_RAWSTAT) == LIMA_PP_IRQ_RESET_COMPLETED;
}