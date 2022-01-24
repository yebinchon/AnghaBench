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
typedef  unsigned int u32 ;
struct scatterlist {unsigned int length; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,unsigned int,unsigned int) ; 
 struct scatterlist* FUNC1 (struct scatterlist*) ; 

__attribute__((used)) static unsigned int FUNC2(struct device *dev,
				     struct scatterlist *sg_list,
				     unsigned int nbytes, u32 *lbytes)
{
	unsigned int nents = 0;

	while (nbytes && sg_list) {
		nents++;
		/* get the number of bytes in the last entry */
		*lbytes = nbytes;
		nbytes -= (sg_list->length > nbytes) ?
				nbytes : sg_list->length;
		sg_list = FUNC1(sg_list);
	}
	FUNC0(dev, "nents %d last bytes %d\n", nents, *lbytes);
	return nents;
}