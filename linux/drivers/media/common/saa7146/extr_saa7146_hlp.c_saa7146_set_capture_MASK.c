#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct saa7146_vv {scalar_t__ last_field; } ;
struct saa7146_format {int /*<<< orphan*/  trans; } ;
struct TYPE_4__ {int dma_handle; } ;
struct saa7146_dev {TYPE_2__ d_rps0; struct saa7146_vv* vv_data; } ;
struct saa7146_buf {TYPE_1__* fmt; } ;
struct TYPE_3__ {int /*<<< orphan*/  field; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  pixelformat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int MASK_12 ; 
 int MASK_27 ; 
 int MASK_28 ; 
 int /*<<< orphan*/  MC1 ; 
 int /*<<< orphan*/  MC2 ; 
 int /*<<< orphan*/  PROT_ADDR1 ; 
 int /*<<< orphan*/  RPS_ADDR0 ; 
 scalar_t__ V4L2_FIELD_BOTTOM ; 
 scalar_t__ V4L2_FIELD_INTERLACED ; 
 scalar_t__ V4L2_FIELD_TOP ; 
 int /*<<< orphan*/  FUNC2 (struct saa7146_dev*,struct saa7146_buf*) ; 
 int /*<<< orphan*/  FUNC3 (struct saa7146_dev*,struct saa7146_buf*) ; 
 int /*<<< orphan*/  FUNC4 (struct saa7146_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct saa7146_dev*) ; 
 struct saa7146_format* FUNC6 (struct saa7146_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct saa7146_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct saa7146_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct saa7146_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct saa7146_dev*,int /*<<< orphan*/ ,int) ; 

void FUNC11(struct saa7146_dev *dev, struct saa7146_buf *buf, struct saa7146_buf *next)
{
	struct saa7146_format *sfmt = FUNC6(dev,buf->fmt->pixelformat);
	struct saa7146_vv *vv = dev->vv_data;
	u32 vdma1_prot_addr;

	FUNC0("buf:%p, next:%p\n", buf, next);

	vdma1_prot_addr = FUNC7(dev, PROT_ADDR1);
	if( 0 == vdma1_prot_addr ) {
		/* clear out beginning of streaming bit (rps register 0)*/
		FUNC0("forcing sync to new frame\n");
		FUNC10(dev, MC2, MASK_27 );
	}

	FUNC9(dev, buf->fmt->width, buf->fmt->height, buf->fmt->field);
	FUNC8(dev, sfmt->trans);
	FUNC5(dev);

	if ( vv->last_field == V4L2_FIELD_INTERLACED ) {
	} else if ( vv->last_field == V4L2_FIELD_TOP ) {
		vv->last_field = V4L2_FIELD_BOTTOM;
	} else if ( vv->last_field == V4L2_FIELD_BOTTOM ) {
		vv->last_field = V4L2_FIELD_TOP;
	}

	if( 0 != FUNC1(sfmt->trans)) {
		FUNC3(dev, buf);
		FUNC4(dev,1);
	} else {
		FUNC2(dev, buf);
		FUNC4(dev,0);
	}

/*
	printk("vdma%d.base_even:     0x%08x\n", 1,saa7146_read(dev,BASE_EVEN1));
	printk("vdma%d.base_odd:      0x%08x\n", 1,saa7146_read(dev,BASE_ODD1));
	printk("vdma%d.prot_addr:     0x%08x\n", 1,saa7146_read(dev,PROT_ADDR1));
	printk("vdma%d.base_page:     0x%08x\n", 1,saa7146_read(dev,BASE_PAGE1));
	printk("vdma%d.pitch:         0x%08x\n", 1,saa7146_read(dev,PITCH1));
	printk("vdma%d.num_line_byte: 0x%08x\n", 1,saa7146_read(dev,NUM_LINE_BYTE1));
	printk("vdma%d => vptr      : 0x%08x\n", 1,saa7146_read(dev,PCI_VDP1));
*/

	/* write the address of the rps-program */
	FUNC10(dev, RPS_ADDR0, dev->d_rps0.dma_handle);

	/* turn on rps */
	FUNC10(dev, MC1, (MASK_12 | MASK_28));
}