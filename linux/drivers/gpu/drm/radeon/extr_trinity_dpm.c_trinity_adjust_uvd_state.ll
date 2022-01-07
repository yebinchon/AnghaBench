; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_adjust_uvd_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_adjust_uvd_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32, i32 }
%struct.trinity_ps = type { i32, i32, i32, i32 }
%struct.trinity_power_info = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_ps*)* @trinity_adjust_uvd_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trinity_adjust_uvd_state(%struct.radeon_device* %0, %struct.radeon_ps* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ps*, align 8
  %5 = alloca %struct.trinity_ps*, align 8
  %6 = alloca %struct.trinity_power_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %4, align 8
  %9 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %10 = call %struct.trinity_ps* @trinity_get_ps(%struct.radeon_ps* %9)
  store %struct.trinity_ps* %10, %struct.trinity_ps** %5, align 8
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = call %struct.trinity_power_info* @trinity_get_pi(%struct.radeon_device* %11)
  store %struct.trinity_power_info* %12, %struct.trinity_power_info** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.trinity_power_info*, %struct.trinity_power_info** %6, align 8
  %14 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %79

17:                                               ; preds = %2
  %18 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %19 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %22 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @r600_is_uvd_state(i32 %20, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %79

26:                                               ; preds = %17
  %27 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %28 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %29 = call i32 @trinity_get_uvd_clock_index(%struct.radeon_device* %27, %struct.radeon_ps* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  switch i32 %30, label %33 [
    i32 3, label %31
    i32 2, label %31
    i32 1, label %32
    i32 0, label %32
  ]

31:                                               ; preds = %26, %26
  store i32 1, i32* %8, align 4
  br label %34

32:                                               ; preds = %26, %26
  br label %33

33:                                               ; preds = %26, %32
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %33, %31
  %35 = load %struct.trinity_power_info*, %struct.trinity_power_info** %6, align 8
  %36 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.trinity_ps*, %struct.trinity_ps** %5, align 8
  %45 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.trinity_power_info*, %struct.trinity_power_info** %6, align 8
  %47 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.trinity_ps*, %struct.trinity_ps** %5, align 8
  %56 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.trinity_power_info*, %struct.trinity_power_info** %6, align 8
  %58 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.trinity_ps*, %struct.trinity_ps** %5, align 8
  %67 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.trinity_power_info*, %struct.trinity_power_info** %6, align 8
  %69 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.trinity_ps*, %struct.trinity_ps** %5, align 8
  %78 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %34, %17, %2
  ret void
}

declare dso_local %struct.trinity_ps* @trinity_get_ps(%struct.radeon_ps*) #1

declare dso_local %struct.trinity_power_info* @trinity_get_pi(%struct.radeon_device*) #1

declare dso_local i64 @r600_is_uvd_state(i32, i32) #1

declare dso_local i32 @trinity_get_uvd_clock_index(%struct.radeon_device*, %struct.radeon_ps*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
