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
struct n2_crypto {int /*<<< orphan*/  cwq_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct n2_crypto* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct n2_crypto *FUNC2(void)
{
	struct n2_crypto *np = FUNC1(sizeof(struct n2_crypto), GFP_KERNEL);

	if (np)
		FUNC0(&np->cwq_list);

	return np;
}