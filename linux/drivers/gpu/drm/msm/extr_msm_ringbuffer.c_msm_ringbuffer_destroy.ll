; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_ringbuffer.c_msm_ringbuffer_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_ringbuffer.c_msm_ringbuffer_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_ringbuffer = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msm_ringbuffer_destroy(%struct.msm_ringbuffer* %0) #0 {
  %2 = alloca %struct.msm_ringbuffer*, align 8
  store %struct.msm_ringbuffer* %0, %struct.msm_ringbuffer** %2, align 8
  %3 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %2, align 8
  %4 = call i64 @IS_ERR_OR_NULL(%struct.msm_ringbuffer* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %23

7:                                                ; preds = %1
  %8 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %2, align 8
  %9 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @msm_fence_context_free(i32 %10)
  %12 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %2, align 8
  %13 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %2, align 8
  %16 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @msm_gem_kernel_put(i32 %14, i32 %19, i32 0)
  %21 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %2, align 8
  %22 = call i32 @kfree(%struct.msm_ringbuffer* %21)
  br label %23

23:                                               ; preds = %7, %6
  ret void
}

declare dso_local i64 @IS_ERR_OR_NULL(%struct.msm_ringbuffer*) #1

declare dso_local i32 @msm_fence_context_free(i32) #1

declare dso_local i32 @msm_gem_kernel_put(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.msm_ringbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
