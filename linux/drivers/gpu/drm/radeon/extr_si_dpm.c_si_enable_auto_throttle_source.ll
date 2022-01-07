; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_enable_auto_throttle_source.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_enable_auto_throttle_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.rv7xx_power_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32, i32)* @si_enable_auto_throttle_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_enable_auto_throttle_source(%struct.radeon_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rv7xx_power_info*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %9 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %8)
  store %struct.rv7xx_power_info* %9, %struct.rv7xx_power_info** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %3
  %13 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %7, align 8
  %14 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = shl i32 1, %16
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %12
  %21 = load i32, i32* %5, align 4
  %22 = shl i32 1, %21
  %23 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %7, align 8
  %24 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %28 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %7, align 8
  %29 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @si_set_dpm_event_sources(%struct.radeon_device* %27, i32 %30)
  br label %32

32:                                               ; preds = %20, %12
  br label %55

33:                                               ; preds = %3
  %34 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %7, align 8
  %35 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = shl i32 1, %37
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %33
  %42 = load i32, i32* %5, align 4
  %43 = shl i32 1, %42
  %44 = xor i32 %43, -1
  %45 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %7, align 8
  %46 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %50 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %7, align 8
  %51 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @si_set_dpm_event_sources(%struct.radeon_device* %49, i32 %52)
  br label %54

54:                                               ; preds = %41, %33
  br label %55

55:                                               ; preds = %54, %32
  ret void
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @si_set_dpm_event_sources(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
