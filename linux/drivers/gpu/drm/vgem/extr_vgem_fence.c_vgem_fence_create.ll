; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vgem/extr_vgem_fence.c_vgem_fence_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vgem/extr_vgem_fence.c_vgem_fence_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }
%struct.vgem_file = type { i32 }
%struct.vgem_fence = type { %struct.dma_fence, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@vgem_fence_ops = common dso_local global i32 0, align 4
@vgem_fence_timeout = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@VGEM_FENCE_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_fence* (%struct.vgem_file*, i32)* @vgem_fence_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_fence* @vgem_fence_create(%struct.vgem_file* %0, i32 %1) #0 {
  %3 = alloca %struct.dma_fence*, align 8
  %4 = alloca %struct.vgem_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vgem_fence*, align 8
  store %struct.vgem_file* %0, %struct.vgem_file** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.vgem_fence* @kzalloc(i32 12, i32 %7)
  store %struct.vgem_fence* %8, %struct.vgem_fence** %6, align 8
  %9 = load %struct.vgem_fence*, %struct.vgem_fence** %6, align 8
  %10 = icmp ne %struct.vgem_fence* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.dma_fence* null, %struct.dma_fence** %3, align 8
  br label %34

12:                                               ; preds = %2
  %13 = load %struct.vgem_fence*, %struct.vgem_fence** %6, align 8
  %14 = getelementptr inbounds %struct.vgem_fence, %struct.vgem_fence* %13, i32 0, i32 2
  %15 = call i32 @spin_lock_init(i32* %14)
  %16 = load %struct.vgem_fence*, %struct.vgem_fence** %6, align 8
  %17 = getelementptr inbounds %struct.vgem_fence, %struct.vgem_fence* %16, i32 0, i32 0
  %18 = load %struct.vgem_fence*, %struct.vgem_fence** %6, align 8
  %19 = getelementptr inbounds %struct.vgem_fence, %struct.vgem_fence* %18, i32 0, i32 2
  %20 = call i32 @dma_fence_context_alloc(i32 1)
  %21 = call i32 @dma_fence_init(%struct.dma_fence* %17, i32* @vgem_fence_ops, i32* %19, i32 %20, i32 1)
  %22 = load %struct.vgem_fence*, %struct.vgem_fence** %6, align 8
  %23 = getelementptr inbounds %struct.vgem_fence, %struct.vgem_fence* %22, i32 0, i32 1
  %24 = load i32, i32* @vgem_fence_timeout, align 4
  %25 = call i32 @timer_setup(i32* %23, i32 %24, i32 0)
  %26 = load %struct.vgem_fence*, %struct.vgem_fence** %6, align 8
  %27 = getelementptr inbounds %struct.vgem_fence, %struct.vgem_fence* %26, i32 0, i32 1
  %28 = load i64, i64* @jiffies, align 8
  %29 = load i64, i64* @VGEM_FENCE_TIMEOUT, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @mod_timer(i32* %27, i64 %30)
  %32 = load %struct.vgem_fence*, %struct.vgem_fence** %6, align 8
  %33 = getelementptr inbounds %struct.vgem_fence, %struct.vgem_fence* %32, i32 0, i32 0
  store %struct.dma_fence* %33, %struct.dma_fence** %3, align 8
  br label %34

34:                                               ; preds = %12, %11
  %35 = load %struct.dma_fence*, %struct.dma_fence** %3, align 8
  ret %struct.dma_fence* %35
}

declare dso_local %struct.vgem_fence* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dma_fence_init(%struct.dma_fence*, i32*, i32*, i32, i32) #1

declare dso_local i32 @dma_fence_context_alloc(i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
