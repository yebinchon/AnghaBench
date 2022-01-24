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
struct iova_fq {unsigned int tail; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 unsigned int IOVA_FQ_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline unsigned FUNC1(struct iova_fq *fq)
{
	unsigned idx = fq->tail;

	FUNC0(&fq->lock);

	fq->tail = (idx + 1) % IOVA_FQ_SIZE;

	return idx;
}