; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_virt.c_amdgpu_virt_request_full_gpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_virt.c_amdgpu_virt_request_full_gpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.amdgpu_virt }
%struct.amdgpu_virt = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@AMDGPU_SRIOV_CAPS_RUNTIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_virt_request_full_gpu(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_virt*, align 8
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %9 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %8, i32 0, i32 0
  store %struct.amdgpu_virt* %9, %struct.amdgpu_virt** %6, align 8
  %10 = load %struct.amdgpu_virt*, %struct.amdgpu_virt** %6, align 8
  %11 = getelementptr inbounds %struct.amdgpu_virt, %struct.amdgpu_virt* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %44

14:                                               ; preds = %2
  %15 = load %struct.amdgpu_virt*, %struct.amdgpu_virt** %6, align 8
  %16 = getelementptr inbounds %struct.amdgpu_virt, %struct.amdgpu_virt* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = bitcast {}** %18 to i32 (%struct.amdgpu_device*, i32)**
  %20 = load i32 (%struct.amdgpu_device*, i32)*, i32 (%struct.amdgpu_device*, i32)** %19, align 8
  %21 = icmp ne i32 (%struct.amdgpu_device*, i32)* %20, null
  br i1 %21, label %22, label %44

22:                                               ; preds = %14
  %23 = load %struct.amdgpu_virt*, %struct.amdgpu_virt** %6, align 8
  %24 = getelementptr inbounds %struct.amdgpu_virt, %struct.amdgpu_virt* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = bitcast {}** %26 to i32 (%struct.amdgpu_device*, i32)**
  %28 = load i32 (%struct.amdgpu_device*, i32)*, i32 (%struct.amdgpu_device*, i32)** %27, align 8
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 %28(%struct.amdgpu_device* %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %22
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %45

36:                                               ; preds = %22
  %37 = load i32, i32* @AMDGPU_SRIOV_CAPS_RUNTIME, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %40 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.amdgpu_virt, %struct.amdgpu_virt* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, %38
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %36, %14, %2
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %34
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
