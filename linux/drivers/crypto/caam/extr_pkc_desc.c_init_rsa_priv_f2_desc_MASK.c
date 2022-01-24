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
typedef  int /*<<< orphan*/  u32 ;
struct rsa_priv_f2_pdb {int /*<<< orphan*/  p_q_len; int /*<<< orphan*/  tmp2_dma; int /*<<< orphan*/  tmp1_dma; int /*<<< orphan*/  q_dma; int /*<<< orphan*/  p_dma; int /*<<< orphan*/  d_dma; int /*<<< orphan*/  f_dma; int /*<<< orphan*/  g_dma; int /*<<< orphan*/  sgf; } ;

/* Variables and functions */
 int OP_PCLID_RSADEC_PRVKEY ; 
 int OP_TYPE_UNI_PROTOCOL ; 
 int RSA_PRIV_KEY_FRM_2 ; 
 int /*<<< orphan*/  SIZEOF_RSA_PRIV_F2_PDB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(u32 *desc, struct rsa_priv_f2_pdb *pdb)
{
	FUNC3(desc, 0, SIZEOF_RSA_PRIV_F2_PDB);
	FUNC0(desc, pdb->sgf);
	FUNC2(desc, pdb->g_dma);
	FUNC2(desc, pdb->f_dma);
	FUNC2(desc, pdb->d_dma);
	FUNC2(desc, pdb->p_dma);
	FUNC2(desc, pdb->q_dma);
	FUNC2(desc, pdb->tmp1_dma);
	FUNC2(desc, pdb->tmp2_dma);
	FUNC0(desc, pdb->p_q_len);
	FUNC1(desc, OP_TYPE_UNI_PROTOCOL | OP_PCLID_RSADEC_PRVKEY |
			 RSA_PRIV_KEY_FRM_2);
}