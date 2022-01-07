; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_sync_file.c_sync_file_set_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_sync_file.c_sync_file_set_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sync_file = type { %struct.dma_fence* }
%struct.dma_fence = type { i32 }
%struct.dma_fence_array = type { %struct.dma_fence }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sync_file*, %struct.dma_fence**, i32)* @sync_file_set_fence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sync_file_set_fence(%struct.sync_file* %0, %struct.dma_fence** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sync_file*, align 8
  %6 = alloca %struct.dma_fence**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dma_fence_array*, align 8
  store %struct.sync_file* %0, %struct.sync_file** %5, align 8
  store %struct.dma_fence** %1, %struct.dma_fence*** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load %struct.dma_fence**, %struct.dma_fence*** %6, align 8
  %13 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %12, i64 0
  %14 = load %struct.dma_fence*, %struct.dma_fence** %13, align 8
  %15 = load %struct.sync_file*, %struct.sync_file** %5, align 8
  %16 = getelementptr inbounds %struct.sync_file, %struct.sync_file* %15, i32 0, i32 0
  store %struct.dma_fence* %14, %struct.dma_fence** %16, align 8
  %17 = load %struct.dma_fence**, %struct.dma_fence*** %6, align 8
  %18 = call i32 @kfree(%struct.dma_fence** %17)
  br label %34

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.dma_fence**, %struct.dma_fence*** %6, align 8
  %22 = call i32 @dma_fence_context_alloc(i32 1)
  %23 = call %struct.dma_fence_array* @dma_fence_array_create(i32 %20, %struct.dma_fence** %21, i32 %22, i32 1, i32 0)
  store %struct.dma_fence_array* %23, %struct.dma_fence_array** %8, align 8
  %24 = load %struct.dma_fence_array*, %struct.dma_fence_array** %8, align 8
  %25 = icmp ne %struct.dma_fence_array* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %35

29:                                               ; preds = %19
  %30 = load %struct.dma_fence_array*, %struct.dma_fence_array** %8, align 8
  %31 = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %30, i32 0, i32 0
  %32 = load %struct.sync_file*, %struct.sync_file** %5, align 8
  %33 = getelementptr inbounds %struct.sync_file, %struct.sync_file* %32, i32 0, i32 0
  store %struct.dma_fence* %31, %struct.dma_fence** %33, align 8
  br label %34

34:                                               ; preds = %29, %11
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %26
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @kfree(%struct.dma_fence**) #1

declare dso_local %struct.dma_fence_array* @dma_fence_array_create(i32, %struct.dma_fence**, i32, i32, i32) #1

declare dso_local i32 @dma_fence_context_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
