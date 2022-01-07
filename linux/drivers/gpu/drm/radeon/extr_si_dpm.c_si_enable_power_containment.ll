; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_enable_power_containment.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_enable_power_containment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32 }
%struct.ni_power_info = type { i32, i64 }

@PPSMC_TDPClampingActive = common dso_local global i32 0, align 4
@PPSMC_Result_OK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PPSMC_TDPClampingInactive = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.radeon_ps*, i32)* @si_enable_power_containment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_enable_power_containment(%struct.radeon_device* %0, %struct.radeon_ps* %1, i32 %2) #0 {
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
  br i1 %15, label %16, label %55

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %16
  %20 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %21 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %22 = call i32 @si_should_disable_uvd_powertune(%struct.radeon_device* %20, %struct.radeon_ps* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %19
  %25 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %26 = load i32, i32* @PPSMC_TDPClampingActive, align 4
  %27 = call i64 @si_send_msg_to_smc(%struct.radeon_device* %25, i32 %26)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @PPSMC_Result_OK, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %9, align 4
  %34 = load %struct.ni_power_info*, %struct.ni_power_info** %7, align 8
  %35 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  br label %39

36:                                               ; preds = %24
  %37 = load %struct.ni_power_info*, %struct.ni_power_info** %7, align 8
  %38 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  br label %39

39:                                               ; preds = %36, %31
  br label %40

40:                                               ; preds = %39, %19
  br label %54

41:                                               ; preds = %16
  %42 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %43 = load i32, i32* @PPSMC_TDPClampingInactive, align 4
  %44 = call i64 @si_send_msg_to_smc(%struct.radeon_device* %42, i32 %43)
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* @PPSMC_Result_OK, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %48, %41
  %52 = load %struct.ni_power_info*, %struct.ni_power_info** %7, align 8
  %53 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  br label %54

54:                                               ; preds = %51, %40
  br label %55

55:                                               ; preds = %54, %3
  %56 = load i32, i32* %9, align 4
  ret i32 %56
}

declare dso_local %struct.ni_power_info* @ni_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @si_should_disable_uvd_powertune(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i64 @si_send_msg_to_smc(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
