; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_arcturus_ppt.c_arcturus_set_power_profile_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_arcturus_ppt.c_arcturus_set_power_profile_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PP_SMC_POWER_PROFILE_CUSTOM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Invalid power profile mode %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Unsupported power profile mode %d on arcturus\0A\00", align 1
@SMU_MSG_SetWorkloadMask = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Fail to set workload type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, i64*, i64)* @arcturus_set_power_profile_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arcturus_set_power_profile_mode(%struct.smu_context* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smu_context*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i64*, i64** %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %16 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %60

22:                                               ; preds = %3
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @PP_SMC_POWER_PROFILE_CUSTOM, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i64, i64* %9, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %60

32:                                               ; preds = %22
  %33 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @smu_workload_get_type(%struct.smu_context* %33, i64 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load i64, i64* %9, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %60

44:                                               ; preds = %32
  %45 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %46 = load i32, i32* @SMU_MSG_SetWorkloadMask, align 4
  %47 = load i32, i32* %8, align 4
  %48 = shl i32 1, %47
  %49 = call i32 @smu_send_smc_msg_with_param(%struct.smu_context* %45, i32 %46, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %4, align 4
  br label %60

56:                                               ; preds = %44
  %57 = load i64, i64* %9, align 8
  %58 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %59 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %56, %52, %38, %26, %19
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @smu_workload_get_type(%struct.smu_context*, i64) #1

declare dso_local i32 @smu_send_smc_msg_with_param(%struct.smu_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
