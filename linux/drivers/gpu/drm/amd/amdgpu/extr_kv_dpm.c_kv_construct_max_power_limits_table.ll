; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_construct_max_power_limits_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_construct_max_power_limits_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_clock_and_voltage_limits = type { i32, i32, i32 }
%struct.kv_power_info = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, %struct.amdgpu_clock_and_voltage_limits*)* @kv_construct_max_power_limits_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kv_construct_max_power_limits_table(%struct.amdgpu_device* %0, %struct.amdgpu_clock_and_voltage_limits* %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_clock_and_voltage_limits*, align 8
  %5 = alloca %struct.kv_power_info*, align 8
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store %struct.amdgpu_clock_and_voltage_limits* %1, %struct.amdgpu_clock_and_voltage_limits** %4, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %8 = call %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device* %7)
  store %struct.kv_power_info* %8, %struct.kv_power_info** %5, align 8
  %9 = load %struct.kv_power_info*, %struct.kv_power_info** %5, align 8
  %10 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %48

15:                                               ; preds = %2
  %16 = load %struct.kv_power_info*, %struct.kv_power_info** %5, align 8
  %17 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %6, align 4
  %22 = load %struct.kv_power_info*, %struct.kv_power_info** %5, align 8
  %23 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.amdgpu_clock_and_voltage_limits*, %struct.amdgpu_clock_and_voltage_limits** %4, align 8
  %33 = getelementptr inbounds %struct.amdgpu_clock_and_voltage_limits, %struct.amdgpu_clock_and_voltage_limits* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %35 = load %struct.kv_power_info*, %struct.kv_power_info** %5, align 8
  %36 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @kv_convert_2bit_index_to_voltage(%struct.amdgpu_device* %34, i32 %44)
  %46 = load %struct.amdgpu_clock_and_voltage_limits*, %struct.amdgpu_clock_and_voltage_limits** %4, align 8
  %47 = getelementptr inbounds %struct.amdgpu_clock_and_voltage_limits, %struct.amdgpu_clock_and_voltage_limits* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %15, %2
  %49 = load %struct.kv_power_info*, %struct.kv_power_info** %5, align 8
  %50 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.amdgpu_clock_and_voltage_limits*, %struct.amdgpu_clock_and_voltage_limits** %4, align 8
  %56 = getelementptr inbounds %struct.amdgpu_clock_and_voltage_limits, %struct.amdgpu_clock_and_voltage_limits* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  ret void
}

declare dso_local %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device*) #1

declare dso_local i32 @kv_convert_2bit_index_to_voltage(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
