; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_calculate_engine_speed_stepping_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_calculate_engine_speed_stepping_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.rv6xx_ps = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.rv6xx_power_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, i64, i32* }

@R600_POWER_LEVEL_LOW = common dso_local global i64 0, align 8
@R600_POWER_LEVEL_MEDIUM = common dso_local global i64 0, align 8
@R600_POWER_LEVEL_HIGH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.rv6xx_ps*)* @rv6xx_calculate_engine_speed_stepping_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv6xx_calculate_engine_speed_stepping_parameters(%struct.radeon_device* %0, %struct.rv6xx_ps* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.rv6xx_ps*, align 8
  %5 = alloca %struct.rv6xx_power_info*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.rv6xx_ps* %1, %struct.rv6xx_ps** %4, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = call %struct.rv6xx_power_info* @rv6xx_get_pi(%struct.radeon_device* %6)
  store %struct.rv6xx_power_info* %7, %struct.rv6xx_power_info** %5, align 8
  %8 = load %struct.rv6xx_ps*, %struct.rv6xx_ps** %4, align 8
  %9 = getelementptr inbounds %struct.rv6xx_ps, %struct.rv6xx_ps* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %5, align 8
  %13 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @R600_POWER_LEVEL_LOW, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  store i32 %11, i32* %17, align 4
  %18 = load %struct.rv6xx_ps*, %struct.rv6xx_ps** %4, align 8
  %19 = getelementptr inbounds %struct.rv6xx_ps, %struct.rv6xx_ps* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %5, align 8
  %23 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @R600_POWER_LEVEL_MEDIUM, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32 %21, i32* %27, align 4
  %28 = load %struct.rv6xx_ps*, %struct.rv6xx_ps** %4, align 8
  %29 = getelementptr inbounds %struct.rv6xx_ps, %struct.rv6xx_ps* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %5, align 8
  %33 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @R600_POWER_LEVEL_HIGH, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32 %31, i32* %37, align 4
  %38 = load i64, i64* @R600_POWER_LEVEL_LOW, align 8
  %39 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %5, align 8
  %40 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  store i64 %38, i64* %41, align 8
  %42 = load i64, i64* @R600_POWER_LEVEL_MEDIUM, align 8
  %43 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %5, align 8
  %44 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  store i64 %42, i64* %45, align 8
  %46 = load i64, i64* @R600_POWER_LEVEL_HIGH, align 8
  %47 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %5, align 8
  %48 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  store i64 %46, i64* %49, align 8
  ret void
}

declare dso_local %struct.rv6xx_power_info* @rv6xx_get_pi(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
