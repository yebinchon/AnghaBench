; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_edp_init_dpcd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_edp_init_dpcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i64*, i64*, i32*, i32, i32, i32, i32 }
%struct.drm_i915_private = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@DP_DPCD_REV = common dso_local global i64 0, align 8
@DP_EDP_DPCD_REV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"eDP DPCD: %*ph\0A\00", align 1
@DP_EDP_14 = common dso_local global i64 0, align 8
@DP_MAX_SUPPORTED_RATES = common dso_local global i32 0, align 4
@DP_SUPPORTED_LINK_RATES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_dp*)* @intel_edp_init_dpcd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_edp_init_dpcd(%struct.intel_dp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_dp*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %3, align 8
  %9 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %10 = call %struct.TYPE_6__* @dp_to_dig_port(%struct.intel_dp* %9)
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.drm_i915_private* @to_i915(i32 %14)
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %4, align 8
  %16 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %17 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* @DP_DPCD_REV, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %26 = call i32 @intel_dp_read_dpcd(%struct.intel_dp* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %130

29:                                               ; preds = %1
  %30 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %31 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %30, i32 0, i32 5
  %32 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %33 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %32, i32 0, i32 6
  %34 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %35 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = call i32 @drm_dp_is_branch(i64* %36)
  %38 = call i32 @drm_dp_read_desc(i32* %31, i32* %33, i32 %37)
  %39 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %40 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %39, i32 0, i32 5
  %41 = load i32, i32* @DP_EDP_DPCD_REV, align 4
  %42 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %43 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = call i32 @drm_dp_dpcd_read(i32* %40, i32 %41, i64* %44, i32 8)
  %46 = sext i32 %45 to i64
  %47 = icmp eq i64 %46, 8
  br i1 %47, label %48, label %53

48:                                               ; preds = %29
  %49 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %50 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 8, i64* %51)
  br label %53

53:                                               ; preds = %48, %29
  %54 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %55 = call i32 @intel_psr_init_dpcd(%struct.intel_dp* %54)
  %56 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %57 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @DP_EDP_14, align 8
  %62 = icmp sge i64 %60, %61
  br i1 %62, label %63, label %105

63:                                               ; preds = %53
  %64 = load i32, i32* @DP_MAX_SUPPORTED_RATES, align 4
  %65 = zext i32 %64 to i64
  %66 = call i8* @llvm.stacksave()
  store i8* %66, i8** %5, align 8
  %67 = alloca i64, i64 %65, align 16
  store i64 %65, i64* %6, align 8
  %68 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %69 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %68, i32 0, i32 5
  %70 = load i32, i32* @DP_SUPPORTED_LINK_RATES, align 4
  %71 = mul nuw i64 8, %65
  %72 = trunc i64 %71 to i32
  %73 = call i32 @drm_dp_dpcd_read(i32* %69, i32 %70, i64* %67, i32 %72)
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %97, %63
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @ARRAY_SIZE(i64* %67)
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %100

78:                                               ; preds = %74
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %67, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @le16_to_cpu(i64 %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  br label %100

87:                                               ; preds = %78
  %88 = load i32, i32* %8, align 4
  %89 = mul nsw i32 %88, 200
  %90 = sdiv i32 %89, 10
  %91 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %92 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %90, i32* %96, align 4
  br label %97

97:                                               ; preds = %87
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %74

100:                                              ; preds = %86, %74
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %103 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 8
  %104 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %104)
  br label %105

105:                                              ; preds = %100, %53
  %106 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %107 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %112 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %111, i32 0, i32 4
  store i32 1, i32* %112, align 4
  br label %116

113:                                              ; preds = %105
  %114 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %115 = call i32 @intel_dp_set_sink_rates(%struct.intel_dp* %114)
  br label %116

116:                                              ; preds = %113, %110
  %117 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %118 = call i32 @intel_dp_set_common_rates(%struct.intel_dp* %117)
  %119 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %120 = call i32 @INTEL_GEN(%struct.drm_i915_private* %119)
  %121 = icmp sge i32 %120, 10
  br i1 %121, label %126, label %122

122:                                              ; preds = %116
  %123 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %124 = call i64 @IS_GEMINILAKE(%struct.drm_i915_private* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %122, %116
  %127 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %128 = call i32 @intel_dp_get_dsc_sink_cap(%struct.intel_dp* %127)
  br label %129

129:                                              ; preds = %126, %122
  store i32 1, i32* %2, align 4
  br label %130

130:                                              ; preds = %129, %28
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.TYPE_6__* @dp_to_dig_port(%struct.intel_dp*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @intel_dp_read_dpcd(%struct.intel_dp*) #1

declare dso_local i32 @drm_dp_read_desc(i32*, i32*, i32) #1

declare dso_local i32 @drm_dp_is_branch(i64*) #1

declare dso_local i32 @drm_dp_dpcd_read(i32*, i32, i64*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i64*) #1

declare dso_local i32 @intel_psr_init_dpcd(%struct.intel_dp*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @le16_to_cpu(i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @intel_dp_set_sink_rates(%struct.intel_dp*) #1

declare dso_local i32 @intel_dp_set_common_rates(%struct.intel_dp*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEMINILAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_dp_get_dsc_sink_cap(%struct.intel_dp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
