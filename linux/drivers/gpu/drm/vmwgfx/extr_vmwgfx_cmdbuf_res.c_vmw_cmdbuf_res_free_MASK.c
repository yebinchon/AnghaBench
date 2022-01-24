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
struct vmw_cmdbuf_res_manager {int /*<<< orphan*/  resources; } ;
struct vmw_cmdbuf_res {int /*<<< orphan*/  res; int /*<<< orphan*/  hash; int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct vmw_cmdbuf_res*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct vmw_cmdbuf_res_manager *man,
				struct vmw_cmdbuf_res *entry)
{
	FUNC3(&entry->head);
	FUNC0(FUNC1(&man->resources, &entry->hash));
	FUNC4(&entry->res);
	FUNC2(entry);
}