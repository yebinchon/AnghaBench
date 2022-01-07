; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_enable_power_containment.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_enable_power_containment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32, i32 }
%struct.ni_power_info = type { i32, i64 }

@PPSMC_TDPClampingActive = common dso_local global i32 0, align 4
@PPSMC_Result_OK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PPSMC_TDPClampingInactive = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.radeon_ps*, i32)* @ni_enable_power_containment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_enable_power_containment(%struct.radeon_device* %0, %struct.radeon_ps* %1, i32 %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ni_power_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %11 = call %struct.ni_power_info* @ni_get_pi(%struct.radeon_device* %10)
  store %struct.ni_power_info* %11, %struct.ni_power_info** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.ni_power_info*, %struct.ni_power_info** %7, align 8
  %13 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %59

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %16
  %20 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %21 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %24 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @r600_is_uvd_state(i32 %22, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %19
  %29 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %30 = load i32, i32* @PPSMC_TDPClampingActive, align 4
  %31 = call i64 @rv770_send_msg_to_smc(%struct.radeon_device* %29, i32 %30)
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @PPSMC_Result_OK, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %9, align 4
  %38 = load %struct.ni_power_info*, %struct.ni_power_info** %7, align 8
  %39 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  br label %43

40:                                               ; preds = %28
  %41 = load %struct.ni_power_info*, %struct.ni_power_info** %7, align 8
  %42 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  br label %43

43:                                               ; preds = %40, %35
  br label %44

44:                                               ; preds = %43, %19
  br label %58

45:                                               ; preds = %16
  %46 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %47 = load i32, i32* @PPSMC_TDPClampingInactive, align 4
  %48 = call i64 @rv770_send_msg_to_smc(%struct.radeon_device* %46, i32 %47)
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* @PPSMC_Result_OK, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %52, %45
  %56 = load %struct.ni_power_info*, %struct.ni_power_info** %7, align 8
  %57 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  br label %58

58:                                               ; preds = %55, %44
  br label %59

59:                                               ; preds = %58, %3
  %60 = load i32, i32* %9, align 4
  ret i32 %60
}

declare dso_local %struct.ni_power_info* @ni_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @r600_is_uvd_state(i32, i32) #1

declare dso_local i64 @rv770_send_msg_to_smc(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
