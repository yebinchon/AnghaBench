; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_generate_stepping_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_generate_stepping_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32 }
%struct.rv6xx_ps = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.rv6xx_power_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_ps*)* @rv6xx_generate_stepping_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv6xx_generate_stepping_table(%struct.radeon_device* %0, %struct.radeon_ps* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ps*, align 8
  %5 = alloca %struct.rv6xx_ps*, align 8
  %6 = alloca %struct.rv6xx_power_info*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %4, align 8
  %7 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %8 = call %struct.rv6xx_ps* @rv6xx_get_ps(%struct.radeon_ps* %7)
  store %struct.rv6xx_ps* %8, %struct.rv6xx_ps** %5, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %10 = call %struct.rv6xx_power_info* @rv6xx_get_pi(%struct.radeon_device* %9)
  store %struct.rv6xx_power_info* %10, %struct.rv6xx_power_info** %6, align 8
  %11 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %6, align 8
  %12 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %15 = load %struct.rv6xx_ps*, %struct.rv6xx_ps** %5, align 8
  %16 = getelementptr inbounds %struct.rv6xx_ps, %struct.rv6xx_ps* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.rv6xx_ps*, %struct.rv6xx_ps** %5, align 8
  %20 = getelementptr inbounds %struct.rv6xx_ps, %struct.rv6xx_ps* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %6, align 8
  %24 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = call i32 @rv6xx_generate_steps(%struct.radeon_device* %14, i32 %18, i32 %22, i32 0, i32* %25)
  %27 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %28 = load %struct.rv6xx_ps*, %struct.rv6xx_ps** %5, align 8
  %29 = getelementptr inbounds %struct.rv6xx_ps, %struct.rv6xx_ps* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.rv6xx_ps*, %struct.rv6xx_ps** %5, align 8
  %33 = getelementptr inbounds %struct.rv6xx_ps, %struct.rv6xx_ps* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %6, align 8
  %37 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %6, align 8
  %41 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = call i32 @rv6xx_generate_steps(%struct.radeon_device* %27, i32 %31, i32 %35, i32 %39, i32* %42)
  ret void
}

declare dso_local %struct.rv6xx_ps* @rv6xx_get_ps(%struct.radeon_ps*) #1

declare dso_local %struct.rv6xx_power_info* @rv6xx_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @rv6xx_generate_steps(%struct.radeon_device*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
