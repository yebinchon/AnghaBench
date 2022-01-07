; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_btc_dpm.c_btc_init_stutter_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_btc_dpm.c_btc_init_stutter_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.rv7xx_power_info = type { i64, i64 }

@MC_PMG_AUTO_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @btc_init_stutter_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc_init_stutter_mode(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.rv7xx_power_info*, align 8
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %6 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %5)
  store %struct.rv7xx_power_info* %6, %struct.rv7xx_power_info** %3, align 8
  %7 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %8 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %1
  %12 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %13 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %11
  %17 = load i32, i32* @MC_PMG_AUTO_CFG, align 4
  %18 = call i32 @RREG32(i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = and i32 512, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, -1013
  %25 = or i32 %24, 516
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* @MC_PMG_AUTO_CFG, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @WREG32(i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %22, %16
  br label %30

30:                                               ; preds = %29, %11
  br label %31

31:                                               ; preds = %30, %1
  ret void
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
