; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_fence.c_msm_fence_context_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_fence.c_msm_fence_context_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_fence_context = type { i32, i32, i32, i32, %struct.drm_device* }
%struct.drm_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.msm_fence_context* @msm_fence_context_alloc(%struct.drm_device* %0, i8* %1) #0 {
  %3 = alloca %struct.msm_fence_context*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.msm_fence_context*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.msm_fence_context* @kzalloc(i32 24, i32 %7)
  store %struct.msm_fence_context* %8, %struct.msm_fence_context** %6, align 8
  %9 = load %struct.msm_fence_context*, %struct.msm_fence_context** %6, align 8
  %10 = icmp ne %struct.msm_fence_context* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.msm_fence_context* @ERR_PTR(i32 %13)
  store %struct.msm_fence_context* %14, %struct.msm_fence_context** %3, align 8
  br label %34

15:                                               ; preds = %2
  %16 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %17 = load %struct.msm_fence_context*, %struct.msm_fence_context** %6, align 8
  %18 = getelementptr inbounds %struct.msm_fence_context, %struct.msm_fence_context* %17, i32 0, i32 4
  store %struct.drm_device* %16, %struct.drm_device** %18, align 8
  %19 = load %struct.msm_fence_context*, %struct.msm_fence_context** %6, align 8
  %20 = getelementptr inbounds %struct.msm_fence_context, %struct.msm_fence_context* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @strncpy(i32 %21, i8* %22, i32 4)
  %24 = call i32 @dma_fence_context_alloc(i32 1)
  %25 = load %struct.msm_fence_context*, %struct.msm_fence_context** %6, align 8
  %26 = getelementptr inbounds %struct.msm_fence_context, %struct.msm_fence_context* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.msm_fence_context*, %struct.msm_fence_context** %6, align 8
  %28 = getelementptr inbounds %struct.msm_fence_context, %struct.msm_fence_context* %27, i32 0, i32 1
  %29 = call i32 @init_waitqueue_head(i32* %28)
  %30 = load %struct.msm_fence_context*, %struct.msm_fence_context** %6, align 8
  %31 = getelementptr inbounds %struct.msm_fence_context, %struct.msm_fence_context* %30, i32 0, i32 0
  %32 = call i32 @spin_lock_init(i32* %31)
  %33 = load %struct.msm_fence_context*, %struct.msm_fence_context** %6, align 8
  store %struct.msm_fence_context* %33, %struct.msm_fence_context** %3, align 8
  br label %34

34:                                               ; preds = %15, %11
  %35 = load %struct.msm_fence_context*, %struct.msm_fence_context** %3, align 8
  ret %struct.msm_fence_context* %35
}

declare dso_local %struct.msm_fence_context* @kzalloc(i32, i32) #1

declare dso_local %struct.msm_fence_context* @ERR_PTR(i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @dma_fence_context_alloc(i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
