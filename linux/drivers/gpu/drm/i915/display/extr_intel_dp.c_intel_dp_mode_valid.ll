; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_display_mode = type { i32, i32, i64, i64 }
%struct.intel_dp = type { i32, i32 }
%struct.intel_connector = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_display_mode* }
%struct.drm_i915_private = type { i32 }

@DRM_MODE_FLAG_DBLSCAN = common dso_local global i32 0, align 4
@MODE_NO_DBLESCAN = common dso_local global i32 0, align 4
@MODE_PANEL = common dso_local global i32 0, align 4
@MODE_CLOCK_HIGH = common dso_local global i32 0, align 4
@MODE_CLOCK_LOW = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_DBLCLK = common dso_local global i32 0, align 4
@MODE_H_ILLEGAL = common dso_local global i32 0, align 4
@MODE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_display_mode*)* @intel_dp_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dp_mode_valid(%struct.drm_connector* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.intel_dp*, align 8
  %7 = alloca %struct.intel_connector*, align 8
  %8 = alloca %struct.drm_display_mode*, align 8
  %9 = alloca %struct.drm_i915_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %18 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %19 = call %struct.intel_dp* @intel_attached_dp(%struct.drm_connector* %18)
  store %struct.intel_dp* %19, %struct.intel_dp** %6, align 8
  %20 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %21 = call %struct.intel_connector* @to_intel_connector(%struct.drm_connector* %20)
  store %struct.intel_connector* %21, %struct.intel_connector** %7, align 8
  %22 = load %struct.intel_connector*, %struct.intel_connector** %7, align 8
  %23 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %24, align 8
  store %struct.drm_display_mode* %25, %struct.drm_display_mode** %8, align 8
  %26 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %27 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.drm_i915_private* @to_i915(i32 %28)
  store %struct.drm_i915_private* %29, %struct.drm_i915_private** %9, align 8
  %30 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %31 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %10, align 4
  store i32 0, i32* %16, align 4
  store i64 0, i64* %17, align 8
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %34 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @DRM_MODE_FLAG_DBLSCAN, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %2
  %40 = load i32, i32* @MODE_NO_DBLESCAN, align 4
  store i32 %40, i32* %3, align 4
  br label %168

41:                                               ; preds = %2
  %42 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %43 = call i32 @intel_dp_downstream_max_dotclock(%struct.intel_dp* %42)
  store i32 %43, i32* %15, align 4
  %44 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %45 = call i64 @intel_dp_is_edp(%struct.intel_dp* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %74

47:                                               ; preds = %41
  %48 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %49 = icmp ne %struct.drm_display_mode* %48, null
  br i1 %49, label %50, label %74

50:                                               ; preds = %47
  %51 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %52 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %55 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %53, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32, i32* @MODE_PANEL, align 4
  store i32 %59, i32* %3, align 4
  br label %168

60:                                               ; preds = %50
  %61 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %62 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %65 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp sgt i64 %63, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i32, i32* @MODE_PANEL, align 4
  store i32 %69, i32* %3, align 4
  br label %168

70:                                               ; preds = %60
  %71 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %72 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %70, %47, %41
  %75 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %76 = call i32 @intel_dp_max_link_rate(%struct.intel_dp* %75)
  store i32 %76, i32* %14, align 4
  %77 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %78 = call i32 @intel_dp_max_lane_count(%struct.intel_dp* %77)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @intel_dp_max_data_rate(i32 %79, i32 %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @intel_dp_link_required(i32 %82, i32 18)
  store i32 %83, i32* %12, align 4
  %84 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %85 = call i32 @INTEL_GEN(%struct.drm_i915_private* %84)
  %86 = icmp sge i32 %85, 10
  br i1 %86, label %91, label %87

87:                                               ; preds = %74
  %88 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %89 = call i64 @IS_GEMINILAKE(%struct.drm_i915_private* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %134

91:                                               ; preds = %87, %74
  %92 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %93 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @drm_dp_sink_supports_dsc(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %134

97:                                               ; preds = %91
  %98 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %99 = call i64 @intel_dp_is_edp(%struct.intel_dp* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %97
  %102 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %103 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @drm_edp_dsc_sink_output_bpp(i32 %104)
  %106 = ashr i32 %105, 4
  store i32 %106, i32* %16, align 4
  %107 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %108 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @drm_dp_dsc_sink_max_slice_count(i32 %109, i32 1)
  store i64 %110, i64* %17, align 8
  br label %133

111:                                              ; preds = %97
  %112 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %113 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @drm_dp_sink_supports_fec(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %132

117:                                              ; preds = %111
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* %10, align 4
  %121 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %122 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @intel_dp_dsc_get_output_bpp(i32 %118, i32 %119, i32 %120, i64 %123)
  %125 = ashr i32 %124, 4
  store i32 %125, i32* %16, align 4
  %126 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %127 = load i32, i32* %10, align 4
  %128 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %129 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = call i64 @intel_dp_dsc_get_slice_count(%struct.intel_dp* %126, i32 %127, i64 %130)
  store i64 %131, i64* %17, align 8
  br label %132

132:                                              ; preds = %117, %111
  br label %133

133:                                              ; preds = %132, %101
  br label %134

134:                                              ; preds = %133, %91, %87
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* %11, align 4
  %137 = icmp sgt i32 %135, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %134
  %139 = load i32, i32* %16, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %138
  %142 = load i64, i64* %17, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %141, %134
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %15, align 4
  %147 = icmp sgt i32 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %144, %141, %138
  %149 = load i32, i32* @MODE_CLOCK_HIGH, align 4
  store i32 %149, i32* %3, align 4
  br label %168

150:                                              ; preds = %144
  %151 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %152 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp slt i32 %153, 10000
  br i1 %154, label %155, label %157

155:                                              ; preds = %150
  %156 = load i32, i32* @MODE_CLOCK_LOW, align 4
  store i32 %156, i32* %3, align 4
  br label %168

157:                                              ; preds = %150
  %158 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %159 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @DRM_MODE_FLAG_DBLCLK, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %157
  %165 = load i32, i32* @MODE_H_ILLEGAL, align 4
  store i32 %165, i32* %3, align 4
  br label %168

166:                                              ; preds = %157
  %167 = load i32, i32* @MODE_OK, align 4
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %166, %164, %155, %148, %68, %58, %39
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local %struct.intel_dp* @intel_attached_dp(%struct.drm_connector*) #1

declare dso_local %struct.intel_connector* @to_intel_connector(%struct.drm_connector*) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @intel_dp_downstream_max_dotclock(%struct.intel_dp*) #1

declare dso_local i64 @intel_dp_is_edp(%struct.intel_dp*) #1

declare dso_local i32 @intel_dp_max_link_rate(%struct.intel_dp*) #1

declare dso_local i32 @intel_dp_max_lane_count(%struct.intel_dp*) #1

declare dso_local i32 @intel_dp_max_data_rate(i32, i32) #1

declare dso_local i32 @intel_dp_link_required(i32, i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEMINILAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @drm_dp_sink_supports_dsc(i32) #1

declare dso_local i32 @drm_edp_dsc_sink_output_bpp(i32) #1

declare dso_local i64 @drm_dp_dsc_sink_max_slice_count(i32, i32) #1

declare dso_local i64 @drm_dp_sink_supports_fec(i32) #1

declare dso_local i32 @intel_dp_dsc_get_output_bpp(i32, i32, i32, i64) #1

declare dso_local i64 @intel_dp_dsc_get_slice_count(%struct.intel_dp*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
