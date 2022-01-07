; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_display.c_amdgpu_display_flip_handle_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_display.c_amdgpu_display_flip_handle_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_flip_work = type { i32 }
%struct.dma_fence = type { i32 }

@amdgpu_display_flip_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_flip_work*, %struct.dma_fence**)* @amdgpu_display_flip_handle_fence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_display_flip_handle_fence(%struct.amdgpu_flip_work* %0, %struct.dma_fence** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_flip_work*, align 8
  %5 = alloca %struct.dma_fence**, align 8
  %6 = alloca %struct.dma_fence*, align 8
  store %struct.amdgpu_flip_work* %0, %struct.amdgpu_flip_work** %4, align 8
  store %struct.dma_fence** %1, %struct.dma_fence*** %5, align 8
  %7 = load %struct.dma_fence**, %struct.dma_fence*** %5, align 8
  %8 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  store %struct.dma_fence* %8, %struct.dma_fence** %6, align 8
  %9 = load %struct.dma_fence*, %struct.dma_fence** %6, align 8
  %10 = icmp eq %struct.dma_fence* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %24

12:                                               ; preds = %2
  %13 = load %struct.dma_fence**, %struct.dma_fence*** %5, align 8
  store %struct.dma_fence* null, %struct.dma_fence** %13, align 8
  %14 = load %struct.dma_fence*, %struct.dma_fence** %6, align 8
  %15 = load %struct.amdgpu_flip_work*, %struct.amdgpu_flip_work** %4, align 8
  %16 = getelementptr inbounds %struct.amdgpu_flip_work, %struct.amdgpu_flip_work* %15, i32 0, i32 0
  %17 = load i32, i32* @amdgpu_display_flip_callback, align 4
  %18 = call i32 @dma_fence_add_callback(%struct.dma_fence* %14, i32* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %24

21:                                               ; preds = %12
  %22 = load %struct.dma_fence*, %struct.dma_fence** %6, align 8
  %23 = call i32 @dma_fence_put(%struct.dma_fence* %22)
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %21, %20, %11
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @dma_fence_add_callback(%struct.dma_fence*, i32*, i32) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
