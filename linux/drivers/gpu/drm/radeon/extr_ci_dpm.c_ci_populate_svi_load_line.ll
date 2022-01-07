; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_populate_svi_load_line.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_populate_svi_load_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.ci_power_info = type { %struct.TYPE_2__, %struct.ci_pt_defaults* }
%struct.TYPE_2__ = type { i32, i64, i32, i32 }
%struct.ci_pt_defaults = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @ci_populate_svi_load_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_populate_svi_load_line(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.ci_power_info*, align 8
  %4 = alloca %struct.ci_pt_defaults*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %6 = call %struct.ci_power_info* @ci_get_pi(%struct.radeon_device* %5)
  store %struct.ci_power_info* %6, %struct.ci_power_info** %3, align 8
  %7 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %8 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %7, i32 0, i32 1
  %9 = load %struct.ci_pt_defaults*, %struct.ci_pt_defaults** %8, align 8
  store %struct.ci_pt_defaults* %9, %struct.ci_pt_defaults** %4, align 8
  %10 = load %struct.ci_pt_defaults*, %struct.ci_pt_defaults** %4, align 8
  %11 = getelementptr inbounds %struct.ci_pt_defaults, %struct.ci_pt_defaults* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %14 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  store i32 %12, i32* %15, align 4
  %16 = load %struct.ci_pt_defaults*, %struct.ci_pt_defaults** %4, align 8
  %17 = getelementptr inbounds %struct.ci_pt_defaults, %struct.ci_pt_defaults* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %20 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  store i32 %18, i32* %21, align 8
  %22 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %23 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 3, i32* %24, align 8
  %25 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %26 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  ret i32 0
}

declare dso_local %struct.ci_power_info* @ci_get_pi(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
