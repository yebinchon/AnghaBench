; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_btc_dpm.c_btc_set_at_for_uvd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_btc_dpm.c_btc_set_at_for_uvd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32, i32 }
%struct.rv7xx_power_info = type { i32, i32, i32, i32 }
%struct.evergreen_power_info = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_ps*)* @btc_set_at_for_uvd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc_set_at_for_uvd(%struct.radeon_device* %0, %struct.radeon_ps* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ps*, align 8
  %5 = alloca %struct.rv7xx_power_info*, align 8
  %6 = alloca %struct.evergreen_power_info*, align 8
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %4, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %8)
  store %struct.rv7xx_power_info* %9, %struct.rv7xx_power_info** %5, align 8
  %10 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %11 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %10)
  store %struct.evergreen_power_info* %11, %struct.evergreen_power_info** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %13 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %16 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @r600_is_uvd_state(i32 %14, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %21

21:                                               ; preds = %20, %2
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %26 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %24
  %30 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %31 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %30, i32 0, i32 0
  store i32 10, i32* %31, align 4
  %32 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %33 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %32, i32 0, i32 1
  store i32 100, i32* %33, align 4
  %34 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %35 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %34, i32 0, i32 2
  store i32 100, i32* %35, align 4
  %36 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %37 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %36, i32 0, i32 3
  store i32 10, i32* %37, align 4
  br label %79

38:                                               ; preds = %24, %21
  %39 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %40 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %48 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %50 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %58 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %60 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %68 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %70 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %78 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %38, %29
  ret void
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local i64 @r600_is_uvd_state(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
