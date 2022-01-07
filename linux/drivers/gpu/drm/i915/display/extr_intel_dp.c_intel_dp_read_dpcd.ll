; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_read_dpcd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_read_dpcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i64*, i32 }

@.str = private unnamed_addr constant [12 x i8] c"DPCD: %*ph\0A\00", align 1
@DP_DPCD_REV = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_dp_read_dpcd(%struct.intel_dp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_dp*, align 8
  store %struct.intel_dp* %0, %struct.intel_dp** %3, align 8
  %4 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %5 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %4, i32 0, i32 1
  %6 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %7 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  %9 = call i64 @drm_dp_dpcd_read(i32* %5, i32 0, i64* %8, i32 8)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

12:                                               ; preds = %1
  %13 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %14 = call i32 @intel_dp_extended_receiver_capabilities(%struct.intel_dp* %13)
  %15 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %16 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 8, i64* %17)
  %19 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %20 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* @DP_DPCD_REV, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %12, %11
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i64 @drm_dp_dpcd_read(i32*, i32, i64*, i32) #1

declare dso_local i32 @intel_dp_extended_receiver_capabilities(%struct.intel_dp*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
