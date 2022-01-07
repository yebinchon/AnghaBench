; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_enable_smc_cac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_enable_smc_cac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.ci_power_info = type { i32, i64 }

@PPSMC_MSG_EnableCac = common dso_local global i32 0, align 4
@PPSMC_Result_OK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PPSMC_MSG_DisableCac = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i32)* @ci_enable_smc_cac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_enable_smc_cac(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ci_power_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = call %struct.ci_power_info* @ci_get_pi(%struct.radeon_device* %8)
  store %struct.ci_power_info* %9, %struct.ci_power_info** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.ci_power_info*, %struct.ci_power_info** %5, align 8
  %11 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %46

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %14
  %18 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %19 = load i32, i32* @PPSMC_MSG_EnableCac, align 4
  %20 = call i64 @ci_send_msg_to_smc(%struct.radeon_device* %18, i32 %19)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @PPSMC_Result_OK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  %27 = load %struct.ci_power_info*, %struct.ci_power_info** %5, align 8
  %28 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  br label %32

29:                                               ; preds = %17
  %30 = load %struct.ci_power_info*, %struct.ci_power_info** %5, align 8
  %31 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  br label %32

32:                                               ; preds = %29, %24
  br label %45

33:                                               ; preds = %14
  %34 = load %struct.ci_power_info*, %struct.ci_power_info** %5, align 8
  %35 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %40 = load i32, i32* @PPSMC_MSG_DisableCac, align 4
  %41 = call i64 @ci_send_msg_to_smc(%struct.radeon_device* %39, i32 %40)
  %42 = load %struct.ci_power_info*, %struct.ci_power_info** %5, align 8
  %43 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  br label %44

44:                                               ; preds = %38, %33
  br label %45

45:                                               ; preds = %44, %32
  br label %46

46:                                               ; preds = %45, %2
  %47 = load i32, i32* %7, align 4
  ret i32 %47
}

declare dso_local %struct.ci_power_info* @ci_get_pi(%struct.radeon_device*) #1

declare dso_local i64 @ci_send_msg_to_smc(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
