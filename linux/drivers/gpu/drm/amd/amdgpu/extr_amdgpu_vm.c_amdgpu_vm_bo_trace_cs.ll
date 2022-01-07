; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_bo_trace_cs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_bo_trace_cs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_vm = type { i32 }
%struct.ww_acquire_ctx = type { i32 }
%struct.amdgpu_bo_va_mapping = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.amdgpu_bo* }
%struct.amdgpu_bo = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@U64_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_vm_bo_trace_cs(%struct.amdgpu_vm* %0, %struct.ww_acquire_ctx* %1) #0 {
  %3 = alloca %struct.amdgpu_vm*, align 8
  %4 = alloca %struct.ww_acquire_ctx*, align 8
  %5 = alloca %struct.amdgpu_bo_va_mapping*, align 8
  %6 = alloca %struct.amdgpu_bo*, align 8
  store %struct.amdgpu_vm* %0, %struct.amdgpu_vm** %3, align 8
  store %struct.ww_acquire_ctx* %1, %struct.ww_acquire_ctx** %4, align 8
  %7 = call i32 (...) @trace_amdgpu_vm_bo_cs_enabled()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %55

10:                                               ; preds = %2
  %11 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %3, align 8
  %12 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %11, i32 0, i32 0
  %13 = load i32, i32* @U64_MAX, align 4
  %14 = call %struct.amdgpu_bo_va_mapping* @amdgpu_vm_it_iter_first(i32* %12, i32 0, i32 %13)
  store %struct.amdgpu_bo_va_mapping* %14, %struct.amdgpu_bo_va_mapping** %5, align 8
  br label %15

15:                                               ; preds = %51, %10
  %16 = load %struct.amdgpu_bo_va_mapping*, %struct.amdgpu_bo_va_mapping** %5, align 8
  %17 = icmp ne %struct.amdgpu_bo_va_mapping* %16, null
  br i1 %17, label %18, label %55

18:                                               ; preds = %15
  %19 = load %struct.amdgpu_bo_va_mapping*, %struct.amdgpu_bo_va_mapping** %5, align 8
  %20 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, %struct.amdgpu_bo_va_mapping* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = icmp ne %struct.TYPE_8__* %21, null
  br i1 %22, label %23, label %48

23:                                               ; preds = %18
  %24 = load %struct.amdgpu_bo_va_mapping*, %struct.amdgpu_bo_va_mapping** %5, align 8
  %25 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, %struct.amdgpu_bo_va_mapping* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %28, align 8
  %30 = icmp ne %struct.amdgpu_bo* %29, null
  br i1 %30, label %31, label %48

31:                                               ; preds = %23
  %32 = load %struct.amdgpu_bo_va_mapping*, %struct.amdgpu_bo_va_mapping** %5, align 8
  %33 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, %struct.amdgpu_bo_va_mapping* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %36, align 8
  store %struct.amdgpu_bo* %37, %struct.amdgpu_bo** %6, align 8
  %38 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %39 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.ww_acquire_ctx* @dma_resv_locking_ctx(i32 %42)
  %44 = load %struct.ww_acquire_ctx*, %struct.ww_acquire_ctx** %4, align 8
  %45 = icmp ne %struct.ww_acquire_ctx* %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %31
  br label %51

47:                                               ; preds = %31
  br label %48

48:                                               ; preds = %47, %23, %18
  %49 = load %struct.amdgpu_bo_va_mapping*, %struct.amdgpu_bo_va_mapping** %5, align 8
  %50 = call i32 @trace_amdgpu_vm_bo_cs(%struct.amdgpu_bo_va_mapping* %49)
  br label %51

51:                                               ; preds = %48, %46
  %52 = load %struct.amdgpu_bo_va_mapping*, %struct.amdgpu_bo_va_mapping** %5, align 8
  %53 = load i32, i32* @U64_MAX, align 4
  %54 = call %struct.amdgpu_bo_va_mapping* @amdgpu_vm_it_iter_next(%struct.amdgpu_bo_va_mapping* %52, i32 0, i32 %53)
  store %struct.amdgpu_bo_va_mapping* %54, %struct.amdgpu_bo_va_mapping** %5, align 8
  br label %15

55:                                               ; preds = %9, %15
  ret void
}

declare dso_local i32 @trace_amdgpu_vm_bo_cs_enabled(...) #1

declare dso_local %struct.amdgpu_bo_va_mapping* @amdgpu_vm_it_iter_first(i32*, i32, i32) #1

declare dso_local %struct.ww_acquire_ctx* @dma_resv_locking_ctx(i32) #1

declare dso_local i32 @trace_amdgpu_vm_bo_cs(%struct.amdgpu_bo_va_mapping*) #1

declare dso_local %struct.amdgpu_bo_va_mapping* @amdgpu_vm_it_iter_next(%struct.amdgpu_bo_va_mapping*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
