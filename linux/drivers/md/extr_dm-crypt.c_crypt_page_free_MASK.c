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
struct crypt_config {int /*<<< orphan*/  n_allocated_pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(void *page, void *pool_data)
{
	struct crypt_config *cc = pool_data;

	FUNC0(page);
	FUNC1(&cc->n_allocated_pages, 1);
}