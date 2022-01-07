; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_set_power_state_conditionally_enable_ulv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_set_power_state_conditionally_enable_ulv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32 }
%struct.si_power_info = type { %struct.si_ulv_param }
%struct.si_ulv_param = type { i64 }

@PPSMC_MSG_EnableULV = common dso_local global i32 0, align 4
@PPSMC_Result_OK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.radeon_ps*)* @si_set_power_state_conditionally_enable_ulv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_set_power_state_conditionally_enable_ulv(%struct.radeon_device* %0, %struct.radeon_ps* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca %struct.si_power_info*, align 8
  %7 = alloca %struct.si_ulv_param*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %5, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %9 = call %struct.si_power_info* @si_get_pi(%struct.radeon_device* %8)
  store %struct.si_power_info* %9, %struct.si_power_info** %6, align 8
  %10 = load %struct.si_power_info*, %struct.si_power_info** %6, align 8
  %11 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %10, i32 0, i32 0
  store %struct.si_ulv_param* %11, %struct.si_ulv_param** %7, align 8
  %12 = load %struct.si_ulv_param*, %struct.si_ulv_param** %7, align 8
  %13 = getelementptr inbounds %struct.si_ulv_param, %struct.si_ulv_param* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %2
  %17 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %18 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %19 = call i64 @si_is_state_ulv_compatible(%struct.radeon_device* %17, %struct.radeon_ps* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %16
  %22 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %23 = load i32, i32* @PPSMC_MSG_EnableULV, align 4
  %24 = call i64 @si_send_msg_to_smc(%struct.radeon_device* %22, i32 %23)
  %25 = load i64, i64* @PPSMC_Result_OK, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  br label %31

31:                                               ; preds = %28, %27
  %32 = phi i32 [ 0, %27 ], [ %30, %28 ]
  store i32 %32, i32* %3, align 4
  br label %35

33:                                               ; preds = %16
  br label %34

34:                                               ; preds = %33, %2
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %31
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.si_power_info* @si_get_pi(%struct.radeon_device*) #1

declare dso_local i64 @si_is_state_ulv_compatible(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i64 @si_send_msg_to_smc(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
