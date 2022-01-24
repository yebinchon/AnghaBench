#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct scatterlist {int dummy; } ;
struct s5p_aes_dev {TYPE_1__* req; } ;
struct TYPE_2__ {int /*<<< orphan*/  nbytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  AES_BLOCK_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct scatterlist*) ; 
 scalar_t__ FUNC4 (struct scatterlist*) ; 

__attribute__((used)) static void FUNC5(struct s5p_aes_dev *dev, struct scatterlist **sg)
{
	int len;

	if (!*sg)
		return;

	len = FUNC0(dev->req->nbytes, AES_BLOCK_SIZE);
	FUNC1((unsigned long)FUNC4(*sg), FUNC2(len));

	FUNC3(*sg);
	*sg = NULL;
}