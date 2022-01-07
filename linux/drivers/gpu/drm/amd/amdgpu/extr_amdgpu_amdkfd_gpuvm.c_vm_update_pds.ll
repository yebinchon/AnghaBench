; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_vm_update_pds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_vm_update_pds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_vm = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.amdgpu_bo* }
%struct.amdgpu_bo = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.amdgpu_sync = type { i32 }
%struct.amdgpu_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_vm*, %struct.amdgpu_sync*)* @vm_update_pds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_update_pds(%struct.amdgpu_vm* %0, %struct.amdgpu_sync* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_vm*, align 8
  %5 = alloca %struct.amdgpu_sync*, align 8
  %6 = alloca %struct.amdgpu_bo*, align 8
  %7 = alloca %struct.amdgpu_device*, align 8
  %8 = alloca i32, align 4
  store %struct.amdgpu_vm* %0, %struct.amdgpu_vm** %4, align 8
  store %struct.amdgpu_sync* %1, %struct.amdgpu_sync** %5, align 8
  %9 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %4, align 8
  %10 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %12, align 8
  store %struct.amdgpu_bo* %13, %struct.amdgpu_bo** %6, align 8
  %14 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %15 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.amdgpu_device* @amdgpu_ttm_adev(i32 %17)
  store %struct.amdgpu_device* %18, %struct.amdgpu_device** %7, align 8
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %20 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %4, align 8
  %21 = call i32 @amdgpu_vm_update_directories(%struct.amdgpu_device* %19, %struct.amdgpu_vm* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %32

26:                                               ; preds = %2
  %27 = load %struct.amdgpu_sync*, %struct.amdgpu_sync** %5, align 8
  %28 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %4, align 8
  %29 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @amdgpu_sync_fence(i32* null, %struct.amdgpu_sync* %27, i32 %30, i32 0)
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %26, %24
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.amdgpu_device* @amdgpu_ttm_adev(i32) #1

declare dso_local i32 @amdgpu_vm_update_directories(%struct.amdgpu_device*, %struct.amdgpu_vm*) #1

declare dso_local i32 @amdgpu_sync_fence(i32*, %struct.amdgpu_sync*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
