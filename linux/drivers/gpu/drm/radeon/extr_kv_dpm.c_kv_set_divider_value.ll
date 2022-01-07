; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_dpm.c_kv_set_divider_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_dpm.c_kv_set_divider_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.kv_power_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.atom_clock_dividers = type { i64 }

@COMPUTE_ENGINE_PLL_PARAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i64, i64)* @kv_set_divider_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kv_set_divider_value(%struct.radeon_device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.kv_power_info*, align 8
  %9 = alloca %struct.atom_clock_dividers, align 8
  %10 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %12 = call %struct.kv_power_info* @kv_get_pi(%struct.radeon_device* %11)
  store %struct.kv_power_info* %12, %struct.kv_power_info** %8, align 8
  %13 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %14 = load i32, i32* @COMPUTE_ENGINE_PLL_PARAM, align 4
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @radeon_atom_get_clock_dividers(%struct.radeon_device* %13, i32 %14, i64 %15, i32 0, %struct.atom_clock_dividers* %9)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %4, align 4
  br label %38

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %9, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.kv_power_info*, %struct.kv_power_info** %8, align 8
  %25 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i64 %23, i64* %29, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @cpu_to_be32(i64 %30)
  %32 = load %struct.kv_power_info*, %struct.kv_power_info** %8, align 8
  %33 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %31, i32* %37, align 8
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %21, %19
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.kv_power_info* @kv_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @radeon_atom_get_clock_dividers(%struct.radeon_device*, i32, i64, i32, %struct.atom_clock_dividers*) #1

declare dso_local i32 @cpu_to_be32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
