; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd.c_amdgpu_amdkfd_get_max_engine_clock_in_mhz.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd.c_amdgpu_amdkfd_get_max_engine_clock_in_mhz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgd_dev = type { i32 }
%struct.amdgpu_device = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_amdkfd_get_max_engine_clock_in_mhz(%struct.kgd_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kgd_dev*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  store %struct.kgd_dev* %0, %struct.kgd_dev** %3, align 8
  %5 = load %struct.kgd_dev*, %struct.kgd_dev** %3, align 8
  %6 = bitcast %struct.kgd_dev* %5 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %6, %struct.amdgpu_device** %4, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %8 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sdiv i32 %14, 100
  store i32 %15, i32* %2, align 4
  br label %27

16:                                               ; preds = %1
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %24 = call i32 @amdgpu_dpm_get_sclk(%struct.amdgpu_device* %23, i32 0)
  %25 = sdiv i32 %24, 100
  store i32 %25, i32* %2, align 4
  br label %27

26:                                               ; preds = %16
  store i32 100, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %22, %10
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_dpm_get_sclk(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
