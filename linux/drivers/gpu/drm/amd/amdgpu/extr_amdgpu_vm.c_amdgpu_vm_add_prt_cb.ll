; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_add_prt_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_add_prt_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.dma_fence = type { i32 }
%struct.amdgpu_prt_cb = type { i32, %struct.amdgpu_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, %struct.dma_fence*)* @amdgpu_vm_add_prt_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_vm_add_prt_cb(%struct.amdgpu_device* %0, %struct.dma_fence* %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.dma_fence*, align 8
  %5 = alloca %struct.amdgpu_prt_cb*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store %struct.dma_fence* %1, %struct.dma_fence** %4, align 8
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %7 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %46

14:                                               ; preds = %2
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.amdgpu_prt_cb* @kmalloc(i32 16, i32 %15)
  store %struct.amdgpu_prt_cb* %16, %struct.amdgpu_prt_cb** %5, align 8
  %17 = load %struct.amdgpu_prt_cb*, %struct.amdgpu_prt_cb** %5, align 8
  %18 = icmp ne %struct.amdgpu_prt_cb* %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %14
  %20 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %21 = icmp ne %struct.dma_fence* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %24 = call i32 @dma_fence_wait(%struct.dma_fence* %23, i32 0)
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %27 = call i32 @amdgpu_vm_prt_put(%struct.amdgpu_device* %26)
  br label %46

28:                                               ; preds = %14
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %30 = load %struct.amdgpu_prt_cb*, %struct.amdgpu_prt_cb** %5, align 8
  %31 = getelementptr inbounds %struct.amdgpu_prt_cb, %struct.amdgpu_prt_cb* %30, i32 0, i32 1
  store %struct.amdgpu_device* %29, %struct.amdgpu_device** %31, align 8
  %32 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %33 = icmp ne %struct.dma_fence* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %36 = load %struct.amdgpu_prt_cb*, %struct.amdgpu_prt_cb** %5, align 8
  %37 = getelementptr inbounds %struct.amdgpu_prt_cb, %struct.amdgpu_prt_cb* %36, i32 0, i32 0
  %38 = call i64 @dma_fence_add_callback(%struct.dma_fence* %35, i32* %37, i32 (%struct.dma_fence*, i32*)* @amdgpu_vm_prt_cb)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %34, %28
  %41 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %42 = load %struct.amdgpu_prt_cb*, %struct.amdgpu_prt_cb** %5, align 8
  %43 = getelementptr inbounds %struct.amdgpu_prt_cb, %struct.amdgpu_prt_cb* %42, i32 0, i32 0
  %44 = call i32 @amdgpu_vm_prt_cb(%struct.dma_fence* %41, i32* %43)
  br label %45

45:                                               ; preds = %40, %34
  br label %46

46:                                               ; preds = %13, %45, %25
  ret void
}

declare dso_local %struct.amdgpu_prt_cb* @kmalloc(i32, i32) #1

declare dso_local i32 @dma_fence_wait(%struct.dma_fence*, i32) #1

declare dso_local i32 @amdgpu_vm_prt_put(%struct.amdgpu_device*) #1

declare dso_local i64 @dma_fence_add_callback(%struct.dma_fence*, i32*, i32 (%struct.dma_fence*, i32*)*) #1

declare dso_local i32 @amdgpu_vm_prt_cb(%struct.dma_fence*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
