; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dcn21/extr_rn_clk_mgr.c_rn_clk_mgr_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dcn21/extr_rn_clk_mgr.c_rn_clk_mgr_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.dc_context = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.dc_debug_options }
%struct.dc_debug_options = type { i32, i32 }
%struct.clk_mgr_internal = type { i32, i32, i32, i32, %struct.TYPE_7__, i32, i64, i64, %struct.dccg*, %struct.pp_smu_funcs* }
%struct.TYPE_7__ = type { i32, i32*, %struct.TYPE_8__*, %struct.dc_context* }
%struct.pp_smu_funcs = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 (i32*, %struct.pp_smu_wm_range_sets*)*, i32 (i32*, %struct.dpm_clocks*)* }
%struct.pp_smu_wm_range_sets = type { i32 }
%struct.dpm_clocks = type opaque
%struct.dccg = type { i32 }
%struct.dpm_clocks.0 = type { i32 }
%struct.clk_state_registers_and_bypass = type { i32, i32 }
%struct.clk_log_info = type { i32 }

@dcn21_funcs = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@dcn2_update_clocks_fpga = common dso_local global i32 0, align 4
@rn_bw_params = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rn_clk_mgr_construct(%struct.dc_context* %0, %struct.clk_mgr_internal* %1, %struct.pp_smu_funcs* %2, %struct.dccg* %3) #0 {
  %5 = alloca %struct.dc_context*, align 8
  %6 = alloca %struct.clk_mgr_internal*, align 8
  %7 = alloca %struct.pp_smu_funcs*, align 8
  %8 = alloca %struct.dccg*, align 8
  %9 = alloca %struct.dc_debug_options*, align 8
  %10 = alloca %struct.dpm_clocks.0, align 4
  %11 = alloca %struct.clk_state_registers_and_bypass, align 4
  %12 = alloca %struct.clk_log_info, align 4
  %13 = alloca %struct.pp_smu_wm_range_sets, align 4
  store %struct.dc_context* %0, %struct.dc_context** %5, align 8
  store %struct.clk_mgr_internal* %1, %struct.clk_mgr_internal** %6, align 8
  store %struct.pp_smu_funcs* %2, %struct.pp_smu_funcs** %7, align 8
  store %struct.dccg* %3, %struct.dccg** %8, align 8
  %14 = load %struct.dc_context*, %struct.dc_context** %5, align 8
  %15 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %14, i32 0, i32 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store %struct.dc_debug_options* %17, %struct.dc_debug_options** %9, align 8
  %18 = bitcast %struct.dpm_clocks.0* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 4, i1 false)
  %19 = bitcast %struct.clk_state_registers_and_bypass* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 8, i1 false)
  %20 = load %struct.dc_context*, %struct.dc_context** %5, align 8
  %21 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %22 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 3
  store %struct.dc_context* %20, %struct.dc_context** %23, align 8
  %24 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %25 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  store %struct.TYPE_8__* @dcn21_funcs, %struct.TYPE_8__** %26, align 8
  %27 = load %struct.pp_smu_funcs*, %struct.pp_smu_funcs** %7, align 8
  %28 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %29 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %28, i32 0, i32 9
  store %struct.pp_smu_funcs* %27, %struct.pp_smu_funcs** %29, align 8
  %30 = load %struct.dccg*, %struct.dccg** %8, align 8
  %31 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %32 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %31, i32 0, i32 8
  store %struct.dccg* %30, %struct.dccg** %32, align 8
  %33 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %34 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %33, i32 0, i32 7
  store i64 0, i64* %34, align 8
  %35 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %36 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %35, i32 0, i32 6
  store i64 0, i64* %36, align 8
  %37 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %38 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %37, i32 0, i32 0
  store i32 1000, i32* %38, align 8
  %39 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %40 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %39, i32 0, i32 1
  store i32 0, i32* %40, align 4
  %41 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %42 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %41, i32 0, i32 2
  store i32 48000, i32* %42, align 8
  %43 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %44 = call i32 @rn_vbios_smu_get_smu_version(%struct.clk_mgr_internal* %43)
  %45 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %46 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 8
  %47 = load %struct.dc_context*, %struct.dc_context** %5, align 8
  %48 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @IS_FPGA_MAXIMUS_DC(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %4
  %53 = load i32, i32* @dcn2_update_clocks_fpga, align 4
  store i32 %53, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dcn21_funcs, i32 0, i32 0), align 4
  %54 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %55 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %54, i32 0, i32 3
  store i32 3600000, i32* %55, align 4
  %56 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %57 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i32 600000, i32* %58, align 8
  br label %102

59:                                               ; preds = %4
  %60 = bitcast %struct.clk_log_info* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %60, i8 0, i64 4, i1 false)
  %61 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %62 = call i32 @get_vco_frequency_from_reg(%struct.clk_mgr_internal* %61)
  %63 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %64 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %66 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %59
  %70 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %71 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %70, i32 0, i32 3
  store i32 3600000, i32* %71, align 4
  br label %72

72:                                               ; preds = %69, %59
  %73 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %74 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %73, i32 0, i32 4
  %75 = call i32 @rn_dump_clk_registers(%struct.clk_state_registers_and_bypass* %11, %struct.TYPE_7__* %74, %struct.clk_log_info* %12)
  %76 = getelementptr inbounds %struct.clk_state_registers_and_bypass, %struct.clk_state_registers_and_bypass* %11, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %79 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 8
  %81 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %82 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 600000
  br i1 %85, label %86, label %91

