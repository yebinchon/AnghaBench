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
struct timer_list {int dummy; } ;
struct artpec6_crypto {int /*<<< orphan*/  task; } ;

/* Variables and functions */
 struct artpec6_crypto* ac ; 
 int /*<<< orphan*/  artpec6_crypto_dev ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct artpec6_crypto* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC3(struct timer_list *t)
{
	struct artpec6_crypto *ac = FUNC1(ac, t, timer);

	FUNC0(artpec6_crypto_dev, "timeout\n");

	FUNC2(&ac->task);
}