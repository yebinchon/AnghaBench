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
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t u32 ;
struct i40iw_dev_hw_stats {int /*<<< orphan*/ * stats_value_32; int /*<<< orphan*/ * stats_value_64; } ;
struct i40iw_dev_hw_stats_offsets {size_t* stats_offset_32; size_t* stats_offset_64; } ;
struct i40iw_vsi_pestat {TYPE_1__* hw; struct i40iw_dev_hw_stats last_read_hw_stats; struct i40iw_dev_hw_stats_offsets hw_stats_offsets; } ;
struct TYPE_2__ {size_t hw_addr; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 size_t FUNC6 (int /*<<< orphan*/ ) ; 
 size_t FUNC7 (int /*<<< orphan*/ ) ; 
 size_t FUNC8 (int /*<<< orphan*/ ) ; 
 size_t FUNC9 (int /*<<< orphan*/ ) ; 
 size_t FUNC10 (int /*<<< orphan*/ ) ; 
 size_t FUNC11 (int /*<<< orphan*/ ) ; 
 size_t FUNC12 (int /*<<< orphan*/ ) ; 
 size_t FUNC13 (int /*<<< orphan*/ ) ; 
 size_t FUNC14 (int /*<<< orphan*/ ) ; 
 size_t FUNC15 (int /*<<< orphan*/ ) ; 
 size_t FUNC16 (int /*<<< orphan*/ ) ; 
 size_t FUNC17 (int /*<<< orphan*/ ) ; 
 size_t FUNC18 (int /*<<< orphan*/ ) ; 
 size_t FUNC19 (int /*<<< orphan*/ ) ; 
 void* FUNC20 (int /*<<< orphan*/ ) ; 
 size_t FUNC21 (int /*<<< orphan*/ ) ; 
 size_t FUNC22 (int /*<<< orphan*/ ) ; 
 size_t FUNC23 (int /*<<< orphan*/ ) ; 
 size_t FUNC24 (int /*<<< orphan*/ ) ; 
 size_t FUNC25 (int /*<<< orphan*/ ) ; 
 size_t FUNC26 (int /*<<< orphan*/ ) ; 
 size_t FUNC27 (int /*<<< orphan*/ ) ; 
 size_t FUNC28 (int /*<<< orphan*/ ) ; 
 size_t FUNC29 (int /*<<< orphan*/ ) ; 
 size_t FUNC30 (int /*<<< orphan*/ ) ; 
 size_t FUNC31 (int /*<<< orphan*/ ) ; 
 size_t FUNC32 (int /*<<< orphan*/ ) ; 
 size_t FUNC33 (int /*<<< orphan*/ ) ; 
 size_t FUNC34 (int /*<<< orphan*/ ) ; 
 size_t FUNC35 (int /*<<< orphan*/ ) ; 
 size_t FUNC36 (int /*<<< orphan*/ ) ; 
 size_t FUNC37 (int /*<<< orphan*/ ) ; 
 size_t FUNC38 (int /*<<< orphan*/ ) ; 
 size_t FUNC39 (int /*<<< orphan*/ ) ; 
 size_t FUNC40 (int /*<<< orphan*/ ) ; 
 size_t FUNC41 (int /*<<< orphan*/ ) ; 
 size_t FUNC42 (int /*<<< orphan*/ ) ; 
 size_t FUNC43 (int /*<<< orphan*/ ) ; 
 size_t FUNC44 (int /*<<< orphan*/ ) ; 
 size_t FUNC45 (int /*<<< orphan*/ ) ; 
 size_t FUNC46 (int /*<<< orphan*/ ) ; 
 size_t FUNC47 (int /*<<< orphan*/ ) ; 
 size_t FUNC48 (int /*<<< orphan*/ ) ; 
 size_t FUNC49 (int /*<<< orphan*/ ) ; 
 size_t FUNC50 (int /*<<< orphan*/ ) ; 
 size_t FUNC51 (int /*<<< orphan*/ ) ; 
 size_t FUNC52 (int /*<<< orphan*/ ) ; 
 size_t FUNC53 (int /*<<< orphan*/ ) ; 
 void* FUNC54 (int /*<<< orphan*/ ) ; 
 size_t FUNC55 (int /*<<< orphan*/ ) ; 
 size_t FUNC56 (int /*<<< orphan*/ ) ; 
 size_t FUNC57 (int /*<<< orphan*/ ) ; 
 size_t FUNC58 (int /*<<< orphan*/ ) ; 
 size_t FUNC59 (int /*<<< orphan*/ ) ; 
 size_t FUNC60 (int /*<<< orphan*/ ) ; 
 size_t FUNC61 (int /*<<< orphan*/ ) ; 
 size_t FUNC62 (int /*<<< orphan*/ ) ; 
 size_t FUNC63 (int /*<<< orphan*/ ) ; 
 size_t FUNC64 (int /*<<< orphan*/ ) ; 
 size_t FUNC65 (int /*<<< orphan*/ ) ; 
 size_t FUNC66 (int /*<<< orphan*/ ) ; 
 size_t FUNC67 (int /*<<< orphan*/ ) ; 
 size_t I40IW_HW_STAT_INDEX_IP4RXDISCARD ; 
 size_t I40IW_HW_STAT_INDEX_IP4RXFRAGS ; 
 size_t I40IW_HW_STAT_INDEX_IP4RXMCPKTS ; 
 size_t I40IW_HW_STAT_INDEX_IP4RXOCTS ; 
 size_t I40IW_HW_STAT_INDEX_IP4RXPKTS ; 
 size_t I40IW_HW_STAT_INDEX_IP4RXTRUNC ; 
 size_t I40IW_HW_STAT_INDEX_IP4TXFRAGS ; 
 size_t I40IW_HW_STAT_INDEX_IP4TXMCPKTS ; 
 size_t I40IW_HW_STAT_INDEX_IP4TXNOROUTE ; 
 size_t I40IW_HW_STAT_INDEX_IP4TXOCTS ; 
 size_t I40IW_HW_STAT_INDEX_IP4TXPKTS ; 
 size_t I40IW_HW_STAT_INDEX_IP6RXDISCARD ; 
 size_t I40IW_HW_STAT_INDEX_IP6RXFRAGS ; 
 size_t I40IW_HW_STAT_INDEX_IP6RXMCPKTS ; 
 size_t I40IW_HW_STAT_INDEX_IP6RXOCTS ; 
 size_t I40IW_HW_STAT_INDEX_IP6RXPKTS ; 
 size_t I40IW_HW_STAT_INDEX_IP6RXTRUNC ; 
 size_t I40IW_HW_STAT_INDEX_IP6TXFRAGS ; 
 size_t I40IW_HW_STAT_INDEX_IP6TXNOROUTE ; 
 size_t I40IW_HW_STAT_INDEX_IP6TXOCTS ; 
 size_t I40IW_HW_STAT_INDEX_IP6TXPKTS ; 
 size_t I40IW_HW_STAT_INDEX_MAX_32 ; 
 size_t I40IW_HW_STAT_INDEX_MAX_64 ; 
 size_t I40IW_HW_STAT_INDEX_RDMARXRDS ; 
 size_t I40IW_HW_STAT_INDEX_RDMARXSNDS ; 
 size_t I40IW_HW_STAT_INDEX_RDMARXWRS ; 
 size_t I40IW_HW_STAT_INDEX_RDMATXRDS ; 
 size_t I40IW_HW_STAT_INDEX_RDMATXSNDS ; 
 size_t I40IW_HW_STAT_INDEX_RDMATXWRS ; 
 size_t I40IW_HW_STAT_INDEX_RDMAVBND ; 
 size_t I40IW_HW_STAT_INDEX_RDMAVINV ; 
 size_t I40IW_HW_STAT_INDEX_TCPRTXSEG ; 
 size_t I40IW_HW_STAT_INDEX_TCPRXOPTERR ; 
 size_t I40IW_HW_STAT_INDEX_TCPRXPROTOERR ; 
 size_t I40IW_HW_STAT_INDEX_TCPRXSEGS ; 
 size_t I40IW_HW_STAT_INDEX_TCPTXSEG ; 
 int /*<<< orphan*/  FUNC68 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC69 (size_t) ; 

void FUNC70(struct i40iw_vsi_pestat *stats, u8 fcn_idx, bool is_pf)
{
	u32 stats_reg_offset;
	u32 stats_index;
	struct i40iw_dev_hw_stats_offsets *stats_table =
		&stats->hw_stats_offsets;
	struct i40iw_dev_hw_stats *last_rd_stats = &stats->last_read_hw_stats;

	if (is_pf) {
		stats_table->stats_offset_32[I40IW_HW_STAT_INDEX_IP4RXDISCARD] =
				FUNC0(fcn_idx);
		stats_table->stats_offset_32[I40IW_HW_STAT_INDEX_IP4RXTRUNC] =
				FUNC5(fcn_idx);
		stats_table->stats_offset_32[I40IW_HW_STAT_INDEX_IP4TXNOROUTE] =
				FUNC8(fcn_idx);
		stats_table->stats_offset_32[I40IW_HW_STAT_INDEX_IP6RXDISCARD] =
				FUNC11(fcn_idx);
		stats_table->stats_offset_32[I40IW_HW_STAT_INDEX_IP6RXTRUNC] =
				FUNC16(fcn_idx);
		stats_table->stats_offset_32[I40IW_HW_STAT_INDEX_IP6TXNOROUTE] =
				FUNC18(fcn_idx);
		stats_table->stats_offset_32[I40IW_HW_STAT_INDEX_TCPRTXSEG] =
				FUNC29(fcn_idx);
		stats_table->stats_offset_32[I40IW_HW_STAT_INDEX_TCPRXOPTERR] =
				FUNC30(fcn_idx);
		stats_table->stats_offset_32[I40IW_HW_STAT_INDEX_TCPRXPROTOERR] =
				FUNC31(fcn_idx);

		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP4RXOCTS] =
				FUNC3(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP4RXPKTS] =
				FUNC4(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP4RXFRAGS] =
				FUNC1(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP4RXMCPKTS] =
				FUNC2(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP4TXOCTS] =
				FUNC9(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP4TXPKTS] =
				FUNC10(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP4TXFRAGS] =
				FUNC6(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP4TXMCPKTS] =
				FUNC7(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP6RXOCTS] =
				FUNC14(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP6RXPKTS] =
				FUNC15(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP6RXFRAGS] =
				FUNC12(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP6RXMCPKTS] =
				FUNC13(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP6TXOCTS] =
				FUNC19(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP6TXPKTS] =
				FUNC20(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP6TXPKTS] =
				FUNC20(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP6TXFRAGS] =
				FUNC17(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_TCPRXSEGS] =
				FUNC32(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_TCPTXSEG] =
				FUNC33(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_RDMARXRDS] =
				FUNC21(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_RDMARXSNDS] =
				FUNC22(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_RDMARXWRS] =
				FUNC23(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_RDMATXRDS] =
				FUNC24(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_RDMATXSNDS] =
				FUNC25(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_RDMATXWRS] =
				FUNC26(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_RDMAVBND] =
				FUNC27(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_RDMAVINV] =
				FUNC28(fcn_idx);
	} else {
		stats_table->stats_offset_32[I40IW_HW_STAT_INDEX_IP4RXDISCARD] =
				FUNC34(fcn_idx);
		stats_table->stats_offset_32[I40IW_HW_STAT_INDEX_IP4RXTRUNC] =
				FUNC39(fcn_idx);
		stats_table->stats_offset_32[I40IW_HW_STAT_INDEX_IP4TXNOROUTE] =
				FUNC42(fcn_idx);
		stats_table->stats_offset_32[I40IW_HW_STAT_INDEX_IP6RXDISCARD] =
				FUNC45(fcn_idx);
		stats_table->stats_offset_32[I40IW_HW_STAT_INDEX_IP6RXTRUNC] =
				FUNC50(fcn_idx);
		stats_table->stats_offset_32[I40IW_HW_STAT_INDEX_IP6TXNOROUTE] =
				FUNC52(fcn_idx);
		stats_table->stats_offset_32[I40IW_HW_STAT_INDEX_TCPRTXSEG] =
				FUNC63(fcn_idx);
		stats_table->stats_offset_32[I40IW_HW_STAT_INDEX_TCPRXOPTERR] =
				FUNC64(fcn_idx);
		stats_table->stats_offset_32[I40IW_HW_STAT_INDEX_TCPRXPROTOERR] =
				FUNC65(fcn_idx);

		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP4RXOCTS] =
				FUNC37(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP4RXPKTS] =
				FUNC38(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP4RXFRAGS] =
				FUNC35(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP4RXMCPKTS] =
				FUNC36(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP4TXOCTS] =
				FUNC43(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP4TXPKTS] =
				FUNC44(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP4TXFRAGS] =
				FUNC40(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP4TXMCPKTS] =
				FUNC41(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP6RXOCTS] =
				FUNC48(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP6RXPKTS] =
				FUNC49(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP6RXFRAGS] =
				FUNC46(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP6RXMCPKTS] =
				FUNC47(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP6TXOCTS] =
				FUNC53(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP6TXPKTS] =
				FUNC54(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP6TXPKTS] =
				FUNC54(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP6TXFRAGS] =
				FUNC51(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_TCPRXSEGS] =
				FUNC66(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_TCPTXSEG] =
				FUNC67(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_RDMARXRDS] =
				FUNC55(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_RDMARXSNDS] =
				FUNC56(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_RDMARXWRS] =
				FUNC57(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_RDMATXRDS] =
				FUNC58(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_RDMATXSNDS] =
				FUNC59(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_RDMATXWRS] =
				FUNC60(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_RDMAVBND] =
				FUNC61(fcn_idx);
		stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_RDMAVINV] =
				FUNC62(fcn_idx);
	}

	for (stats_index = 0; stats_index < I40IW_HW_STAT_INDEX_MAX_64;
	     stats_index++) {
		stats_reg_offset = stats_table->stats_offset_64[stats_index];
		last_rd_stats->stats_value_64[stats_index] =
			FUNC69(stats->hw->hw_addr + stats_reg_offset);
	}

	for (stats_index = 0; stats_index < I40IW_HW_STAT_INDEX_MAX_32;
	     stats_index++) {
		stats_reg_offset = stats_table->stats_offset_32[stats_index];
		last_rd_stats->stats_value_32[stats_index] =
			FUNC68(stats->hw, stats_reg_offset);
	}
}