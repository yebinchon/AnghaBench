; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_dpm.c_kv_enable_smc_cac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_dpm.c_kv_enable_smc_cac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.kv_power_info = type { i32, i64 }

@PPSMC_MSG_EnableCac = common dso_local global i32 0, align 4
@PPSMC_MSG_DisableCac = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i32)* @kv_enable_smc_cac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kv_enable_smc_cac(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kv_power_info*, align 8
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = call %struct.kv_power_info* @kv_get_pi(%struct.radeon_device* %7)
  store %struct.kv_power_info* %8, %struct.kv_power_info** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.kv_power_info*, %struct.kv_power_info** %5, align 8
  %10 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %42

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %18 = load i32, i32* @PPSMC_MSG_EnableCac, align 4
  %19 = call i32 @kv_notify_message_to_smu(%struct.radeon_device* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.kv_power_info*, %struct.kv_power_info** %5, align 8
  %24 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  br label %28

25:                                               ; preds = %16
  %26 = load %struct.kv_power_info*, %struct.kv_power_info** %5, align 8
  %27 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  br label %28

28:                                               ; preds = %25, %22
  br label %41

29:                                               ; preds = %13
  %30 = load %struct.kv_power_info*, %struct.kv_power_info** %5, align 8
  %31 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %36 = load i32, i32* @PPSMC_MSG_DisableCac, align 4
  %37 = call i32 @kv_notify_message_to_smu(%struct.radeon_device* %35, i32 %36)
  %38 = load %struct.kv_power_info*, %struct.kv_power_info** %5, align 8
  %39 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  br label %40

40:                                               ; preds = %34, %29
  br label %41

41:                                               ; preds = %40, %28
  br label %42

42:                                               ; preds = %41, %2
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local %struct.kv_power_info* @kv_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @kv_notify_message_to_smu(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
