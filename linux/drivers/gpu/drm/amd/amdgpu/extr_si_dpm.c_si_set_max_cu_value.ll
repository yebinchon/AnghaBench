; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_set_max_cu_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_set_max_cu_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.si_power_info = type { i32 }

@CHIP_VERDE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @si_set_max_cu_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_set_max_cu_value(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca %struct.si_power_info*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %4 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %5 = call %struct.si_power_info* @si_get_pi(%struct.amdgpu_device* %4)
  store %struct.si_power_info* %5, %struct.si_power_info** %3, align 8
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %7 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @CHIP_VERDE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %33

11:                                               ; preds = %1
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %29 [
    i32 26656, label %17
    i32 26661, label %17
    i32 26657, label %17
    i32 26659, label %17
    i32 26663, label %17
    i32 26669, label %20
    i32 26660, label %20
    i32 26671, label %20
    i32 26662, label %20
    i32 26664, label %23
    i32 26672, label %23
    i32 26673, label %23
    i32 26680, label %23
    i32 26681, label %23
    i32 26685, label %23
    i32 26683, label %26
    i32 26687, label %26
    i32 26665, label %26
  ]

17:                                               ; preds = %11, %11, %11, %11, %11
  %18 = load %struct.si_power_info*, %struct.si_power_info** %3, align 8
  %19 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %18, i32 0, i32 0
  store i32 10, i32* %19, align 4
  br label %32

20:                                               ; preds = %11, %11, %11, %11
  %21 = load %struct.si_power_info*, %struct.si_power_info** %3, align 8
  %22 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %21, i32 0, i32 0
  store i32 8, i32* %22, align 4
  br label %32

23:                                               ; preds = %11, %11, %11, %11, %11, %11
  %24 = load %struct.si_power_info*, %struct.si_power_info** %3, align 8
  %25 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %24, i32 0, i32 0
  store i32 10, i32* %25, align 4
  br label %32

26:                                               ; preds = %11, %11, %11
  %27 = load %struct.si_power_info*, %struct.si_power_info** %3, align 8
  %28 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %27, i32 0, i32 0
  store i32 8, i32* %28, align 4
  br label %32

29:                                               ; preds = %11
  %30 = load %struct.si_power_info*, %struct.si_power_info** %3, align 8
  %31 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %26, %23, %20, %17
  br label %36

33:                                               ; preds = %1
  %34 = load %struct.si_power_info*, %struct.si_power_info** %3, align 8
  %35 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %34, i32 0, i32 0
  store i32 0, i32* %35, align 4
  br label %36

36:                                               ; preds = %33, %32
  ret void
}

declare dso_local %struct.si_power_info* @si_get_pi(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
