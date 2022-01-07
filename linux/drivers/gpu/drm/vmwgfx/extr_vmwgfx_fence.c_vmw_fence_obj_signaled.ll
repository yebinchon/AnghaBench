; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fence.c_vmw_fence_obj_signaled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fence.c_vmw_fence_obj_signaled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_fence_obj = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.vmw_fence_manager = type { i32 }

@DMA_FENCE_FLAG_SIGNALED_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_fence_obj_signaled(%struct.vmw_fence_obj* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmw_fence_obj*, align 8
  %4 = alloca %struct.vmw_fence_manager*, align 8
  store %struct.vmw_fence_obj* %0, %struct.vmw_fence_obj** %3, align 8
  %5 = load %struct.vmw_fence_obj*, %struct.vmw_fence_obj** %3, align 8
  %6 = call %struct.vmw_fence_manager* @fman_from_fence(%struct.vmw_fence_obj* %5)
  store %struct.vmw_fence_manager* %6, %struct.vmw_fence_manager** %4, align 8
  %7 = load i32, i32* @DMA_FENCE_FLAG_SIGNALED_BIT, align 4
  %8 = load %struct.vmw_fence_obj*, %struct.vmw_fence_obj** %3, align 8
  %9 = getelementptr inbounds %struct.vmw_fence_obj, %struct.vmw_fence_obj* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i64 @test_bit(i32 %7, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %20

14:                                               ; preds = %1
  %15 = load %struct.vmw_fence_manager*, %struct.vmw_fence_manager** %4, align 8
  %16 = call i32 @vmw_fences_update(%struct.vmw_fence_manager* %15)
  %17 = load %struct.vmw_fence_obj*, %struct.vmw_fence_obj** %3, align 8
  %18 = getelementptr inbounds %struct.vmw_fence_obj, %struct.vmw_fence_obj* %17, i32 0, i32 0
  %19 = call i32 @dma_fence_is_signaled(%struct.TYPE_2__* %18)
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %14, %13
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local %struct.vmw_fence_manager* @fman_from_fence(%struct.vmw_fence_obj*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @vmw_fences_update(%struct.vmw_fence_manager*) #1

declare dso_local i32 @dma_fence_is_signaled(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
