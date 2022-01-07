; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_prt_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_prt_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_vm = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.dma_resv* }
%struct.dma_resv = type { i32 }
%struct.dma_fence = type { i32 }

@MAX_SCHEDULE_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, %struct.amdgpu_vm*)* @amdgpu_vm_prt_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_vm_prt_fini(%struct.amdgpu_device* %0, %struct.amdgpu_vm* %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_vm*, align 8
  %5 = alloca %struct.dma_resv*, align 8
  %6 = alloca %struct.dma_fence*, align 8
  %7 = alloca %struct.dma_fence**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store %struct.amdgpu_vm* %1, %struct.amdgpu_vm** %4, align 8
  %11 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %4, align 8
  %12 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.dma_resv*, %struct.dma_resv** %18, align 8
  store %struct.dma_resv* %19, %struct.dma_resv** %5, align 8
  %20 = load %struct.dma_resv*, %struct.dma_resv** %5, align 8
  %21 = call i32 @dma_resv_get_fences_rcu(%struct.dma_resv* %20, %struct.dma_fence** %6, i32* %9, %struct.dma_fence*** %7)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.dma_resv*, %struct.dma_resv** %5, align 8
  %26 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  %27 = call i32 @dma_resv_wait_timeout_rcu(%struct.dma_resv* %25, i32 1, i32 0, i32 %26)
  br label %54

28:                                               ; preds = %2
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %30 = call i32 @amdgpu_vm_prt_get(%struct.amdgpu_device* %29)
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %32 = load %struct.dma_fence*, %struct.dma_fence** %6, align 8
  %33 = call i32 @amdgpu_vm_add_prt_cb(%struct.amdgpu_device* %31, %struct.dma_fence* %32)
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %48, %28
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %34
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %40 = call i32 @amdgpu_vm_prt_get(%struct.amdgpu_device* %39)
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %42 = load %struct.dma_fence**, %struct.dma_fence*** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %42, i64 %44
  %46 = load %struct.dma_fence*, %struct.dma_fence** %45, align 8
  %47 = call i32 @amdgpu_vm_add_prt_cb(%struct.amdgpu_device* %41, %struct.dma_fence* %46)
  br label %48

48:                                               ; preds = %38
  %49 = load i32, i32* %8, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %34

51:                                               ; preds = %34
  %52 = load %struct.dma_fence**, %struct.dma_fence*** %7, align 8
  %53 = call i32 @kfree(%struct.dma_fence** %52)
  br label %54

54:                                               ; preds = %51, %24
  ret void
}

declare dso_local i32 @dma_resv_get_fences_rcu(%struct.dma_resv*, %struct.dma_fence**, i32*, %struct.dma_fence***) #1

declare dso_local i32 @dma_resv_wait_timeout_rcu(%struct.dma_resv*, i32, i32, i32) #1

declare dso_local i32 @amdgpu_vm_prt_get(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_vm_add_prt_cb(%struct.amdgpu_device*, %struct.dma_fence*) #1

declare dso_local i32 @kfree(%struct.dma_fence**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
