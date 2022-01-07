; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_btc_dpm.c_btc_is_state_ulv_compatible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_btc_dpm.c_btc_is_state_ulv_compatible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32 }
%struct.rv7xx_ps = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.evergreen_power_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.rv7xx_pl* }
%struct.rv7xx_pl = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.radeon_ps*)* @btc_is_state_ulv_compatible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btc_is_state_ulv_compatible(%struct.radeon_device* %0, %struct.radeon_ps* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca %struct.rv7xx_ps*, align 8
  %7 = alloca %struct.evergreen_power_info*, align 8
  %8 = alloca %struct.rv7xx_pl*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %5, align 8
  %9 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %10 = call %struct.rv7xx_ps* @rv770_get_ps(%struct.radeon_ps* %9)
  store %struct.rv7xx_ps* %10, %struct.rv7xx_ps** %6, align 8
  %11 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %12 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %11)
  store %struct.evergreen_power_info* %12, %struct.evergreen_power_info** %7, align 8
  %13 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %7, align 8
  %14 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %15, align 8
  store %struct.rv7xx_pl* %16, %struct.rv7xx_pl** %8, align 8
  %17 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %6, align 8
  %18 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %8, align 8
  %22 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

26:                                               ; preds = %2
  %27 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %6, align 8
  %28 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %8, align 8
  %32 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %37

36:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %35, %25
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.rv7xx_ps* @rv770_get_ps(%struct.radeon_ps*) #1

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
