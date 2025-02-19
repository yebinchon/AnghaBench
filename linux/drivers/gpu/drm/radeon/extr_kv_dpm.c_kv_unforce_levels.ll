; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_dpm.c_kv_unforce_levels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_dpm.c_kv_unforce_levels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64 }

@CHIP_KABINI = common dso_local global i64 0, align 8
@CHIP_MULLINS = common dso_local global i64 0, align 8
@PPSMC_MSG_NoForcedLevel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @kv_unforce_levels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kv_unforce_levels(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %4 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %5 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @CHIP_KABINI, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %11 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CHIP_MULLINS, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %9, %1
  %16 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %17 = load i32, i32* @PPSMC_MSG_NoForcedLevel, align 4
  %18 = call i32 @kv_notify_message_to_smu(%struct.radeon_device* %16, i32 %17)
  store i32 %18, i32* %2, align 4
  br label %22

19:                                               ; preds = %9
  %20 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %21 = call i32 @kv_set_enabled_levels(%struct.radeon_device* %20)
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %19, %15
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @kv_notify_message_to_smu(%struct.radeon_device*, i32) #1

declare dso_local i32 @kv_set_enabled_levels(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
