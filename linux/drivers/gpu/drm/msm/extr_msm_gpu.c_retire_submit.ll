; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gpu.c_retire_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gpu.c_retire_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.msm_ringbuffer = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.msm_gpu_submit_stats* }
%struct.msm_gpu_submit_stats = type { i32, i32, i32, i32 }
%struct.msm_gem_submit = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.msm_gem_object* }
%struct.msm_gem_object = type { i32 }

@MSM_GPU_SUBMIT_STATS_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_gpu*, %struct.msm_ringbuffer*, %struct.msm_gem_submit*)* @retire_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @retire_submit(%struct.msm_gpu* %0, %struct.msm_ringbuffer* %1, %struct.msm_gem_submit* %2) #0 {
  %4 = alloca %struct.msm_gpu*, align 8
  %5 = alloca %struct.msm_ringbuffer*, align 8
  %6 = alloca %struct.msm_gem_submit*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.msm_gpu_submit_stats*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.msm_gem_object*, align 8
  store %struct.msm_gpu* %0, %struct.msm_gpu** %4, align 8
  store %struct.msm_ringbuffer* %1, %struct.msm_ringbuffer** %5, align 8
  store %struct.msm_gem_submit* %2, %struct.msm_gem_submit** %6, align 8
  %13 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %6, align 8
  %14 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @MSM_GPU_SUBMIT_STATS_COUNT, align 4
  %17 = srem i32 %15, %16
  store i32 %17, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %18 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %5, align 8
  %19 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.msm_gpu_submit_stats*, %struct.msm_gpu_submit_stats** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.msm_gpu_submit_stats, %struct.msm_gpu_submit_stats* %22, i64 %24
  store %struct.msm_gpu_submit_stats* %25, %struct.msm_gpu_submit_stats** %8, align 8
  %26 = load %struct.msm_gpu_submit_stats*, %struct.msm_gpu_submit_stats** %8, align 8
  %27 = getelementptr inbounds %struct.msm_gpu_submit_stats, %struct.msm_gpu_submit_stats* %26, i32 0, i32 0
  %28 = load volatile i32, i32* %27, align 4
  %29 = load %struct.msm_gpu_submit_stats*, %struct.msm_gpu_submit_stats** %8, align 8
  %30 = getelementptr inbounds %struct.msm_gpu_submit_stats, %struct.msm_gpu_submit_stats* %29, i32 0, i32 1
  %31 = load volatile i32, i32* %30, align 4
  %32 = sub nsw i32 %28, %31
  %33 = mul nsw i32 %32, 10000
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @do_div(i32 %34, i32 192)
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %3
  %39 = load %struct.msm_gpu_submit_stats*, %struct.msm_gpu_submit_stats** %8, align 8
  %40 = getelementptr inbounds %struct.msm_gpu_submit_stats, %struct.msm_gpu_submit_stats* %39, i32 0, i32 2
  %41 = load volatile i32, i32* %40, align 4
  %42 = load %struct.msm_gpu_submit_stats*, %struct.msm_gpu_submit_stats** %8, align 8
  %43 = getelementptr inbounds %struct.msm_gpu_submit_stats, %struct.msm_gpu_submit_stats* %42, i32 0, i32 3
  %44 = load volatile i32, i32* %43, align 4
  %45 = sub nsw i32 %41, %44
  %46 = mul nsw i32 %45, 1000
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @do_div(i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %38, %3
  %51 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %6, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.msm_gpu_submit_stats*, %struct.msm_gpu_submit_stats** %8, align 8
  %55 = getelementptr inbounds %struct.msm_gpu_submit_stats, %struct.msm_gpu_submit_stats* %54, i32 0, i32 1
  %56 = load volatile i32, i32* %55, align 4
  %57 = load %struct.msm_gpu_submit_stats*, %struct.msm_gpu_submit_stats** %8, align 8
  %58 = getelementptr inbounds %struct.msm_gpu_submit_stats, %struct.msm_gpu_submit_stats* %57, i32 0, i32 0
  %59 = load volatile i32, i32* %58, align 4
  %60 = call i32 @trace_msm_gpu_submit_retired(%struct.msm_gem_submit* %51, i32 %52, i32 %53, i32 %56, i32 %59)
  store i32 0, i32* %11, align 4
  br label %61

61:                                               ; preds = %88, %50
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %6, align 8
  %64 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %91

67:                                               ; preds = %61
  %68 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %6, align 8
  %69 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %68, i32 0, i32 3
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load %struct.msm_gem_object*, %struct.msm_gem_object** %74, align 8
  store %struct.msm_gem_object* %75, %struct.msm_gem_object** %12, align 8
  %76 = load %struct.msm_gem_object*, %struct.msm_gem_object** %12, align 8
  %77 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %76, i32 0, i32 0
  %78 = call i32 @msm_gem_move_to_inactive(i32* %77)
  %79 = load %struct.msm_gem_object*, %struct.msm_gem_object** %12, align 8
  %80 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %79, i32 0, i32 0
  %81 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %6, align 8
  %82 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @msm_gem_unpin_iova(i32* %80, i32 %83)
  %85 = load %struct.msm_gem_object*, %struct.msm_gem_object** %12, align 8
  %86 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %85, i32 0, i32 0
  %87 = call i32 @drm_gem_object_put(i32* %86)
  br label %88

88:                                               ; preds = %67
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %11, align 4
  br label %61

91:                                               ; preds = %61
  %92 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %93 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = call i32 @pm_runtime_mark_last_busy(i32* %95)
  %97 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %98 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = call i32 @pm_runtime_put_autosuspend(i32* %100)
  %102 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %6, align 8
  %103 = call i32 @msm_gem_submit_free(%struct.msm_gem_submit* %102)
  ret void
}

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @trace_msm_gpu_submit_retired(%struct.msm_gem_submit*, i32, i32, i32, i32) #1

declare dso_local i32 @msm_gem_move_to_inactive(i32*) #1

declare dso_local i32 @msm_gem_unpin_iova(i32*, i32) #1

declare dso_local i32 @drm_gem_object_put(i32*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32*) #1

declare dso_local i32 @msm_gem_submit_free(%struct.msm_gem_submit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
