; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_calculate_memory_clock_stepping_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_calculate_memory_clock_stepping_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.rv6xx_ps = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.rv6xx_power_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64*, i64, i64, i64 }

@R600_POWER_LEVEL_CTXSW = common dso_local global i64 0, align 8
@R600_POWER_LEVEL_HIGH = common dso_local global i64 0, align 8
@R600_POWER_LEVEL_MEDIUM = common dso_local global i64 0, align 8
@R600_POWER_LEVEL_LOW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.rv6xx_ps*)* @rv6xx_calculate_memory_clock_stepping_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv6xx_calculate_memory_clock_stepping_parameters(%struct.radeon_device* %0, %struct.rv6xx_ps* %1) #0 {
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
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %5, align 8
  %13 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* @R600_POWER_LEVEL_CTXSW, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  store i64 %11, i64* %17, align 8
  %18 = load %struct.rv6xx_ps*, %struct.rv6xx_ps** %4, align 8
  %19 = getelementptr inbounds %struct.rv6xx_ps, %struct.rv6xx_ps* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %5, align 8
  %23 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* @R600_POWER_LEVEL_HIGH, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  store i64 %21, i64* %27, align 8
  %28 = load %struct.rv6xx_ps*, %struct.rv6xx_ps** %4, align 8
  %29 = getelementptr inbounds %struct.rv6xx_ps, %struct.rv6xx_ps* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %5, align 8
  %33 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* @R600_POWER_LEVEL_MEDIUM, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  store i64 %31, i64* %37, align 8
  %38 = load %struct.rv6xx_ps*, %struct.rv6xx_ps** %4, align 8
  %39 = getelementptr inbounds %struct.rv6xx_ps, %struct.rv6xx_ps* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %5, align 8
  %43 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* @R600_POWER_LEVEL_LOW, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  store i64 %41, i64* %47, align 8
  %48 = load i64, i64* @R600_POWER_LEVEL_HIGH, align 8
  %49 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %5, align 8
  %50 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  store i64 %48, i64* %51, align 8
  %52 = load %struct.rv6xx_ps*, %struct.rv6xx_ps** %4, align 8
  %53 = getelementptr inbounds %struct.rv6xx_ps, %struct.rv6xx_ps* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.rv6xx_ps*, %struct.rv6xx_ps** %4, align 8
  %57 = getelementptr inbounds %struct.rv6xx_ps, %struct.rv6xx_ps* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %55, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %2
  %62 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %5, align 8
  %63 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %5, align 8
  %67 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  store i64 %65, i64* %68, align 8
  br label %74

69:                                               ; preds = %2
  %70 = load i64, i64* @R600_POWER_LEVEL_MEDIUM, align 8
  %71 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %5, align 8
  %72 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  store i64 %70, i64* %73, align 8
  br label %74

74:                                               ; preds = %69, %61
  %75 = load %struct.rv6xx_ps*, %struct.rv6xx_ps** %4, align 8
  %76 = getelementptr inbounds %struct.rv6xx_ps, %struct.rv6xx_ps* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.rv6xx_ps*, %struct.rv6xx_ps** %4, align 8
  %80 = getelementptr inbounds %struct.rv6xx_ps, %struct.rv6xx_ps* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %78, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %74
  %85 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %5, align 8
  %86 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %5, align 8
  %90 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 3
  store i64 %88, i64* %91, align 8
  br label %97

92:                                               ; preds = %74
  %93 = load i64, i64* @R600_POWER_LEVEL_LOW, align 8
  %94 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %5, align 8
  %95 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 3
  store i64 %93, i64* %96, align 8
  br label %97

97:                                               ; preds = %92, %84
  ret void
}

declare dso_local %struct.rv6xx_power_info* @rv6xx_get_pi(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
