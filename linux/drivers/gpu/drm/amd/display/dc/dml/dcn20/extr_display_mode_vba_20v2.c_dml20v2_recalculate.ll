; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/dcn20/extr_display_mode_vba_20v2.c_dml20v2_recalculate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/dcn20/extr_display_mode_vba_20v2.c_dml20v2_recalculate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display_mode_lib = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { double, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dml20v2_recalculate(%struct.display_mode_lib* %0) #0 {
  %2 = alloca %struct.display_mode_lib*, align 8
  store %struct.display_mode_lib* %0, %struct.display_mode_lib** %2, align 8
  %3 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %4 = call i32 @ModeSupportAndSystemConfiguration(%struct.display_mode_lib* %3)
  %5 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %6 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %10 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %8, %12
  %14 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %15 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = mul nsw i32 %13, %17
  %19 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %20 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %24 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = mul nsw i32 %22, %26
  %28 = call double @dml_min(i32 %18, i32 %27)
  %29 = fdiv double %28, 1.000000e+03
  %30 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %31 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store double %29, double* %32, align 8
  %33 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %34 = call i32 @PixelClockAdjustmentForProgressiveToInterlaceUnit(%struct.display_mode_lib* %33)
  %35 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %36 = call i32 @dml20v2_DisplayPipeConfiguration(%struct.display_mode_lib* %35)
  %37 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %38 = call i32 @dml20v2_DISPCLKDPPCLKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalculation(%struct.display_mode_lib* %37)
  ret void
}

declare dso_local i32 @ModeSupportAndSystemConfiguration(%struct.display_mode_lib*) #1

declare dso_local double @dml_min(i32, i32) #1

declare dso_local i32 @PixelClockAdjustmentForProgressiveToInterlaceUnit(%struct.display_mode_lib*) #1

declare dso_local i32 @dml20v2_DisplayPipeConfiguration(%struct.display_mode_lib*) #1

declare dso_local i32 @dml20v2_DISPCLKDPPCLKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalculation(%struct.display_mode_lib*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
