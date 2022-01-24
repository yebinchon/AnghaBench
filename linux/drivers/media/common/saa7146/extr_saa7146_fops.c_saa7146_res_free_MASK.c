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
struct saa7146_vv {unsigned int resources; } ;
struct saa7146_fh {unsigned int resources; struct saa7146_dev* dev; } ;
struct saa7146_dev {struct saa7146_vv* vv_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,unsigned int) ; 

void FUNC2(struct saa7146_fh *fh, unsigned int bits)
{
	struct saa7146_dev *dev = fh->dev;
	struct saa7146_vv *vv = dev->vv_data;

	FUNC0((fh->resources & bits) != bits);

	fh->resources &= ~bits;
	vv->resources &= ~bits;
	FUNC1("res: put 0x%02x, cur:0x%02x\n", bits, vv->resources);
}