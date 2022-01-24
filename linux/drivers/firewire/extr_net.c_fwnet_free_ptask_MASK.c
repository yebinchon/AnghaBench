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
struct fwnet_packet_task {int /*<<< orphan*/  skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fwnet_packet_task_cache ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct fwnet_packet_task*) ; 

__attribute__((used)) static void FUNC2(struct fwnet_packet_task *ptask)
{
	FUNC0(ptask->skb);
	FUNC1(fwnet_packet_task_cache, ptask);
}