; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_pps_verify_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_pps_verify_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { %struct.edp_power_seq }
%struct.edp_power_seq = type { i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [20 x i8] c"PPS state mismatch\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"sw\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"hw\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dp*)* @intel_pps_verify_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pps_verify_state(%struct.intel_dp* %0) #0 {
  %2 = alloca %struct.intel_dp*, align 8
  %3 = alloca %struct.edp_power_seq, align 8
  %4 = alloca %struct.edp_power_seq*, align 8
  store %struct.intel_dp* %0, %struct.intel_dp** %2, align 8
  %5 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %6 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %5, i32 0, i32 0
  store %struct.edp_power_seq* %6, %struct.edp_power_seq** %4, align 8
  %7 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %8 = call i32 @intel_pps_readout_hw_state(%struct.intel_dp* %7, %struct.edp_power_seq* %3)
  %9 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %3, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.edp_power_seq*, %struct.edp_power_seq** %4, align 8
  %12 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %10, %13
  br i1 %14, label %43, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %3, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.edp_power_seq*, %struct.edp_power_seq** %4, align 8
  %19 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %43, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %3, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.edp_power_seq*, %struct.edp_power_seq** %4, align 8
  %26 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %43, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %3, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.edp_power_seq*, %struct.edp_power_seq** %4, align 8
  %33 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %43, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %3, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.edp_power_seq*, %struct.edp_power_seq** %4, align 8
  %40 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %36, %29, %22, %15, %1
  %44 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.edp_power_seq*, %struct.edp_power_seq** %4, align 8
  %46 = call i32 @intel_pps_dump_state(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %struct.edp_power_seq* %45)
  %47 = call i32 @intel_pps_dump_state(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.edp_power_seq* %3)
  br label %48

48:                                               ; preds = %43, %36
  ret void
}

declare dso_local i32 @intel_pps_readout_hw_state(%struct.intel_dp*, %struct.edp_power_seq*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @intel_pps_dump_state(i8*, %struct.edp_power_seq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
