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
struct s5p_aes_dev {int /*<<< orphan*/  hash_sg_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FCHRDMAL ; 
 int /*<<< orphan*/  FCHRDMAS ; 
 int /*<<< orphan*/  FUNC0 (struct s5p_aes_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct scatterlist const*) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist const*) ; 

__attribute__((used)) static void FUNC3(struct s5p_aes_dev *dev,
				 const struct scatterlist *sg)
{
	dev->hash_sg_cnt--;
	FUNC0(dev, FCHRDMAS, FUNC1(sg));
	FUNC0(dev, FCHRDMAL, FUNC2(sg)); /* DMA starts */
}