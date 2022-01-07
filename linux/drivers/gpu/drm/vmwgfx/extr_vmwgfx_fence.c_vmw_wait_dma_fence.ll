; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fence.c_vmw_wait_dma_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fence.c_vmw_wait_dma_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_fence_manager = type { i32 }
%struct.dma_fence = type { i32 }
%struct.dma_fence_array = type { i32, %struct.dma_fence** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_wait_dma_fence(%struct.vmw_fence_manager* %0, %struct.dma_fence* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmw_fence_manager*, align 8
  %5 = alloca %struct.dma_fence*, align 8
  %6 = alloca %struct.dma_fence_array*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dma_fence*, align 8
  store %struct.vmw_fence_manager* %0, %struct.vmw_fence_manager** %4, align 8
  store %struct.dma_fence* %1, %struct.dma_fence** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %11 = call i64 @dma_fence_is_signaled(%struct.dma_fence* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

14:                                               ; preds = %2
  %15 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %16 = call i32 @dma_fence_is_array(%struct.dma_fence* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %20 = call i32 @dma_fence_wait(%struct.dma_fence* %19, i32 1)
  store i32 %20, i32* %3, align 4
  br label %49

21:                                               ; preds = %14
  %22 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %23 = call %struct.dma_fence_array* @to_dma_fence_array(%struct.dma_fence* %22)
  store %struct.dma_fence_array* %23, %struct.dma_fence_array** %6, align 8
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %45, %21
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.dma_fence_array*, %struct.dma_fence_array** %6, align 8
  %27 = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %24
  %31 = load %struct.dma_fence_array*, %struct.dma_fence_array** %6, align 8
  %32 = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %31, i32 0, i32 1
  %33 = load %struct.dma_fence**, %struct.dma_fence*** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %33, i64 %35
  %37 = load %struct.dma_fence*, %struct.dma_fence** %36, align 8
  store %struct.dma_fence* %37, %struct.dma_fence** %9, align 8
  %38 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %39 = call i32 @dma_fence_wait(%struct.dma_fence* %38, i32 1)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %30
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %49

44:                                               ; preds = %30
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %24

48:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %42, %18, %13
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @dma_fence_is_signaled(%struct.dma_fence*) #1

declare dso_local i32 @dma_fence_is_array(%struct.dma_fence*) #1

declare dso_local i32 @dma_fence_wait(%struct.dma_fence*, i32) #1

declare dso_local %struct.dma_fence_array* @to_dma_fence_array(%struct.dma_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
