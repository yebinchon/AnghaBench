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
struct scatterlist {int dummy; } ;
struct scatter_walk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scatter_walk*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (void*,struct scatter_walk*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct scatter_walk*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct scatter_walk*,struct scatterlist*) ; 

__attribute__((used)) static void FUNC4(void *buf, struct scatterlist *sg,
			unsigned int start, unsigned int nbytes, int out)
{
	struct scatter_walk walk;

	if (!nbytes)
		return;

	FUNC3(&walk, sg);
	FUNC0(&walk, start);
	FUNC1(buf, &walk, nbytes, out);
	FUNC2(&walk, out, 0);
}