86:                                               ; preds = %72
  %87 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %88 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  store i32 600000, i32* %89, align 8
  %90 = call i32 @ASSERT(i32 1)
  br label %91

91:                                               ; preds = %86, %72
  %92 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %93 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %99 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  store i32 600000, i32* %100, align 8
  br label %101

101:                                              ; preds = %97, %91
  br label %102

102:                                              ; preds = %101, %52
  %103 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %104 = call i32 @dce_clock_read_ss_info(%struct.clk_mgr_internal* %103)
  %105 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %106 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  store i32* @rn_bw_params, i32** %107, align 8
  %108 = load %struct.pp_smu_funcs*, %struct.pp_smu_funcs** %7, align 8
  %109 = icmp ne %struct.pp_smu_funcs* %108, null
  br i1 %109, label %110, label %127

110:                                              ; preds = %102
  %111 = load %struct.pp_smu_funcs*, %struct.pp_smu_funcs** %7, align 8
  %112 = getelementptr inbounds %struct.pp_smu_funcs, %struct.pp_smu_funcs* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 2
  %114 = load i32 (i32*, %struct.dpm_clocks*)*, i32 (i32*, %struct.dpm_clocks*)** %113, align 8
  %115 = load %struct.pp_smu_funcs*, %struct.pp_smu_funcs** %7, align 8
  %116 = getelementptr inbounds %struct.pp_smu_funcs, %struct.pp_smu_funcs* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = bitcast %struct.dpm_clocks.0* %10 to %struct.dpm_clocks*
  %119 = call i32 %114(i32* %117, %struct.dpm_clocks* %118)
  %120 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %121 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.dc_context*, %struct.dc_context** %5, align 8
  %125 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %124, i32 0, i32 0
  %126 = call i32 @clk_mgr_helper_populate_bw_params(i32* %123, %struct.dpm_clocks.0* %10, i32* %125)
  br label %127

127:                                              ; preds = %110, %102
  %128 = load %struct.dc_debug_options*, %struct.dc_debug_options** %9, align 8
  %129 = getelementptr inbounds %struct.dc_debug_options, %struct.dc_debug_options* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %157, label %132

132:                                              ; preds = %127
  %133 = bitcast %struct.pp_smu_wm_range_sets* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %133, i8 0, i64 4, i1 false)
  %134 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %135 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = call i32 @build_watermark_ranges(i32* %137, %struct.pp_smu_wm_range_sets* %13)
  %139 = load %struct.pp_smu_funcs*, %struct.pp_smu_funcs** %7, align 8
  %140 = icmp ne %struct.pp_smu_funcs* %139, null
  br i1 %140, label %141, label %156

141:                                              ; preds = %132
  %142 = load %struct.pp_smu_funcs*, %struct.pp_smu_funcs** %7, align 8
  %143 = getelementptr inbounds %struct.pp_smu_funcs, %struct.pp_smu_funcs* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 1
  %145 = load i32 (i32*, %struct.pp_smu_wm_range_sets*)*, i32 (i32*, %struct.pp_smu_wm_range_sets*)** %144, align 8
  %146 = icmp ne i32 (i32*, %struct.pp_smu_wm_range_sets*)* %145, null
  br i1 %146, label %147, label %156

147:                                              ; preds = %141
  %148 = load %struct.pp_smu_funcs*, %struct.pp_smu_funcs** %7, align 8
  %149 = getelementptr inbounds %struct.pp_smu_funcs, %struct.pp_smu_funcs* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  %151 = load i32 (i32*, %struct.pp_smu_wm_range_sets*)*, i32 (i32*, %struct.pp_smu_wm_range_sets*)** %150, align 8
  %152 = load %struct.pp_smu_funcs*, %struct.pp_smu_funcs** %7, align 8
  %153 = getelementptr inbounds %struct.pp_smu_funcs, %struct.pp_smu_funcs* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = call i32 %151(i32* %154, %struct.pp_smu_wm_range_sets* %13)
  br label %156

156:                                              ; preds = %147, %141, %132
  br label %157

157:                                              ; preds = %156, %127
  %158 = load %struct.dc_debug_options*, %struct.dc_debug_options** %9, align 8
  %159 = getelementptr inbounds %struct.dc_debug_options, %struct.dc_debug_options* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %157
  %163 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %164 = call i32 @rn_vbios_smu_enable_48mhz_tmdp_refclk_pwrdwn(%struct.clk_mgr_internal* %163)
  br label %165

165:                                              ; preds = %162, %157
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @rn_vbios_smu_get_smu_version(%struct.clk_mgr_internal*) #2

declare dso_local i64 @IS_FPGA_MAXIMUS_DC(i32) #2

declare dso_local i32 @get_vco_frequency_from_reg(%struct.clk_mgr_internal*) #2

declare dso_local i32 @rn_dump_clk_registers(%struct.clk_state_registers_and_bypass*, %struct.TYPE_7__*, %struct.clk_log_info*) #2

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @dce_clock_read_ss_info(%struct.clk_mgr_internal*) #2

declare dso_local i32 @clk_mgr_helper_populate_bw_params(i32*, %struct.dpm_clocks.0*, i32*) #2

declare dso_local i32 @build_watermark_ranges(i32*, %struct.pp_smu_wm_range_sets*) #2

declare dso_local i32 @rn_vbios_smu_enable_48mhz_tmdp_refclk_pwrdwn(%struct.clk_mgr_internal*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
