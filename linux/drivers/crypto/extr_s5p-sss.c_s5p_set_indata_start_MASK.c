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
struct s5p_aes_dev {struct scatterlist* sg_src_cpy; int /*<<< orphan*/  dev; } ;
struct ablkcipher_request {struct scatterlist* src; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct s5p_aes_dev*,struct scatterlist**) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*) ; 
 int FUNC3 (struct s5p_aes_dev*,struct scatterlist*,struct scatterlist**) ; 
 int FUNC4 (struct s5p_aes_dev*,struct scatterlist*) ; 

__attribute__((used)) static int FUNC5(struct s5p_aes_dev *dev,
				struct ablkcipher_request *req)
{
	struct scatterlist *sg;
	int err;

	dev->sg_src_cpy = NULL;
	sg = req->src;
	if (!FUNC2(sg)) {
		FUNC0(dev->dev,
			"At least one unaligned source scatter list, making a copy\n");
		err = FUNC3(dev, sg, &dev->sg_src_cpy);
		if (err)
			return err;

		sg = dev->sg_src_cpy;
	}

	err = FUNC4(dev, sg);
	if (err) {
		FUNC1(dev, &dev->sg_src_cpy);
		return err;
	}

	return 0;
}