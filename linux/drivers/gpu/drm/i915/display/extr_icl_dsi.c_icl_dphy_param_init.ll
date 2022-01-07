; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_icl_dsi.c_icl_dphy_param_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_icl_dsi.c_icl_dphy_param_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dsi = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.mipi_config* }
%struct.mipi_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ICL_PREPARE_CNT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"prepare_cnt out of range (%d)\0A\00", align 1
@ICL_CLK_ZERO_CNT_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"clk_zero_cnt out of range (%d)\0A\00", align 1
@ICL_TRAIL_CNT_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"trail_cnt out of range (%d)\0A\00", align 1
@ICL_TCLK_PRE_CNT_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"tclk_pre_cnt out of range (%d)\0A\00", align 1
@ICL_TCLK_POST_CNT_MAX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"tclk_post_cnt out of range (%d)\0A\00", align 1
@ICL_HS_ZERO_CNT_MAX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"hs_zero_cnt out of range (%d)\0A\00", align 1
@ICL_EXIT_ZERO_CNT_MAX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"exit_zero_cnt out of range (%d)\0A\00", align 1
@CLK_PREPARE_OVERRIDE = common dso_local global i32 0, align 4
@CLK_ZERO_OVERRIDE = common dso_local global i32 0, align 4
@CLK_PRE_OVERRIDE = common dso_local global i32 0, align 4
@CLK_POST_OVERRIDE = common dso_local global i32 0, align 4
@CLK_TRAIL_OVERRIDE = common dso_local global i32 0, align 4
@HS_PREPARE_OVERRIDE = common dso_local global i32 0, align 4
@HS_ZERO_OVERRIDE = common dso_local global i32 0, align 4
@HS_TRAIL_OVERRIDE = common dso_local global i32 0, align 4
@HS_EXIT_OVERRIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dsi*)* @icl_dphy_param_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icl_dphy_param_init(%struct.intel_dsi* %0) #0 {
  %2 = alloca %struct.intel_dsi*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.mipi_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.intel_dsi* %0, %struct.intel_dsi** %2, align 8
  %16 = load %struct.intel_dsi*, %struct.intel_dsi** %2, align 8
  %17 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.drm_device*, %struct.drm_device** %19, align 8
  store %struct.drm_device* %20, %struct.drm_device** %3, align 8
  %21 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %22 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %21)
  store %struct.drm_i915_private* %22, %struct.drm_i915_private** %4, align 8
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %24 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load %struct.mipi_config*, %struct.mipi_config** %26, align 8
  store %struct.mipi_config* %27, %struct.mipi_config** %5, align 8
  %28 = load %struct.intel_dsi*, %struct.intel_dsi** %2, align 8
  %29 = call i32 @intel_dsi_tlpx_ns(%struct.intel_dsi* %28)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.mipi_config*, %struct.mipi_config** %5, align 8
  %31 = getelementptr inbounds %struct.mipi_config, %struct.mipi_config* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mipi_config*, %struct.mipi_config** %5, align 8
  %34 = getelementptr inbounds %struct.mipi_config, %struct.mipi_config* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @max(i32 %32, i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load %struct.mipi_config*, %struct.mipi_config** %5, align 8
  %38 = getelementptr inbounds %struct.mipi_config, %struct.mipi_config* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mipi_config*, %struct.mipi_config** %5, align 8
  %41 = getelementptr inbounds %struct.mipi_config, %struct.mipi_config* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @max(i32 %39, i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = mul nsw i32 %44, 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @DIV_ROUND_UP(i32 %45, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @ICL_PREPARE_CNT_MAX, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %1
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @ICL_PREPARE_CNT_MAX, align 4
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %51, %1
  %56 = load %struct.mipi_config*, %struct.mipi_config** %5, align 8
  %57 = getelementptr inbounds %struct.mipi_config, %struct.mipi_config* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %11, align 4
  %60 = sub nsw i32 %58, %59
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @DIV_ROUND_UP(i32 %60, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @ICL_CLK_ZERO_CNT_MAX, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %55
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @ICL_CLK_ZERO_CNT_MAX, align 4
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %66, %55
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @DIV_ROUND_UP(i32 %71, i32 %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @ICL_TRAIL_CNT_MAX, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %70
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @ICL_TRAIL_CNT_MAX, align 4
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %77, %70
  %82 = load %struct.mipi_config*, %struct.mipi_config** %5, align 8
  %83 = getelementptr inbounds %struct.mipi_config, %struct.mipi_config* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @DIV_ROUND_UP(i32 %84, i32 %85)
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* @ICL_TCLK_PRE_CNT_MAX, align 4
  %89 = icmp sgt i32 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %81
  %91 = load i32, i32* %14, align 4
  %92 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @ICL_TCLK_PRE_CNT_MAX, align 4
  store i32 %93, i32* %14, align 4
  br label %94

94:                                               ; preds = %90, %81
  %95 = load %struct.mipi_config*, %struct.mipi_config** %5, align 8
  %96 = getelementptr inbounds %struct.mipi_config, %struct.mipi_config* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @DIV_ROUND_UP(i32 %97, i32 %98)
  store i32 %99, i32* %15, align 4
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* @ICL_TCLK_POST_CNT_MAX, align 4
  %102 = icmp sgt i32 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %94
  %104 = load i32, i32* %15, align 4
  %105 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* @ICL_TCLK_POST_CNT_MAX, align 4
  store i32 %106, i32* %15, align 4
  br label %107

107:                                              ; preds = %103, %94
  %108 = load %struct.mipi_config*, %struct.mipi_config** %5, align 8
  %109 = getelementptr inbounds %struct.mipi_config, %struct.mipi_config* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %11, align 4
  %112 = sub nsw i32 %110, %111
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @DIV_ROUND_UP(i32 %112, i32 %113)
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* @ICL_HS_ZERO_CNT_MAX, align 4
  %117 = icmp sgt i32 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %107
  %119 = load i32, i32* %13, align 4
  %120 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* @ICL_HS_ZERO_CNT_MAX, align 4
  store i32 %121, i32* %13, align 4
  br label %122

122:                                              ; preds = %118, %107
  %123 = load %struct.mipi_config*, %struct.mipi_config** %5, align 8
  %124 = getelementptr inbounds %struct.mipi_config, %struct.mipi_config* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @DIV_ROUND_UP(i32 %125, i32 %126)
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* @ICL_EXIT_ZERO_CNT_MAX, align 4
  %130 = icmp sgt i32 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %122
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %132)
  %134 = load i32, i32* @ICL_EXIT_ZERO_CNT_MAX, align 4
  store i32 %134, i32* %8, align 4
  br label %135

135:                                              ; preds = %131, %122
  %136 = load i32, i32* @CLK_PREPARE_OVERRIDE, align 4
  %137 = load i32, i32* %7, align 4
  %138 = call i32 @CLK_PREPARE(i32 %137)
  %139 = or i32 %136, %138
  %140 = load i32, i32* @CLK_ZERO_OVERRIDE, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @CLK_ZERO(i32 %142)
  %144 = or i32 %141, %143
  %145 = load i32, i32* @CLK_PRE_OVERRIDE, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* %14, align 4
  %148 = call i32 @CLK_PRE(i32 %147)
  %149 = or i32 %146, %148
  %150 = load i32, i32* @CLK_POST_OVERRIDE, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* %15, align 4
  %153 = call i32 @CLK_POST(i32 %152)
  %154 = or i32 %151, %153
  %155 = load i32, i32* @CLK_TRAIL_OVERRIDE, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* %10, align 4
  %158 = call i32 @CLK_TRAIL(i32 %157)
  %159 = or i32 %156, %158
  %160 = load %struct.intel_dsi*, %struct.intel_dsi** %2, align 8
  %161 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 8
  %162 = load i32, i32* @HS_PREPARE_OVERRIDE, align 4
  %163 = load i32, i32* %7, align 4
  %164 = call i32 @HS_PREPARE(i32 %163)
  %165 = or i32 %162, %164
  %166 = load i32, i32* @HS_ZERO_OVERRIDE, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* %13, align 4
  %169 = call i32 @HS_ZERO(i32 %168)
  %170 = or i32 %167, %169
  %171 = load i32, i32* @HS_TRAIL_OVERRIDE, align 4
  %172 = or i32 %170, %171
  %173 = load i32, i32* %10, align 4
  %174 = call i32 @HS_TRAIL(i32 %173)
  %175 = or i32 %172, %174
  %176 = load i32, i32* @HS_EXIT_OVERRIDE, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* %8, align 4
  %179 = call i32 @HS_EXIT(i32 %178)
  %180 = or i32 %177, %179
  %181 = load %struct.intel_dsi*, %struct.intel_dsi** %2, align 8
  %182 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 4
  %183 = load %struct.intel_dsi*, %struct.intel_dsi** %2, align 8
  %184 = call i32 @intel_dsi_log_params(%struct.intel_dsi* %183)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @intel_dsi_tlpx_ns(%struct.intel_dsi*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @CLK_PREPARE(i32) #1

declare dso_local i32 @CLK_ZERO(i32) #1

declare dso_local i32 @CLK_PRE(i32) #1

declare dso_local i32 @CLK_POST(i32) #1

declare dso_local i32 @CLK_TRAIL(i32) #1

declare dso_local i32 @HS_PREPARE(i32) #1

declare dso_local i32 @HS_ZERO(i32) #1

declare dso_local i32 @HS_TRAIL(i32) #1

declare dso_local i32 @HS_EXIT(i32) #1

declare dso_local i32 @intel_dsi_log_params(%struct.intel_dsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
