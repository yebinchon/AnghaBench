; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_virt.c_amdgpu_virt_reset_gpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_virt.c_amdgpu_virt_reset_gpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.amdgpu_virt }
%struct.amdgpu_virt = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@AMDGPU_SRIOV_CAPS_RUNTIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_virt_reset_gpu(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_virt*, align 8
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %7 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %6, i32 0, i32 0
  store %struct.amdgpu_virt* %7, %struct.amdgpu_virt** %4, align 8
  %8 = load %struct.amdgpu_virt*, %struct.amdgpu_virt** %4, align 8
  %9 = getelementptr inbounds %struct.amdgpu_virt, %struct.amdgpu_virt* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %41

12:                                               ; preds = %1
  %13 = load %struct.amdgpu_virt*, %struct.amdgpu_virt** %4, align 8
  %14 = getelementptr inbounds %struct.amdgpu_virt, %struct.amdgpu_virt* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to i32 (%struct.amdgpu_device*)**
  %18 = load i32 (%struct.amdgpu_device*)*, i32 (%struct.amdgpu_device*)** %17, align 8
  %19 = icmp ne i32 (%struct.amdgpu_device*)* %18, null
  br i1 %19, label %20, label %41

20:                                               ; preds = %12
  %21 = load %struct.amdgpu_virt*, %struct.amdgpu_virt** %4, align 8
  %22 = getelementptr inbounds %struct.amdgpu_virt, %struct.amdgpu_virt* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = bitcast {}** %24 to i32 (%struct.amdgpu_device*)**
  %26 = load i32 (%struct.amdgpu_device*)*, i32 (%struct.amdgpu_device*)** %25, align 8
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %28 = call i32 %26(%struct.amdgpu_device* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %42

33:                                               ; preds = %20
  %34 = load i32, i32* @AMDGPU_SRIOV_CAPS_RUNTIME, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %37 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.amdgpu_virt, %struct.amdgpu_virt* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, %35
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %33, %12, %1
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %31
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
