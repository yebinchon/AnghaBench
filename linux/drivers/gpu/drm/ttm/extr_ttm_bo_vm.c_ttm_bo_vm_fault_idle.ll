; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo_vm.c_ttm_bo_vm_fault_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo_vm.c_ttm_bo_vm_fault_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.vm_fault = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@FAULT_FLAG_ALLOW_RETRY = common dso_local global i32 0, align 4
@VM_FAULT_RETRY = common dso_local global i32 0, align 4
@FAULT_FLAG_RETRY_NOWAIT = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@VM_FAULT_NOPAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_buffer_object*, %struct.vm_fault*)* @ttm_bo_vm_fault_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_bo_vm_fault_idle(%struct.ttm_buffer_object* %0, %struct.vm_fault* %1) #0 {
  %3 = alloca %struct.ttm_buffer_object*, align 8
  %4 = alloca %struct.vm_fault*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %3, align 8
  store %struct.vm_fault* %1, %struct.vm_fault** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %8 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @likely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %89

16:                                               ; preds = %2
  %17 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %18 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i64 @dma_fence_is_signaled(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %82

23:                                               ; preds = %16
  %24 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %25 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @FAULT_FLAG_ALLOW_RETRY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %60

30:                                               ; preds = %23
  %31 = load i32, i32* @VM_FAULT_RETRY, align 4
  store i32 %31, i32* %5, align 4
  %32 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %33 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @FAULT_FLAG_RETRY_NOWAIT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %89

39:                                               ; preds = %30
  %40 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %41 = call i32 @ttm_bo_get(%struct.ttm_buffer_object* %40)
  %42 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %43 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = call i32 @up_read(i32* %47)
  %49 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %50 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @dma_fence_wait(i32* %51, i32 1)
  %53 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %54 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @dma_resv_unlock(i32 %56)
  %58 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %59 = call i32 @ttm_bo_put(%struct.ttm_buffer_object* %58)
  br label %89

60:                                               ; preds = %23
  %61 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %62 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @dma_fence_wait(i32* %63, i32 1)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %60
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @ERESTARTSYS, align 4
  %73 = sub nsw i32 0, %72
  %74 = icmp ne i32 %71, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  br label %79

77:                                               ; preds = %70
  %78 = load i32, i32* @VM_FAULT_NOPAGE, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  store i32 %80, i32* %5, align 4
  br label %89

81:                                               ; preds = %60
  br label %82

82:                                               ; preds = %81, %22
  %83 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %84 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @dma_fence_put(i32* %85)
  %87 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %88 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %87, i32 0, i32 0
  store i32* null, i32** %88, align 8
  br label %89

89:                                               ; preds = %82, %79, %39, %38, %15
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @dma_fence_is_signaled(i32*) #1

declare dso_local i32 @ttm_bo_get(%struct.ttm_buffer_object*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @dma_fence_wait(i32*, i32) #1

declare dso_local i32 @dma_resv_unlock(i32) #1

declare dso_local i32 @ttm_bo_put(%struct.ttm_buffer_object*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_fence_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
