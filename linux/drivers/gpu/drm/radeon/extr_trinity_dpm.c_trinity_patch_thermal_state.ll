; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_patch_thermal_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_patch_thermal_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.trinity_ps = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, i32, i32, i64, i64, i32, i32 }
%struct.trinity_power_info = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.trinity_ps*, %struct.trinity_ps*)* @trinity_patch_thermal_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trinity_patch_thermal_state(%struct.radeon_device* %0, %struct.trinity_ps* %1, %struct.trinity_ps* %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.trinity_ps*, align 8
  %6 = alloca %struct.trinity_ps*, align 8
  %7 = alloca %struct.trinity_power_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.trinity_ps* %1, %struct.trinity_ps** %5, align 8
  store %struct.trinity_ps* %2, %struct.trinity_ps** %6, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %13 = call %struct.trinity_power_info* @trinity_get_pi(%struct.radeon_device* %12)
  store %struct.trinity_power_info* %13, %struct.trinity_power_info** %7, align 8
  %14 = load %struct.trinity_power_info*, %struct.trinity_power_info** %7, align 8
  %15 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %8, align 8
  store i64 0, i64* %11, align 8
  %18 = load %struct.trinity_ps*, %struct.trinity_ps** %6, align 8
  %19 = icmp ne %struct.trinity_ps* %18, null
  br i1 %19, label %20, label %35

20:                                               ; preds = %3
  %21 = load %struct.trinity_ps*, %struct.trinity_ps** %6, align 8
  %22 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = load i64, i64* %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %9, align 8
  %28 = load %struct.trinity_ps*, %struct.trinity_ps** %6, align 8
  %29 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = load i64, i64* %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %10, align 8
  br label %44

35:                                               ; preds = %3
  %36 = load %struct.trinity_power_info*, %struct.trinity_power_info** %7, align 8
  %37 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %9, align 8
  %40 = load %struct.trinity_power_info*, %struct.trinity_power_info** %7, align 8
  %41 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %10, align 8
  br label %44

44:                                               ; preds = %35, %20
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.trinity_ps*, %struct.trinity_ps** %5, align 8
  %47 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i64 %45, i64* %50, align 8
  %51 = load %struct.trinity_ps*, %struct.trinity_ps** %5, align 8
  %52 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %10, align 8
  %58 = icmp ugt i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %44
  %60 = load i64, i64* %10, align 8
  %61 = load %struct.trinity_ps*, %struct.trinity_ps** %5, align 8
  %62 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  store i64 %60, i64* %65, align 8
  br label %66

66:                                               ; preds = %59, %44
  %67 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %68 = load %struct.trinity_ps*, %struct.trinity_ps** %5, align 8
  %69 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %8, align 8
  %75 = call i32 @trinity_get_sleep_divider_id_from_clock(%struct.radeon_device* %67, i64 %73, i64 %74)
  %76 = load %struct.trinity_ps*, %struct.trinity_ps** %5, align 8
  %77 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i64 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 6
  store i32 %75, i32* %80, align 8
  %81 = load %struct.trinity_ps*, %struct.trinity_ps** %5, align 8
  %82 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.trinity_ps*, %struct.trinity_ps** %5, align 8
  %88 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i64 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 7
  store i32 %86, i32* %91, align 4
  %92 = load %struct.trinity_ps*, %struct.trinity_ps** %5, align 8
  %93 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i64 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  store i32 1, i32* %96, align 8
  %97 = load %struct.trinity_ps*, %struct.trinity_ps** %5, align 8
  %98 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 5
  store i64 0, i64* %101, align 8
  %102 = load %struct.trinity_ps*, %struct.trinity_ps** %5, align 8
  %103 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %102, i32 0, i32 0
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i64 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 4
  store i64 0, i64* %106, align 8
  %107 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %108 = load %struct.trinity_ps*, %struct.trinity_ps** %5, align 8
  %109 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %108, i32 0, i32 0
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i64 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @trinity_calculate_vce_wm(%struct.radeon_device* %107, i64 %113)
  %115 = load %struct.trinity_ps*, %struct.trinity_ps** %5, align 8
  %116 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %115, i32 0, i32 0
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i64 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 3
  store i32 %114, i32* %119, align 4
  ret void
}

declare dso_local %struct.trinity_power_info* @trinity_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @trinity_get_sleep_divider_id_from_clock(%struct.radeon_device*, i64, i64) #1

declare dso_local i32 @trinity_calculate_vce_wm(%struct.radeon_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
