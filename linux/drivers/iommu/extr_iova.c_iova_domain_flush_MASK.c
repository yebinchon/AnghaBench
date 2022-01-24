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
struct iova_domain {int /*<<< orphan*/  fq_flush_finish_cnt; int /*<<< orphan*/  (* flush_cb ) (struct iova_domain*) ;int /*<<< orphan*/  fq_flush_start_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct iova_domain*) ; 

__attribute__((used)) static void FUNC2(struct iova_domain *iovad)
{
	FUNC0(&iovad->fq_flush_start_cnt);
	iovad->flush_cb(iovad);
	FUNC0(&iovad->fq_flush_finish_cnt);
}