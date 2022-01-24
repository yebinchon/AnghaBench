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
struct saa7146_vv {scalar_t__ current_hps_sync; scalar_t__ last_field; } ;
struct saa7146_dev {struct saa7146_vv* vv_data; } ;

/* Variables and functions */
 unsigned long CMD_E_FID_A ; 
 unsigned long CMD_E_FID_B ; 
 int CMD_INTERRUPT ; 
 unsigned long CMD_OAN ; 
 unsigned long CMD_O_FID_A ; 
 unsigned long CMD_O_FID_B ; 
 unsigned long CMD_PAUSE ; 
 unsigned long CMD_SIG0 ; 
 int CMD_STOP ; 
 int CMD_WR_REG ; 
 int CMD_WR_REG_MASK ; 
 int MASK_04 ; 
 int MASK_05 ; 
 int MASK_06 ; 
 unsigned long MASK_09 ; 
 unsigned long MASK_10 ; 
 int MASK_11 ; 
 int MASK_20 ; 
 int MASK_21 ; 
 int MASK_22 ; 
 int MASK_27 ; 
 int MC1 ; 
 int MC2 ; 
 scalar_t__ SAA7146_HPS_SYNC_PORT_A ; 
 scalar_t__ V4L2_FIELD_BOTTOM ; 
 scalar_t__ V4L2_FIELD_INTERLACED ; 
 scalar_t__ V4L2_FIELD_TOP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(struct saa7146_dev *dev, int planar)
{
	struct saa7146_vv *vv = dev->vv_data;
	int count = 0;

	unsigned long e_wait = vv->current_hps_sync == SAA7146_HPS_SYNC_PORT_A ? CMD_E_FID_A : CMD_E_FID_B;
	unsigned long o_wait = vv->current_hps_sync == SAA7146_HPS_SYNC_PORT_A ? CMD_O_FID_A : CMD_O_FID_B;

	/* wait for o_fid_a/b / e_fid_a/b toggle only if rps register 0 is not set*/
	FUNC0(CMD_PAUSE | CMD_OAN | CMD_SIG0 | o_wait);
	FUNC0(CMD_PAUSE | CMD_OAN | CMD_SIG0 | e_wait);

	/* set rps register 0 */
	FUNC0(CMD_WR_REG | (1 << 8) | (MC2/4));
	FUNC0(MASK_27 | MASK_11);

	/* turn on video-dma1 */
	FUNC0(CMD_WR_REG_MASK | (MC1/4));
	FUNC0(MASK_06 | MASK_22);			/* => mask */
	FUNC0(MASK_06 | MASK_22);			/* => values */
	if( 0 != planar ) {
		/* turn on video-dma2 */
		FUNC0(CMD_WR_REG_MASK | (MC1/4));
		FUNC0(MASK_05 | MASK_21);			/* => mask */
		FUNC0(MASK_05 | MASK_21);			/* => values */

		/* turn on video-dma3 */
		FUNC0(CMD_WR_REG_MASK | (MC1/4));
		FUNC0(MASK_04 | MASK_20);			/* => mask */
		FUNC0(MASK_04 | MASK_20);			/* => values */
	}

	/* wait for o_fid_a/b / e_fid_a/b toggle */
	if ( vv->last_field == V4L2_FIELD_INTERLACED ) {
		FUNC0(CMD_PAUSE | o_wait);
		FUNC0(CMD_PAUSE | e_wait);
	} else if ( vv->last_field == V4L2_FIELD_TOP ) {
		FUNC0(CMD_PAUSE | (vv->current_hps_sync == SAA7146_HPS_SYNC_PORT_A ? MASK_10 : MASK_09));
		FUNC0(CMD_PAUSE | o_wait);
	} else if ( vv->last_field == V4L2_FIELD_BOTTOM ) {
		FUNC0(CMD_PAUSE | (vv->current_hps_sync == SAA7146_HPS_SYNC_PORT_A ? MASK_10 : MASK_09));
		FUNC0(CMD_PAUSE | e_wait);
	}

	/* turn off video-dma1 */
	FUNC0(CMD_WR_REG_MASK | (MC1/4));
	FUNC0(MASK_22 | MASK_06);			/* => mask */
	FUNC0(MASK_22);				/* => values */
	if( 0 != planar ) {
		/* turn off video-dma2 */
		FUNC0(CMD_WR_REG_MASK | (MC1/4));
		FUNC0(MASK_05 | MASK_21);			/* => mask */
		FUNC0(MASK_21);				/* => values */

		/* turn off video-dma3 */
		FUNC0(CMD_WR_REG_MASK | (MC1/4));
		FUNC0(MASK_04 | MASK_20);			/* => mask */
		FUNC0(MASK_20);				/* => values */
	}

	/* generate interrupt */
	FUNC0(CMD_INTERRUPT);

	/* stop */
	FUNC0(CMD_STOP);
}