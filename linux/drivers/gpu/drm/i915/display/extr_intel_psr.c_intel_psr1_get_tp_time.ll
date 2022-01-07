; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_psr.c_intel_psr1_get_tp_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_psr.c_intel_psr1_get_tp_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@EDP_PSR_TP4_TIME_0US = common dso_local global i32 0, align 4
@EDP_PSR_TP1_TIME_0us = common dso_local global i32 0, align 4
@EDP_PSR_TP1_TIME_100us = common dso_local global i32 0, align 4
@EDP_PSR_TP1_TIME_500us = common dso_local global i32 0, align 4
@EDP_PSR_TP1_TIME_2500us = common dso_local global i32 0, align 4
@EDP_PSR_TP2_TP3_TIME_0us = common dso_local global i32 0, align 4
@EDP_PSR_TP2_TP3_TIME_100us = common dso_local global i32 0, align 4
@EDP_PSR_TP2_TP3_TIME_500us = common dso_local global i32 0, align 4
@EDP_PSR_TP2_TP3_TIME_2500us = common dso_local global i32 0, align 4
@EDP_PSR_TP1_TP3_SEL = common dso_local global i32 0, align 4
@EDP_PSR_TP1_TP2_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_dp*)* @intel_psr1_get_tp_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_psr1_get_tp_time(%struct.intel_dp* %0) #0 {
  %2 = alloca %struct.intel_dp*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %2, align 8
  %5 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %6 = call %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp* %5)
  store %struct.drm_i915_private* %6, %struct.drm_i915_private** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %8 = call i32 @INTEL_GEN(%struct.drm_i915_private* %7)
  %9 = icmp sge i32 %8, 11
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @EDP_PSR_TP4_TIME_0US, align 4
  %12 = load i32, i32* %4, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %10, %1
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %16 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load i32, i32* @EDP_PSR_TP1_TIME_0us, align 4
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %4, align 4
  br label %53

25:                                               ; preds = %14
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %27 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sle i32 %30, 100
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i32, i32* @EDP_PSR_TP1_TIME_100us, align 4
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %4, align 4
  br label %52

36:                                               ; preds = %25
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %38 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp sle i32 %41, 500
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32, i32* @EDP_PSR_TP1_TIME_500us, align 4
  %45 = load i32, i32* %4, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %4, align 4
  br label %51

47:                                               ; preds = %36
  %48 = load i32, i32* @EDP_PSR_TP1_TIME_2500us, align 4
  %49 = load i32, i32* %4, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %47, %43
  br label %52

52:                                               ; preds = %51, %32
  br label %53

53:                                               ; preds = %52, %21
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %55 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load i32, i32* @EDP_PSR_TP2_TP3_TIME_0us, align 4
  %62 = load i32, i32* %4, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %4, align 4
  br label %92

64:                                               ; preds = %53
  %65 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %66 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp sle i32 %69, 100
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load i32, i32* @EDP_PSR_TP2_TP3_TIME_100us, align 4
  %73 = load i32, i32* %4, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %4, align 4
  br label %91

75:                                               ; preds = %64
  %76 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %77 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp sle i32 %80, 500
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  %83 = load i32, i32* @EDP_PSR_TP2_TP3_TIME_500us, align 4
  %84 = load i32, i32* %4, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %4, align 4
  br label %90

86:                                               ; preds = %75
  %87 = load i32, i32* @EDP_PSR_TP2_TP3_TIME_2500us, align 4
  %88 = load i32, i32* %4, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %86, %82
  br label %91

91:                                               ; preds = %90, %71
  br label %92

92:                                               ; preds = %91, %60
  %93 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %94 = call i64 @intel_dp_source_supports_hbr2(%struct.intel_dp* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %92
  %97 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %98 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @drm_dp_tps3_supported(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load i32, i32* @EDP_PSR_TP1_TP3_SEL, align 4
  %104 = load i32, i32* %4, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %4, align 4
  br label %110

106:                                              ; preds = %96, %92
  %107 = load i32, i32* @EDP_PSR_TP1_TP2_SEL, align 4
  %108 = load i32, i32* %4, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %106, %102
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @intel_dp_source_supports_hbr2(%struct.intel_dp*) #1

declare dso_local i64 @drm_dp_tps3_supported(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
