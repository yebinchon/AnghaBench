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
struct usnic_vnic_res_chunk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usnic_vnic_res_chunk**) ; 
 int /*<<< orphan*/  FUNC1 (struct usnic_vnic_res_chunk*) ; 

__attribute__((used)) static void FUNC2(struct usnic_vnic_res_chunk **res_chunk_list)
{
	int i;
	for (i = 0; res_chunk_list[i]; i++)
		FUNC1(res_chunk_list[i]);
	FUNC0(res_chunk_list);
}