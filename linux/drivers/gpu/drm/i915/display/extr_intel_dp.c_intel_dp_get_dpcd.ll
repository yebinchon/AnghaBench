; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_get_dpcd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_get_dpcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32*, i32, i32, i32, i32 }

@DP_DPCD_QUIRK_NO_SINK_COUNT = common dso_local global i32 0, align 4
@DP_SINK_COUNT = common dso_local global i32 0, align 4
@DP_DPCD_REV = common dso_local global i64 0, align 8
@DP_DOWNSTREAM_PORT_0 = common dso_local global i32 0, align 4
@DP_MAX_DOWNSTREAM_PORTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_dp*)* @intel_dp_get_dpcd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dp_get_dpcd(%struct.intel_dp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_dp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %3, align 8
  %6 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %7 = call i32 @intel_dp_read_dpcd(%struct.intel_dp* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %85

10:                                               ; preds = %1
  %11 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %12 = call i32 @intel_dp_is_edp(%struct.intel_dp* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %28, label %14

14:                                               ; preds = %10
  %15 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %16 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %15, i32 0, i32 2
  %17 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %18 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %17, i32 0, i32 4
  %19 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %20 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @drm_dp_is_branch(i32* %21)
  %23 = call i32 @drm_dp_read_desc(i32* %16, i32* %18, i32 %22)
  %24 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %25 = call i32 @intel_dp_set_sink_rates(%struct.intel_dp* %24)
  %26 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %27 = call i32 @intel_dp_set_common_rates(%struct.intel_dp* %26)
  br label %28

28:                                               ; preds = %14, %10
  %29 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %30 = call i32 @intel_dp_is_edp(%struct.intel_dp* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %57, label %32

32:                                               ; preds = %28
  %33 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %34 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %33, i32 0, i32 4
  %35 = load i32, i32* @DP_DPCD_QUIRK_NO_SINK_COUNT, align 4
  %36 = call i32 @drm_dp_has_quirk(i32* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %57, label %38

38:                                               ; preds = %32
  %39 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %40 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %39, i32 0, i32 2
  %41 = load i32, i32* @DP_SINK_COUNT, align 4
  %42 = call i32 @drm_dp_dpcd_readb(i32* %40, i32 %41, i32* %4)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %43, 1
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %85

46:                                               ; preds = %38
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @DP_GET_SINK_COUNT(i32 %47)
  %49 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %50 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %52 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %85

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56, %32, %28
  %58 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %59 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @drm_dp_is_branch(i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %57
  store i32 1, i32* %2, align 4
  br label %85

64:                                               ; preds = %57
  %65 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %66 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @DP_DPCD_REV, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 16
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  store i32 1, i32* %2, align 4
  br label %85

73:                                               ; preds = %64
  %74 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %75 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %74, i32 0, i32 2
  %76 = load i32, i32* @DP_DOWNSTREAM_PORT_0, align 4
  %77 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %78 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @DP_MAX_DOWNSTREAM_PORTS, align 4
  %81 = call i64 @drm_dp_dpcd_read(i32* %75, i32 %76, i32 %79, i32 %80)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  store i32 0, i32* %2, align 4
  br label %85

84:                                               ; preds = %73
  store i32 1, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %83, %72, %63, %55, %45, %9
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @intel_dp_read_dpcd(%struct.intel_dp*) #1

declare dso_local i32 @intel_dp_is_edp(%struct.intel_dp*) #1

declare dso_local i32 @drm_dp_read_desc(i32*, i32*, i32) #1

declare dso_local i32 @drm_dp_is_branch(i32*) #1

declare dso_local i32 @intel_dp_set_sink_rates(%struct.intel_dp*) #1

declare dso_local i32 @intel_dp_set_common_rates(%struct.intel_dp*) #1

declare dso_local i32 @drm_dp_has_quirk(i32*, i32) #1

declare dso_local i32 @drm_dp_dpcd_readb(i32*, i32, i32*) #1

declare dso_local i32 @DP_GET_SINK_COUNT(i32) #1

declare dso_local i64 @drm_dp_dpcd_read(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
