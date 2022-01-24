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
typedef  int uint32_t ;
struct TYPE_3__ {int CLK_GATING_DISABLED; } ;
struct TYPE_4__ {TYPE_1__ bits; } ;
struct compressor {int /*<<< orphan*/  ctx; int /*<<< orphan*/  min_compress_ratio; TYPE_2__ options; } ;

/* Variables and functions */
 int /*<<< orphan*/  FBC_CNTL ; 
 int /*<<< orphan*/  FBC_COHERENCY_MODE ; 
 int /*<<< orphan*/  FBC_COMPRESS_RATIO_1TO1 ; 
 int /*<<< orphan*/  FBC_COMP_CLK_GATE_EN ; 
 int /*<<< orphan*/  FBC_COMP_CNTL ; 
 int /*<<< orphan*/  FBC_COMP_MODE ; 
 int /*<<< orphan*/  FBC_DEPTH_RGB08_EN ; 
 int /*<<< orphan*/  FBC_DPCM4_RGB_EN ; 
 int /*<<< orphan*/  FBC_EN ; 
 int /*<<< orphan*/  FBC_GRPH_COMP_EN ; 
 int /*<<< orphan*/  FBC_IND_EN ; 
 int /*<<< orphan*/  FBC_MIN_COMPRESSION ; 
 int /*<<< orphan*/  FBC_RLE_EN ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int mmFBC_CNTL ; 
 int mmFBC_COMP_CNTL ; 
 int mmFBC_COMP_MODE ; 
 int mmFBC_IND_LUT0 ; 
 int mmFBC_IND_LUT1 ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct compressor *compressor)
{
	uint32_t value;
	uint32_t addr;

	addr = mmFBC_CNTL;
	value = FUNC0(compressor->ctx, addr);
	FUNC2(value, 0, FBC_CNTL, FBC_GRPH_COMP_EN);
	FUNC2(value, 1, FBC_CNTL, FBC_EN);
	FUNC2(value, 2, FBC_CNTL, FBC_COHERENCY_MODE);
	if (compressor->options.bits.CLK_GATING_DISABLED == 1) {
		/* HW needs to do power measurement comparison. */
		FUNC2(
			value,
			0,
			FBC_CNTL,
			FBC_COMP_CLK_GATE_EN);
	}
	FUNC1(compressor->ctx, addr, value);

	addr = mmFBC_COMP_MODE;
	value = FUNC0(compressor->ctx, addr);
	FUNC2(value, 1, FBC_COMP_MODE, FBC_RLE_EN);
	FUNC2(value, 1, FBC_COMP_MODE, FBC_DPCM4_RGB_EN);
	FUNC2(value, 1, FBC_COMP_MODE, FBC_IND_EN);
	FUNC1(compressor->ctx, addr, value);

	addr = mmFBC_COMP_CNTL;
	value = FUNC0(compressor->ctx, addr);
	FUNC2(value, 1, FBC_COMP_CNTL, FBC_DEPTH_RGB08_EN);
	FUNC1(compressor->ctx, addr, value);
	/*FBC_MIN_COMPRESSION 0 ==> 2:1 */
	/*                    1 ==> 4:1 */
	/*                    2 ==> 8:1 */
	/*                  0xF ==> 1:1 */
	FUNC2(value, 0xF, FBC_COMP_CNTL, FBC_MIN_COMPRESSION);
	FUNC1(compressor->ctx, addr, value);
	compressor->min_compress_ratio = FBC_COMPRESS_RATIO_1TO1;

	value = 0;
	FUNC1(compressor->ctx, mmFBC_IND_LUT0, value);

	value = 0xFFFFFF;
	FUNC1(compressor->ctx, mmFBC_IND_LUT1, value);
}