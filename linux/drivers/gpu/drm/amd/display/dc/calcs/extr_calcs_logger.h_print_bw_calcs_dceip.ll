; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_calcs_logger.h_print_bw_calcs_dceip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_calcs_logger.h_print_bw_calcs_dceip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_context = type { i32 }
%struct.bw_calcs_dceip = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [70 x i8] c"#####################################################################\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"struct bw_calcs_dceip\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"\09[enum]   bw_calcs_version version %d\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"\09[bool] large_cursor: %d\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"\09[bool] dmif_pipe_en_fbc_chunk_tracker: %d\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"\09[bool] display_write_back_supported: %d\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"\09[bool] argb_compression_support: %d\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"\09[bool] pre_downscaler_enabled: %d\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"\09[bool] underlay_downscale_prefetch_enabled: %d\00", align 1
@.str.9 = private unnamed_addr constant [61 x i8] c"\09[bool] graphics_lb_nodownscaling_multi_line_prefetching: %d\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"\09[bool] limit_excessive_outstanding_dmif_requests: %d\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"\09[uint32_t] cursor_max_outstanding_group_num: %d\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"\09[uint32_t] lines_interleaved_into_lb: %d\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"\09[uint32_t] low_power_tiling_mode: %d\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"\09[uint32_t] chunk_width: %d\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"\09[uint32_t] number_of_graphics_pipes: %d\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"\09[uint32_t] number_of_underlay_pipes: %d\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"\09[uint32_t] max_dmif_buffer_allocated: %d\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"\09[uint32_t] graphics_dmif_size: %d\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"\09[uint32_t] underlay_luma_dmif_size: %d\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"\09[uint32_t] underlay_chroma_dmif_size: %d\00", align 1
@.str.21 = private unnamed_addr constant [71 x i8] c"\09[uint32_t] scatter_gather_lines_of_pte_prefetching_in_linear_mode: %d\00", align 1
@.str.22 = private unnamed_addr constant [62 x i8] c"\09[uint32_t] display_write_back420_luma_mcifwr_buffer_size: %d\00", align 1
@.str.23 = private unnamed_addr constant [64 x i8] c"\09[uint32_t] display_write_back420_chroma_mcifwr_buffer_size: %d\00", align 1
@.str.24 = private unnamed_addr constant [63 x i8] c"\09[uint32_t] scatter_gather_pte_request_rows_in_tiling_mode: %d\00", align 1
@.str.25 = private unnamed_addr constant [64 x i8] c"\09[bw_fixed] underlay_vscaler_efficiency10_bit_per_component: %d\00", align 1
@.str.26 = private unnamed_addr constant [64 x i8] c"\09[bw_fixed] underlay_vscaler_efficiency12_bit_per_component: %d\00", align 1
@.str.27 = private unnamed_addr constant [63 x i8] c"\09[bw_fixed] graphics_vscaler_efficiency6_bit_per_component: %d\00", align 1
@.str.28 = private unnamed_addr constant [63 x i8] c"\09[bw_fixed] graphics_vscaler_efficiency8_bit_per_component: %d\00", align 1
@.str.29 = private unnamed_addr constant [64 x i8] c"\09[bw_fixed] graphics_vscaler_efficiency10_bit_per_component: %d\00", align 1
@.str.30 = private unnamed_addr constant [64 x i8] c"\09[bw_fixed] graphics_vscaler_efficiency12_bit_per_component: %d\00", align 1
@.str.31 = private unnamed_addr constant [41 x i8] c"\09[bw_fixed] alpha_vscaler_efficiency: %d\00", align 1
@.str.32 = private unnamed_addr constant [44 x i8] c"\09[bw_fixed] lb_write_pixels_per_dispclk: %d\00", align 1
@.str.33 = private unnamed_addr constant [41 x i8] c"\09[bw_fixed] lb_size_per_component444: %d\00", align 1
@.str.34 = private unnamed_addr constant [72 x i8] c"\09[bw_fixed] stutter_and_dram_clock_state_change_gated_before_cursor: %d\00", align 1
@.str.35 = private unnamed_addr constant [55 x i8] c"\09[bw_fixed] underlay420_luma_lb_size_per_component: %d\00", align 1
@.str.36 = private unnamed_addr constant [57 x i8] c"\09[bw_fixed] underlay420_chroma_lb_size_per_component: %d\00", align 1
@.str.37 = private unnamed_addr constant [50 x i8] c"\09[bw_fixed] underlay422_lb_size_per_component: %d\00", align 1
@.str.38 = private unnamed_addr constant [35 x i8] c"\09[bw_fixed] cursor_chunk_width: %d\00", align 1
@.str.39 = private unnamed_addr constant [40 x i8] c"\09[bw_fixed] cursor_dcp_buffer_lines: %d\00", align 1
@.str.40 = private unnamed_addr constant [60 x i8] c"\09[bw_fixed] underlay_maximum_width_efficient_for_tiling: %d\00", align 1
@.str.41 = private unnamed_addr constant [61 x i8] c"\09[bw_fixed] underlay_maximum_height_efficient_for_tiling: %d\00", align 1
@.str.42 = private unnamed_addr constant [104 x i8] c"\09[bw_fixed] peak_pte_request_to_eviction_ratio_limiting_multiple_displays_or_single_rotated_display: %d\00", align 1
@.str.43 = private unnamed_addr constant [87 x i8] c"\09[bw_fixed] peak_pte_request_to_eviction_ratio_limiting_single_display_no_rotation: %d\00", align 1
@.str.44 = private unnamed_addr constant [54 x i8] c"\09[bw_fixed] minimum_outstanding_pte_request_limit: %d\00", align 1
@.str.45 = private unnamed_addr constant [70 x i8] c"\09[bw_fixed] maximum_total_outstanding_pte_requests_allowed_by_saw: %d\00", align 1
@.str.46 = private unnamed_addr constant [59 x i8] c"\09[bw_fixed] linear_mode_line_request_alternation_slice: %d\00", align 1
@.str.47 = private unnamed_addr constant [35 x i8] c"\09[bw_fixed] request_efficiency: %d\00", align 1
@.str.48 = private unnamed_addr constant [36 x i8] c"\09[bw_fixed] dispclk_per_request: %d\00", align 1
@.str.49 = private unnamed_addr constant [39 x i8] c"\09[bw_fixed] dispclk_ramping_factor: %d\00", align 1
@.str.50 = private unnamed_addr constant [47 x i8] c"\09[bw_fixed] display_pipe_throughput_factor: %d\00", align 1
@.str.51 = private unnamed_addr constant [47 x i8] c"\09[bw_fixed] mcifwr_all_surfaces_burst_time: %d\00", align 1
@.str.52 = private unnamed_addr constant [41 x i8] c"\09[bw_fixed] dmif_request_buffer_size: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_context*, %struct.bw_calcs_dceip*)* @print_bw_calcs_dceip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_bw_calcs_dceip(%struct.dc_context* %0, %struct.bw_calcs_dceip* %1) #0 {
  %3 = alloca %struct.dc_context*, align 8
  %4 = alloca %struct.bw_calcs_dceip*, align 8
  store %struct.dc_context* %0, %struct.dc_context** %3, align 8
  store %struct.bw_calcs_dceip* %1, %struct.bw_calcs_dceip** %4, align 8
  %5 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %9 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %8, i32 0, i32 50
  %10 = load i32, i32* %9, align 4
  %11 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %10)
  %12 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %13 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %12, i32 0, i32 49
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %14)
  %16 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %17 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %16, i32 0, i32 48
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %18)
  %20 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %21 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %20, i32 0, i32 47
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %22)
  %24 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %25 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %24, i32 0, i32 46
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %26)
  %28 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %29 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %28, i32 0, i32 45
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %30)
  %32 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %33 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %32, i32 0, i32 44
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i32 %34)
  %36 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %37 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %36, i32 0, i32 43
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.9, i64 0, i64 0), i32 %38)
  %40 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %41 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %40, i32 0, i32 42
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0), i32 %42)
  %44 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %45 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %44, i32 0, i32 41
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i32 %46)
  %48 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %49 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %48, i32 0, i32 40
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0), i32 %50)
  %52 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %53 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %52, i32 0, i32 39
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0), i32 %54)
  %56 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %57 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %56, i32 0, i32 38
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i32 %58)
  %60 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %61 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %60, i32 0, i32 37
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i64 0, i64 0), i32 %62)
  %64 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %65 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %64, i32 0, i32 36
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0), i32 %66)
  %68 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %69 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %68, i32 0, i32 35
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i64 0, i64 0), i32 %70)
  %72 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %73 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %72, i32 0, i32 34
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i64 0, i64 0), i32 %74)
  %76 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %77 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %76, i32 0, i32 33
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19, i64 0, i64 0), i32 %78)
  %80 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %81 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %80, i32 0, i32 32
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i64 0, i64 0), i32 %82)
  %84 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %85 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %84, i32 0, i32 31
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.21, i64 0, i64 0), i32 %86)
  %88 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %89 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %88, i32 0, i32 30
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.22, i64 0, i64 0), i32 %90)
  %92 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %93 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %92, i32 0, i32 29
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.23, i64 0, i64 0), i32 %94)
  %96 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %97 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %96, i32 0, i32 28
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.24, i64 0, i64 0), i32 %98)
  %100 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %101 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %100, i32 0, i32 27
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @bw_fixed_to_int(i32 %102)
  %104 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.25, i64 0, i64 0), i32 %103)
  %105 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %106 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %105, i32 0, i32 26
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @bw_fixed_to_int(i32 %107)
  %109 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.26, i64 0, i64 0), i32 %108)
  %110 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %111 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %110, i32 0, i32 25
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @bw_fixed_to_int(i32 %112)
  %114 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.27, i64 0, i64 0), i32 %113)
  %115 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %116 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %115, i32 0, i32 24
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @bw_fixed_to_int(i32 %117)
  %119 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.28, i64 0, i64 0), i32 %118)
  %120 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %121 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %120, i32 0, i32 23
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @bw_fixed_to_int(i32 %122)
  %124 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.29, i64 0, i64 0), i32 %123)
  %125 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %126 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %125, i32 0, i32 22
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @bw_fixed_to_int(i32 %127)
  %129 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.30, i64 0, i64 0), i32 %128)
  %130 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %131 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %130, i32 0, i32 21
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @bw_fixed_to_int(i32 %132)
  %134 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.31, i64 0, i64 0), i32 %133)
  %135 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %136 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %135, i32 0, i32 20
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @bw_fixed_to_int(i32 %137)
  %139 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.32, i64 0, i64 0), i32 %138)
  %140 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %141 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %140, i32 0, i32 19
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @bw_fixed_to_int(i32 %142)
  %144 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.33, i64 0, i64 0), i32 %143)
  %145 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %146 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %145, i32 0, i32 18
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @bw_fixed_to_int(i32 %147)
  %149 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.34, i64 0, i64 0), i32 %148)
  %150 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %151 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %150, i32 0, i32 17
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @bw_fixed_to_int(i32 %152)
  %154 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.35, i64 0, i64 0), i32 %153)
  %155 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %156 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %155, i32 0, i32 16
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @bw_fixed_to_int(i32 %157)
  %159 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.36, i64 0, i64 0), i32 %158)
  %160 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %161 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %160, i32 0, i32 15
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @bw_fixed_to_int(i32 %162)
  %164 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.37, i64 0, i64 0), i32 %163)
  %165 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %166 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %165, i32 0, i32 14
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @bw_fixed_to_int(i32 %167)
  %169 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.38, i64 0, i64 0), i32 %168)
  %170 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %171 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %170, i32 0, i32 13
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @bw_fixed_to_int(i32 %172)
  %174 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i64 0, i64 0), i32 %173)
  %175 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %176 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %175, i32 0, i32 12
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @bw_fixed_to_int(i32 %177)
  %179 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.40, i64 0, i64 0), i32 %178)
  %180 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %181 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %180, i32 0, i32 11
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @bw_fixed_to_int(i32 %182)
  %184 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.41, i64 0, i64 0), i32 %183)
  %185 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %186 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %185, i32 0, i32 10
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @bw_fixed_to_int(i32 %187)
  %189 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.42, i64 0, i64 0), i32 %188)
  %190 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %191 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %190, i32 0, i32 9
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @bw_fixed_to_int(i32 %192)
  %194 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.43, i64 0, i64 0), i32 %193)
  %195 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %196 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %195, i32 0, i32 8
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @bw_fixed_to_int(i32 %197)
  %199 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.44, i64 0, i64 0), i32 %198)
  %200 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %201 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %200, i32 0, i32 7
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @bw_fixed_to_int(i32 %202)
  %204 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.45, i64 0, i64 0), i32 %203)
  %205 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %206 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %205, i32 0, i32 6
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @bw_fixed_to_int(i32 %207)
  %209 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.46, i64 0, i64 0), i32 %208)
  %210 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %211 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %210, i32 0, i32 5
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @bw_fixed_to_int(i32 %212)
  %214 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.47, i64 0, i64 0), i32 %213)
  %215 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %216 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @bw_fixed_to_int(i32 %217)
  %219 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.48, i64 0, i64 0), i32 %218)
  %220 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %221 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @bw_fixed_to_int(i32 %222)
  %224 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.49, i64 0, i64 0), i32 %223)
  %225 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %226 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @bw_fixed_to_int(i32 %227)
  %229 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.50, i64 0, i64 0), i32 %228)
  %230 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %231 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @bw_fixed_to_int(i32 %232)
  %234 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.51, i64 0, i64 0), i32 %233)
  %235 = load %struct.bw_calcs_dceip*, %struct.bw_calcs_dceip** %4, align 8
  %236 = getelementptr inbounds %struct.bw_calcs_dceip, %struct.bw_calcs_dceip* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @bw_fixed_to_int(i32 %237)
  %239 = call i32 (i8*, ...) @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.52, i64 0, i64 0), i32 %238)
  ret void
}

declare dso_local i32 @DC_LOG_BANDWIDTH_CALCS(i8*, ...) #1

declare dso_local i32 @bw_fixed_to_int(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
