; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_step_voltage_if_decreasing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_step_voltage_if_decreasing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32 }
%struct.rv6xx_ps = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*)* @rv6xx_step_voltage_if_decreasing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv6xx_step_voltage_if_decreasing(%struct.radeon_device* %0, %struct.radeon_ps* %1, %struct.radeon_ps* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_ps*, align 8
  %7 = alloca %struct.radeon_ps*, align 8
  %8 = alloca %struct.rv6xx_ps*, align 8
  %9 = alloca %struct.rv6xx_ps*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %6, align 8
  store %struct.radeon_ps* %2, %struct.radeon_ps** %7, align 8
  %10 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %11 = call %struct.rv6xx_ps* @rv6xx_get_ps(%struct.radeon_ps* %10)
  store %struct.rv6xx_ps* %11, %struct.rv6xx_ps** %8, align 8
  %12 = load %struct.radeon_ps*, %struct.radeon_ps** %7, align 8
  %13 = call %struct.rv6xx_ps* @rv6xx_get_ps(%struct.radeon_ps* %12)
  store %struct.rv6xx_ps* %13, %struct.rv6xx_ps** %9, align 8
  %14 = load %struct.rv6xx_ps*, %struct.rv6xx_ps** %8, align 8
  %15 = getelementptr inbounds %struct.rv6xx_ps, %struct.rv6xx_ps* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.rv6xx_ps*, %struct.rv6xx_ps** %9, align 8
  %19 = getelementptr inbounds %struct.rv6xx_ps, %struct.rv6xx_ps* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %17, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %3
  %24 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %25 = load %struct.rv6xx_ps*, %struct.rv6xx_ps** %9, align 8
  %26 = getelementptr inbounds %struct.rv6xx_ps, %struct.rv6xx_ps* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.rv6xx_ps*, %struct.rv6xx_ps** %8, align 8
  %30 = getelementptr inbounds %struct.rv6xx_ps, %struct.rv6xx_ps* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @rv6xx_step_sw_voltage(%struct.radeon_device* %24, i64 %28, i64 %32)
  store i32 %33, i32* %4, align 4
  br label %35

34:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %23
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.rv6xx_ps* @rv6xx_get_ps(%struct.radeon_ps*) #1

declare dso_local i32 @rv6xx_step_sw_voltage(%struct.radeon_device*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
