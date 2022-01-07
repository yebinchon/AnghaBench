; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_log_hubp_states.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_log_hubp_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.resource_pool*, %struct.dc_context* }
%struct.resource_pool = type { i32, %struct.hubp** }
%struct.hubp = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.hubp*)* }
%struct.dc_context = type { i32 }
%struct.dcn_hubp_state = type { i32, %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_rq_regs_st, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._vcs_dpi_display_ttu_regs_st = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._vcs_dpi_display_dlg_regs_st = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._vcs_dpi_display_rq_regs_st = type { %struct.TYPE_7__, %struct.TYPE_6__, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.dcn_hubp_state }

@.str = private unnamed_addr constant [147 x i8] c"HUBP:  format  addr_hi  width  height  rot  mir  sw_mode  dcc_en  blank_en  ttu_dis  underflow   min_ttu_vblank       qos_low_wm      qos_high_wm\0A\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"[%2d]:  %5xh  %6xh  %5d  %6d  %2xh  %2xh  %6xh  %6d  %8d  %7d  %8xh\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"\0A=========RQ========\0A\00", align 1
@.str.4 = private unnamed_addr constant [238 x i8] c"HUBP:  drq_exp_m  prq_exp_m  mrq_exp_m  crq_exp_m  plane1_ba  L:chunk_s  min_chu_s  meta_ch_s  min_m_c_s  dpte_gr_s  mpte_gr_s  swath_hei  pte_row_h  C:chunk_s  min_chu_s  meta_ch_s  min_m_c_s  dpte_gr_s  mpte_gr_s  swath_hei  pte_row_h\0A\00", align 1
@.str.5 = private unnamed_addr constant [134 x i8] c"[%2d]:  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"========DLG========\0A\00", align 1
@.str.7 = private unnamed_addr constant [468 x i8] c"HUBP:  rc_hbe     dlg_vbe    min_d_y_n  rc_per_ht  rc_x_a_s   dst_y_a_s  dst_y_pf   dst_y_vvb  dst_y_rvb  dst_y_vfl  dst_y_rfl  rf_pix_fq  vratio_pf  vrat_pf_c  rc_pg_vbl  rc_pg_vbc  rc_mc_vbl  rc_mc_vbc  rc_pg_fll  rc_pg_flc  rc_mc_fll  rc_mc_flc  pr_nom_l   pr_nom_c   rc_pg_nl   rc_pg_nc   mr_nom_l   mr_nom_c   rc_mc_nl   rc_mc_nc   rc_ld_pl   rc_ld_pc   rc_ld_l    rc_ld_c    cha_cur0   ofst_cur1  cha_cur1   vr_af_vc0  ddrq_limt  x_rt_dlay  x_rp_dlay  x_rr_sfl\0A\00", align 1
@.str.8 = private unnamed_addr constant [260 x i8] c"[%2d]:  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh%  8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"========TTU========\0A\00", align 1
@.str.10 = private unnamed_addr constant [228 x i8] c"HUBP:  qos_ll_wm  qos_lh_wm  mn_ttu_vb  qos_l_flp  rc_rd_p_l  rc_rd_l    rc_rd_p_c  rc_rd_c    rc_rd_c0   rc_rd_pc0  rc_rd_c1   rc_rd_pc1  qos_lf_l   qos_rds_l  qos_lf_c   qos_rds_c  qos_lf_c0  qos_rds_c0 qos_lf_c1  qos_rds_c1\0A\00", align 1
@.str.11 = private unnamed_addr constant [128 x i8] c"[%2d]:  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*, i8*)* @dcn10_log_hubp_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcn10_log_hubp_states(%struct.dc* %0, i8* %1) #0 {
  %3 = alloca %struct.dc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dc_context*, align 8
  %6 = alloca %struct.resource_pool*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hubp*, align 8
  %9 = alloca %struct.dcn_hubp_state*, align 8
  %10 = alloca %struct.dcn_hubp_state*, align 8
  %11 = alloca %struct._vcs_dpi_display_rq_regs_st*, align 8
  %12 = alloca %struct.dcn_hubp_state*, align 8
  %13 = alloca %struct._vcs_dpi_display_dlg_regs_st*, align 8
  %14 = alloca %struct.dcn_hubp_state*, align 8
  %15 = alloca %struct._vcs_dpi_display_ttu_regs_st*, align 8
  store %struct.dc* %0, %struct.dc** %3, align 8
  store i8* %1, i8** %4, align 8
  %16 = load %struct.dc*, %struct.dc** %3, align 8
  %17 = getelementptr inbounds %struct.dc, %struct.dc* %16, i32 0, i32 1
  %18 = load %struct.dc_context*, %struct.dc_context** %17, align 8
  store %struct.dc_context* %18, %struct.dc_context** %5, align 8
  %19 = load %struct.dc*, %struct.dc** %3, align 8
  %20 = getelementptr inbounds %struct.dc, %struct.dc* %19, i32 0, i32 0
  %21 = load %struct.resource_pool*, %struct.resource_pool** %20, align 8
  store %struct.resource_pool* %21, %struct.resource_pool** %6, align 8
  %22 = call i32 (i8*, ...) @DTN_INFO(i8* getelementptr inbounds ([147 x i8], [147 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %103, %2
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %26 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %106

29:                                               ; preds = %23
  %30 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %31 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %30, i32 0, i32 1
  %32 = load %struct.hubp**, %struct.hubp*** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.hubp*, %struct.hubp** %32, i64 %34
  %36 = load %struct.hubp*, %struct.hubp** %35, align 8
  store %struct.hubp* %36, %struct.hubp** %8, align 8
  %37 = load %struct.hubp*, %struct.hubp** %8, align 8
  %38 = call %struct.TYPE_8__* @TO_DCN10_HUBP(%struct.hubp* %37)
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  store %struct.dcn_hubp_state* %39, %struct.dcn_hubp_state** %9, align 8
  %40 = load %struct.hubp*, %struct.hubp** %8, align 8
  %41 = getelementptr inbounds %struct.hubp, %struct.hubp* %40, i32 0, i32 1
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32 (%struct.hubp*)*, i32 (%struct.hubp*)** %43, align 8
  %45 = load %struct.hubp*, %struct.hubp** %8, align 8
  %46 = call i32 %44(%struct.hubp* %45)
  %47 = load %struct.dcn_hubp_state*, %struct.dcn_hubp_state** %9, align 8
  %48 = getelementptr inbounds %struct.dcn_hubp_state, %struct.dcn_hubp_state* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %102, label %51

51:                                               ; preds = %29
  %52 = load %struct.hubp*, %struct.hubp** %8, align 8
  %53 = getelementptr inbounds %struct.hubp, %struct.hubp* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.dcn_hubp_state*, %struct.dcn_hubp_state** %9, align 8
  %56 = getelementptr inbounds %struct.dcn_hubp_state, %struct.dcn_hubp_state* %55, i32 0, i32 16
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.dcn_hubp_state*, %struct.dcn_hubp_state** %9, align 8
  %59 = getelementptr inbounds %struct.dcn_hubp_state, %struct.dcn_hubp_state* %58, i32 0, i32 15
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.dcn_hubp_state*, %struct.dcn_hubp_state** %9, align 8
  %62 = getelementptr inbounds %struct.dcn_hubp_state, %struct.dcn_hubp_state* %61, i32 0, i32 14
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.dcn_hubp_state*, %struct.dcn_hubp_state** %9, align 8
  %65 = getelementptr inbounds %struct.dcn_hubp_state, %struct.dcn_hubp_state* %64, i32 0, i32 13
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.dcn_hubp_state*, %struct.dcn_hubp_state** %9, align 8
  %68 = getelementptr inbounds %struct.dcn_hubp_state, %struct.dcn_hubp_state* %67, i32 0, i32 12
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.dcn_hubp_state*, %struct.dcn_hubp_state** %9, align 8
  %71 = getelementptr inbounds %struct.dcn_hubp_state, %struct.dcn_hubp_state* %70, i32 0, i32 11
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.dcn_hubp_state*, %struct.dcn_hubp_state** %9, align 8
  %74 = getelementptr inbounds %struct.dcn_hubp_state, %struct.dcn_hubp_state* %73, i32 0, i32 10
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.dcn_hubp_state*, %struct.dcn_hubp_state** %9, align 8
  %77 = getelementptr inbounds %struct.dcn_hubp_state, %struct.dcn_hubp_state* %76, i32 0, i32 9
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.dcn_hubp_state*, %struct.dcn_hubp_state** %9, align 8
  %80 = getelementptr inbounds %struct.dcn_hubp_state, %struct.dcn_hubp_state* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.dcn_hubp_state*, %struct.dcn_hubp_state** %9, align 8
  %83 = getelementptr inbounds %struct.dcn_hubp_state, %struct.dcn_hubp_state* %82, i32 0, i32 8
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.dcn_hubp_state*, %struct.dcn_hubp_state** %9, align 8
  %86 = getelementptr inbounds %struct.dcn_hubp_state, %struct.dcn_hubp_state* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i8*, ...) @DTN_INFO(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %57, i32 %60, i32 %63, i32 %66, i32 %69, i32 %72, i32 %75, i32 %78, i32 %81, i32 %84, i32 %87)
  %89 = load %struct.dcn_hubp_state*, %struct.dcn_hubp_state** %9, align 8
  %90 = getelementptr inbounds %struct.dcn_hubp_state, %struct.dcn_hubp_state* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @DTN_INFO_MICRO_SEC(i32 %91)
  %93 = load %struct.dcn_hubp_state*, %struct.dcn_hubp_state** %9, align 8
  %94 = getelementptr inbounds %struct.dcn_hubp_state, %struct.dcn_hubp_state* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @DTN_INFO_MICRO_SEC(i32 %95)
  %97 = load %struct.dcn_hubp_state*, %struct.dcn_hubp_state** %9, align 8
  %98 = getelementptr inbounds %struct.dcn_hubp_state, %struct.dcn_hubp_state* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @DTN_INFO_MICRO_SEC(i32 %99)
  %101 = call i32 (i8*, ...) @DTN_INFO(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %102

102:                                              ; preds = %51, %29
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  br label %23

106:                                              ; preds = %23
  %107 = call i32 (i8*, ...) @DTN_INFO(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %108 = call i32 (i8*, ...) @DTN_INFO(i8* getelementptr inbounds ([238 x i8], [238 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %109

109:                                              ; preds = %222, %106
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %112 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %225

115:                                              ; preds = %109
  %116 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %117 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %116, i32 0, i32 1
  %118 = load %struct.hubp**, %struct.hubp*** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.hubp*, %struct.hubp** %118, i64 %120
  %122 = load %struct.hubp*, %struct.hubp** %121, align 8
  %123 = call %struct.TYPE_8__* @TO_DCN10_HUBP(%struct.hubp* %122)
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  store %struct.dcn_hubp_state* %124, %struct.dcn_hubp_state** %10, align 8
  %125 = load %struct.dcn_hubp_state*, %struct.dcn_hubp_state** %10, align 8
  %126 = getelementptr inbounds %struct.dcn_hubp_state, %struct.dcn_hubp_state* %125, i32 0, i32 3
  store %struct._vcs_dpi_display_rq_regs_st* %126, %struct._vcs_dpi_display_rq_regs_st** %11, align 8
  %127 = load %struct.dcn_hubp_state*, %struct.dcn_hubp_state** %10, align 8
  %128 = getelementptr inbounds %struct.dcn_hubp_state, %struct.dcn_hubp_state* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %221, label %131

131:                                              ; preds = %115
  %132 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %133 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %132, i32 0, i32 1
  %134 = load %struct.hubp**, %struct.hubp*** %133, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.hubp*, %struct.hubp** %134, i64 %136
  %138 = load %struct.hubp*, %struct.hubp** %137, align 8
  %139 = getelementptr inbounds %struct.hubp, %struct.hubp* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %11, align 8
  %142 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %141, i32 0, i32 6
  %143 = load i32, i32* %142, align 4
  %144 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %11, align 8
  %145 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %11, align 8
  %148 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 4
  %150 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %11, align 8
  %151 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %11, align 8
  %154 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %11, align 8
  %157 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 7
  %159 = load i32, i32* %158, align 4
  %160 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %11, align 8
  %161 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 6
  %163 = load i32, i32* %162, align 4
  %164 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %11, align 8
  %165 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 4
  %168 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %11, align 8
  %169 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 4
  %172 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %11, align 8
  %173 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %11, align 8
  %177 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %11, align 8
  %181 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %11, align 8
  %185 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %11, align 8
  %189 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 7
  %191 = load i32, i32* %190, align 4
  %192 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %11, align 8
  %193 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 6
  %195 = load i32, i32* %194, align 4
  %196 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %11, align 8
  %197 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 4
  %200 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %11, align 8
  %201 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 4
  %204 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %11, align 8
  %205 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %11, align 8
  %209 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %11, align 8
  %213 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %11, align 8
  %217 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i32 (i8*, ...) @DTN_INFO(i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str.5, i64 0, i64 0), i32 %140, i32 %143, i32 %146, i32 %149, i32 %152, i32 %155, i32 %159, i32 %163, i32 %167, i32 %171, i32 %175, i32 %179, i32 %183, i32 %187, i32 %191, i32 %195, i32 %199, i32 %203, i32 %207, i32 %211, i32 %215, i32 %219)
  br label %221

221:                                              ; preds = %131, %115
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %7, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %7, align 4
  br label %109

225:                                              ; preds = %109
  %226 = call i32 (i8*, ...) @DTN_INFO(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %227 = call i32 (i8*, ...) @DTN_INFO(i8* getelementptr inbounds ([468 x i8], [468 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %228

228:                                              ; preds = %388, %225
  %229 = load i32, i32* %7, align 4
  %230 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %231 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = icmp slt i32 %229, %232
  br i1 %233, label %234, label %391

234:                                              ; preds = %228
  %235 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %236 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %235, i32 0, i32 1
  %237 = load %struct.hubp**, %struct.hubp*** %236, align 8
  %238 = load i32, i32* %7, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.hubp*, %struct.hubp** %237, i64 %239
  %241 = load %struct.hubp*, %struct.hubp** %240, align 8
  %242 = call %struct.TYPE_8__* @TO_DCN10_HUBP(%struct.hubp* %241)
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 0
  store %struct.dcn_hubp_state* %243, %struct.dcn_hubp_state** %12, align 8
  %244 = load %struct.dcn_hubp_state*, %struct.dcn_hubp_state** %12, align 8
  %245 = getelementptr inbounds %struct.dcn_hubp_state, %struct.dcn_hubp_state* %244, i32 0, i32 2
  store %struct._vcs_dpi_display_dlg_regs_st* %245, %struct._vcs_dpi_display_dlg_regs_st** %13, align 8
  %246 = load %struct.dcn_hubp_state*, %struct.dcn_hubp_state** %12, align 8
  %247 = getelementptr inbounds %struct.dcn_hubp_state, %struct.dcn_hubp_state* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %387, label %250

250:                                              ; preds = %234
  %251 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %252 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %251, i32 0, i32 1
  %253 = load %struct.hubp**, %struct.hubp*** %252, align 8
  %254 = load i32, i32* %7, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.hubp*, %struct.hubp** %253, i64 %255
  %257 = load %struct.hubp*, %struct.hubp** %256, align 8
  %258 = getelementptr inbounds %struct.hubp, %struct.hubp* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %13, align 8
  %261 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %260, i32 0, i32 41
  %262 = load i32, i32* %261, align 4
  %263 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %13, align 8
  %264 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %263, i32 0, i32 40
  %265 = load i32, i32* %264, align 4
  %266 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %13, align 8
  %267 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %266, i32 0, i32 39
  %268 = load i32, i32* %267, align 4
  %269 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %13, align 8
  %270 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %269, i32 0, i32 38
  %271 = load i32, i32* %270, align 4
  %272 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %13, align 8
  %273 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %272, i32 0, i32 37
  %274 = load i32, i32* %273, align 4
  %275 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %13, align 8
  %276 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %275, i32 0, i32 36
  %277 = load i32, i32* %276, align 4
  %278 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %13, align 8
  %279 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %278, i32 0, i32 35
  %280 = load i32, i32* %279, align 4
  %281 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %13, align 8
  %282 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %281, i32 0, i32 34
  %283 = load i32, i32* %282, align 4
  %284 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %13, align 8
  %285 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %284, i32 0, i32 33
  %286 = load i32, i32* %285, align 4
  %287 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %13, align 8
  %288 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %287, i32 0, i32 32
  %289 = load i32, i32* %288, align 4
  %290 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %13, align 8
  %291 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %290, i32 0, i32 31
  %292 = load i32, i32* %291, align 4
  %293 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %13, align 8
  %294 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %293, i32 0, i32 30
  %295 = load i32, i32* %294, align 4
  %296 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %13, align 8
  %297 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %296, i32 0, i32 29
  %298 = load i32, i32* %297, align 4
  %299 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %13, align 8
  %300 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %299, i32 0, i32 28
  %301 = load i32, i32* %300, align 4
  %302 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %13, align 8
  %303 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %302, i32 0, i32 27
  %304 = load i32, i32* %303, align 4
  %305 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %13, align 8
  %306 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %305, i32 0, i32 26
  %307 = load i32, i32* %306, align 4
  %308 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %13, align 8
  %309 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %308, i32 0, i32 25
  %310 = load i32, i32* %309, align 4
  %311 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %13, align 8
  %312 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %311, i32 0, i32 24
  %313 = load i32, i32* %312, align 4
  %314 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %13, align 8
  %315 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %314, i32 0, i32 23
  %316 = load i32, i32* %315, align 4
  %317 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %13, align 8
  %318 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %317, i32 0, i32 22
  %319 = load i32, i32* %318, align 4
  %320 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %13, align 8
  %321 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %320, i32 0, i32 21
  %322 = load i32, i32* %321, align 4
  %323 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %13, align 8
  %324 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %323, i32 0, i32 20
  %325 = load i32, i32* %324, align 4
  %326 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %13, align 8
  %327 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %326, i32 0, i32 19
  %328 = load i32, i32* %327, align 4
  %329 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %13, align 8
  %330 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %329, i32 0, i32 18
  %331 = load i32, i32* %330, align 4
  %332 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %13, align 8
  %333 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %332, i32 0, i32 17
  %334 = load i32, i32* %333, align 4
  %335 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %13, align 8
  %336 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %335, i32 0, i32 16
  %337 = load i32, i32* %336, align 4
  %338 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %13, align 8
  %339 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %338, i32 0, i32 15
  %340 = load i32, i32* %339, align 4
  %341 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %13, align 8
  %342 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %341, i32 0, i32 14
  %343 = load i32, i32* %342, align 4
  %344 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %13, align 8
  %345 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %344, i32 0, i32 13
  %346 = load i32, i32* %345, align 4
  %347 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %13, align 8
  %348 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %347, i32 0, i32 12
  %349 = load i32, i32* %348, align 4
  %350 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %13, align 8
  %351 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %350, i32 0, i32 11
  %352 = load i32, i32* %351, align 4
  %353 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %13, align 8
  %354 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %353, i32 0, i32 10
  %355 = load i32, i32* %354, align 4
  %356 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %13, align 8
  %357 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %356, i32 0, i32 9
  %358 = load i32, i32* %357, align 4
  %359 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %13, align 8
  %360 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %359, i32 0, i32 8
  %361 = load i32, i32* %360, align 4
  %362 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %13, align 8
  %363 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %362, i32 0, i32 7
  %364 = load i32, i32* %363, align 4
  %365 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %13, align 8
  %366 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %365, i32 0, i32 6
  %367 = load i32, i32* %366, align 4
  %368 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %13, align 8
  %369 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %368, i32 0, i32 5
  %370 = load i32, i32* %369, align 4
  %371 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %13, align 8
  %372 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %371, i32 0, i32 4
  %373 = load i32, i32* %372, align 4
  %374 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %13, align 8
  %375 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %374, i32 0, i32 3
  %376 = load i32, i32* %375, align 4
  %377 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %13, align 8
  %378 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %377, i32 0, i32 2
  %379 = load i32, i32* %378, align 4
  %380 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %13, align 8
  %381 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %380, i32 0, i32 1
  %382 = load i32, i32* %381, align 4
  %383 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %13, align 8
  %384 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 4
  %386 = call i32 (i8*, ...) @DTN_INFO(i8* getelementptr inbounds ([260 x i8], [260 x i8]* @.str.8, i64 0, i64 0), i32 %259, i32 %262, i32 %265, i32 %268, i32 %271, i32 %274, i32 %277, i32 %280, i32 %283, i32 %286, i32 %289, i32 %292, i32 %295, i32 %298, i32 %301, i32 %304, i32 %307, i32 %310, i32 %313, i32 %316, i32 %319, i32 %322, i32 %325, i32 %328, i32 %331, i32 %334, i32 %337, i32 %340, i32 %343, i32 %346, i32 %349, i32 %352, i32 %355, i32 %358, i32 %361, i32 %364, i32 %367, i32 %370, i32 %373, i32 %376, i32 %379, i32 %382, i32 %385)
  br label %387

387:                                              ; preds = %250, %234
  br label %388

388:                                              ; preds = %387
  %389 = load i32, i32* %7, align 4
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %7, align 4
  br label %228

391:                                              ; preds = %228
  %392 = call i32 (i8*, ...) @DTN_INFO(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %393 = call i32 (i8*, ...) @DTN_INFO(i8* getelementptr inbounds ([228 x i8], [228 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %394

394:                                              ; preds = %488, %391
  %395 = load i32, i32* %7, align 4
  %396 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %397 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 8
  %399 = icmp slt i32 %395, %398
  br i1 %399, label %400, label %491

400:                                              ; preds = %394
  %401 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %402 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %401, i32 0, i32 1
  %403 = load %struct.hubp**, %struct.hubp*** %402, align 8
  %404 = load i32, i32* %7, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds %struct.hubp*, %struct.hubp** %403, i64 %405
  %407 = load %struct.hubp*, %struct.hubp** %406, align 8
  %408 = call %struct.TYPE_8__* @TO_DCN10_HUBP(%struct.hubp* %407)
  %409 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %408, i32 0, i32 0
  store %struct.dcn_hubp_state* %409, %struct.dcn_hubp_state** %14, align 8
  %410 = load %struct.dcn_hubp_state*, %struct.dcn_hubp_state** %14, align 8
  %411 = getelementptr inbounds %struct.dcn_hubp_state, %struct.dcn_hubp_state* %410, i32 0, i32 1
  store %struct._vcs_dpi_display_ttu_regs_st* %411, %struct._vcs_dpi_display_ttu_regs_st** %15, align 8
  %412 = load %struct.dcn_hubp_state*, %struct.dcn_hubp_state** %14, align 8
  %413 = getelementptr inbounds %struct.dcn_hubp_state, %struct.dcn_hubp_state* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 4
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %487, label %416

416:                                              ; preds = %400
  %417 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %418 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %417, i32 0, i32 1
  %419 = load %struct.hubp**, %struct.hubp*** %418, align 8
  %420 = load i32, i32* %7, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds %struct.hubp*, %struct.hubp** %419, i64 %421
  %423 = load %struct.hubp*, %struct.hubp** %422, align 8
  %424 = getelementptr inbounds %struct.hubp, %struct.hubp* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 8
  %426 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %15, align 8
  %427 = getelementptr inbounds %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_ttu_regs_st* %426, i32 0, i32 19
  %428 = load i32, i32* %427, align 4
  %429 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %15, align 8
  %430 = getelementptr inbounds %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_ttu_regs_st* %429, i32 0, i32 18
  %431 = load i32, i32* %430, align 4
  %432 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %15, align 8
  %433 = getelementptr inbounds %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_ttu_regs_st* %432, i32 0, i32 17
  %434 = load i32, i32* %433, align 4
  %435 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %15, align 8
  %436 = getelementptr inbounds %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_ttu_regs_st* %435, i32 0, i32 16
  %437 = load i32, i32* %436, align 4
  %438 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %15, align 8
  %439 = getelementptr inbounds %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_ttu_regs_st* %438, i32 0, i32 15
  %440 = load i32, i32* %439, align 4
  %441 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %15, align 8
  %442 = getelementptr inbounds %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_ttu_regs_st* %441, i32 0, i32 14
  %443 = load i32, i32* %442, align 4
  %444 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %15, align 8
  %445 = getelementptr inbounds %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_ttu_regs_st* %444, i32 0, i32 13
  %446 = load i32, i32* %445, align 4
  %447 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %15, align 8
  %448 = getelementptr inbounds %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_ttu_regs_st* %447, i32 0, i32 12
  %449 = load i32, i32* %448, align 4
  %450 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %15, align 8
  %451 = getelementptr inbounds %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_ttu_regs_st* %450, i32 0, i32 11
  %452 = load i32, i32* %451, align 4
  %453 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %15, align 8
  %454 = getelementptr inbounds %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_ttu_regs_st* %453, i32 0, i32 10
  %455 = load i32, i32* %454, align 4
  %456 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %15, align 8
  %457 = getelementptr inbounds %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_ttu_regs_st* %456, i32 0, i32 9
  %458 = load i32, i32* %457, align 4
  %459 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %15, align 8
  %460 = getelementptr inbounds %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_ttu_regs_st* %459, i32 0, i32 8
  %461 = load i32, i32* %460, align 4
  %462 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %15, align 8
  %463 = getelementptr inbounds %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_ttu_regs_st* %462, i32 0, i32 7
  %464 = load i32, i32* %463, align 4
  %465 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %15, align 8
  %466 = getelementptr inbounds %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_ttu_regs_st* %465, i32 0, i32 6
  %467 = load i32, i32* %466, align 4
  %468 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %15, align 8
  %469 = getelementptr inbounds %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_ttu_regs_st* %468, i32 0, i32 5
  %470 = load i32, i32* %469, align 4
  %471 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %15, align 8
  %472 = getelementptr inbounds %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_ttu_regs_st* %471, i32 0, i32 4
  %473 = load i32, i32* %472, align 4
  %474 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %15, align 8
  %475 = getelementptr inbounds %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_ttu_regs_st* %474, i32 0, i32 3
  %476 = load i32, i32* %475, align 4
  %477 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %15, align 8
  %478 = getelementptr inbounds %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_ttu_regs_st* %477, i32 0, i32 2
  %479 = load i32, i32* %478, align 4
  %480 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %15, align 8
  %481 = getelementptr inbounds %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_ttu_regs_st* %480, i32 0, i32 1
  %482 = load i32, i32* %481, align 4
  %483 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %15, align 8
  %484 = getelementptr inbounds %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_ttu_regs_st* %483, i32 0, i32 0
  %485 = load i32, i32* %484, align 4
  %486 = call i32 (i8*, ...) @DTN_INFO(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.11, i64 0, i64 0), i32 %425, i32 %428, i32 %431, i32 %434, i32 %437, i32 %440, i32 %443, i32 %446, i32 %449, i32 %452, i32 %455, i32 %458, i32 %461, i32 %464, i32 %467, i32 %470, i32 %473, i32 %476, i32 %479, i32 %482, i32 %485)
  br label %487

487:                                              ; preds = %416, %400
  br label %488

488:                                              ; preds = %487
  %489 = load i32, i32* %7, align 4
  %490 = add nsw i32 %489, 1
  store i32 %490, i32* %7, align 4
  br label %394

491:                                              ; preds = %394
  %492 = call i32 (i8*, ...) @DTN_INFO(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DTN_INFO(i8*, ...) #1

declare dso_local %struct.TYPE_8__* @TO_DCN10_HUBP(%struct.hubp*) #1

declare dso_local i32 @DTN_INFO_MICRO_SEC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
