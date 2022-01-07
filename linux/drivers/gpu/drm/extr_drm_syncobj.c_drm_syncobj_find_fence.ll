; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_syncobj.c_drm_syncobj_find_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_syncobj.c_drm_syncobj_find_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.dma_fence = type { i32 }
%struct.drm_syncobj = type { i32 }
%struct.syncobj_wait_entry = type { %struct.TYPE_2__, %struct.dma_fence*, i64, i32 }
%struct.TYPE_2__ = type { i64 }

@DRM_SYNCOBJ_WAIT_FOR_SUBMIT_TIMEOUT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DRM_SYNCOBJ_WAIT_FLAGS_WAIT_FOR_SUBMIT = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_syncobj_find_fence(%struct.drm_file* %0, i32 %1, i64 %2, i64 %3, %struct.dma_fence** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.dma_fence**, align 8
  %12 = alloca %struct.drm_syncobj*, align 8
  %13 = alloca %struct.syncobj_wait_entry, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.drm_file* %0, %struct.drm_file** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.dma_fence** %4, %struct.dma_fence*** %11, align 8
  %16 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.drm_syncobj* @drm_syncobj_find(%struct.drm_file* %16, i32 %17)
  store %struct.drm_syncobj* %18, %struct.drm_syncobj** %12, align 8
  %19 = load i32, i32* @DRM_SYNCOBJ_WAIT_FOR_SUBMIT_TIMEOUT, align 4
  %20 = call i64 @nsecs_to_jiffies64(i32 %19)
  store i64 %20, i64* %14, align 8
  %21 = load %struct.drm_syncobj*, %struct.drm_syncobj** %12, align 8
  %22 = icmp ne %struct.drm_syncobj* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %103

26:                                               ; preds = %5
  %27 = load %struct.drm_syncobj*, %struct.drm_syncobj** %12, align 8
  %28 = call %struct.dma_fence* @drm_syncobj_fence_get(%struct.drm_syncobj* %27)
  %29 = load %struct.dma_fence**, %struct.dma_fence*** %11, align 8
  store %struct.dma_fence* %28, %struct.dma_fence** %29, align 8
  %30 = load %struct.drm_syncobj*, %struct.drm_syncobj** %12, align 8
  %31 = call i32 @drm_syncobj_put(%struct.drm_syncobj* %30)
  %32 = load %struct.dma_fence**, %struct.dma_fence*** %11, align 8
  %33 = load %struct.dma_fence*, %struct.dma_fence** %32, align 8
  %34 = icmp ne %struct.dma_fence* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %26
  %36 = load %struct.dma_fence**, %struct.dma_fence*** %11, align 8
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @dma_fence_chain_find_seqno(%struct.dma_fence** %36, i64 %37)
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %103

42:                                               ; preds = %35
  %43 = load %struct.dma_fence**, %struct.dma_fence*** %11, align 8
  %44 = load %struct.dma_fence*, %struct.dma_fence** %43, align 8
  %45 = call i32 @dma_fence_put(%struct.dma_fence* %44)
  br label %49

46:                                               ; preds = %26
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %15, align 4
  br label %49

49:                                               ; preds = %46, %42
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* @DRM_SYNCOBJ_WAIT_FLAGS_WAIT_FOR_SUBMIT, align 8
  %52 = and i64 %50, %51
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %15, align 4
  store i32 %55, i32* %6, align 4
  br label %103

56:                                               ; preds = %49
  %57 = call i32 @memset(%struct.syncobj_wait_entry* %13, i32 0, i32 32)
  %58 = load i32, i32* @current, align 4
  %59 = getelementptr inbounds %struct.syncobj_wait_entry, %struct.syncobj_wait_entry* %13, i32 0, i32 3
  store i32 %58, i32* %59, align 8
  %60 = load i64, i64* %9, align 8
  %61 = getelementptr inbounds %struct.syncobj_wait_entry, %struct.syncobj_wait_entry* %13, i32 0, i32 2
  store i64 %60, i64* %61, align 8
  %62 = load %struct.drm_syncobj*, %struct.drm_syncobj** %12, align 8
  %63 = call i32 @drm_syncobj_fence_add_wait(%struct.drm_syncobj* %62, %struct.syncobj_wait_entry* %13)
  br label %64

64:                                               ; preds = %87, %56
  %65 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %66 = call i32 @set_current_state(i32 %65)
  %67 = getelementptr inbounds %struct.syncobj_wait_entry, %struct.syncobj_wait_entry* %13, i32 0, i32 1
  %68 = load %struct.dma_fence*, %struct.dma_fence** %67, align 8
  %69 = icmp ne %struct.dma_fence* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  store i32 0, i32* %15, align 4
  br label %88

71:                                               ; preds = %64
  %72 = load i64, i64* %14, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* @ETIME, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %15, align 4
  br label %88

77:                                               ; preds = %71
  %78 = load i32, i32* @current, align 4
  %79 = call i64 @signal_pending(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32, i32* @ERESTARTSYS, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %15, align 4
  br label %88

84:                                               ; preds = %77
  %85 = load i64, i64* %14, align 8
  %86 = call i64 @schedule_timeout(i64 %85)
  store i64 %86, i64* %14, align 8
  br label %87

87:                                               ; preds = %84
  br i1 true, label %64, label %88

88:                                               ; preds = %87, %81, %74, %70
  %89 = load i32, i32* @TASK_RUNNING, align 4
  %90 = call i32 @__set_current_state(i32 %89)
  %91 = getelementptr inbounds %struct.syncobj_wait_entry, %struct.syncobj_wait_entry* %13, i32 0, i32 1
  %92 = load %struct.dma_fence*, %struct.dma_fence** %91, align 8
  %93 = load %struct.dma_fence**, %struct.dma_fence*** %11, align 8
  store %struct.dma_fence* %92, %struct.dma_fence** %93, align 8
  %94 = getelementptr inbounds %struct.syncobj_wait_entry, %struct.syncobj_wait_entry* %13, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %88
  %99 = load %struct.drm_syncobj*, %struct.drm_syncobj** %12, align 8
  %100 = call i32 @drm_syncobj_remove_wait(%struct.drm_syncobj* %99, %struct.syncobj_wait_entry* %13)
  br label %101

101:                                              ; preds = %98, %88
  %102 = load i32, i32* %15, align 4
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %101, %54, %41, %23
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local %struct.drm_syncobj* @drm_syncobj_find(%struct.drm_file*, i32) #1

declare dso_local i64 @nsecs_to_jiffies64(i32) #1

declare dso_local %struct.dma_fence* @drm_syncobj_fence_get(%struct.drm_syncobj*) #1

declare dso_local i32 @drm_syncobj_put(%struct.drm_syncobj*) #1

declare dso_local i32 @dma_fence_chain_find_seqno(%struct.dma_fence**, i64) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i32 @memset(%struct.syncobj_wait_entry*, i32, i32) #1

declare dso_local i32 @drm_syncobj_fence_add_wait(%struct.drm_syncobj*, %struct.syncobj_wait_entry*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @drm_syncobj_remove_wait(%struct.drm_syncobj*, %struct.syncobj_wait_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
