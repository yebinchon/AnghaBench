; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_calculate_ap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_calculate_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.rv6xx_ps = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.rv6xx_power_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32*, i64* }

@R600_PM_NUMBER_OF_ACTIVITY_LEVELS = common dso_local global i32 0, align 4
@R600_AH_DFLT = common dso_local global i32 0, align 4
@R600_LMP_DFLT = common dso_local global i32 0, align 4
@R600_RLP_DFLT = common dso_local global i32 0, align 4
@R600_LHP_DFLT = common dso_local global i32 0, align 4
@R600_RMP_DFLT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.rv6xx_ps*)* @rv6xx_calculate_ap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv6xx_calculate_ap(%struct.radeon_device* %0, %struct.rv6xx_ps* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.rv6xx_ps*, align 8
  %5 = alloca %struct.rv6xx_power_info*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.rv6xx_ps* %1, %struct.rv6xx_ps** %4, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = call %struct.rv6xx_power_info* @rv6xx_get_pi(%struct.radeon_device* %6)
  store %struct.rv6xx_power_info* %7, %struct.rv6xx_power_info** %5, align 8
  %8 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %5, align 8
  %9 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  store i64 0, i64* %12, align 8
  %13 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %5, align 8
  %14 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* @R600_PM_NUMBER_OF_ACTIVITY_LEVELS, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  store i32 100, i32* %20, align 4
  %21 = load %struct.rv6xx_ps*, %struct.rv6xx_ps** %4, align 8
  %22 = getelementptr inbounds %struct.rv6xx_ps, %struct.rv6xx_ps* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.rv6xx_ps*, %struct.rv6xx_ps** %4, align 8
  %26 = getelementptr inbounds %struct.rv6xx_ps, %struct.rv6xx_ps* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @R600_AH_DFLT, align 4
  %30 = load i32, i32* @R600_LMP_DFLT, align 4
  %31 = load i32, i32* @R600_RLP_DFLT, align 4
  %32 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %5, align 8
  %33 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 1
  %37 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %5, align 8
  %38 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = call i32 @rv6xx_calculate_t(i32 %24, i32 %28, i32 %29, i32 %30, i32 %31, i64* %36, i32* %41)
  %43 = load %struct.rv6xx_ps*, %struct.rv6xx_ps** %4, align 8
  %44 = getelementptr inbounds %struct.rv6xx_ps, %struct.rv6xx_ps* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.rv6xx_ps*, %struct.rv6xx_ps** %4, align 8
  %48 = getelementptr inbounds %struct.rv6xx_ps, %struct.rv6xx_ps* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @R600_AH_DFLT, align 4
  %52 = load i32, i32* @R600_LHP_DFLT, align 4
  %53 = load i32, i32* @R600_RMP_DFLT, align 4
  %54 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %5, align 8
  %55 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 2
  %59 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %5, align 8
  %60 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = call i32 @rv6xx_calculate_t(i32 %46, i32 %50, i32 %51, i32 %52, i32 %53, i64* %58, i32* %63)
  ret void
}

declare dso_local %struct.rv6xx_power_info* @rv6xx_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @rv6xx_calculate_t(i32, i32, i32, i32, i32, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
