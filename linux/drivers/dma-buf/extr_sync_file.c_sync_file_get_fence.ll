; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_sync_file.c_sync_file_get_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_sync_file.c_sync_file_get_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }
%struct.sync_file = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dma_fence* @sync_file_get_fence(i32 %0) #0 {
  %2 = alloca %struct.dma_fence*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sync_file*, align 8
  %5 = alloca %struct.dma_fence*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.sync_file* @sync_file_fdget(i32 %6)
  store %struct.sync_file* %7, %struct.sync_file** %4, align 8
  %8 = load %struct.sync_file*, %struct.sync_file** %4, align 8
  %9 = icmp ne %struct.sync_file* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.dma_fence* null, %struct.dma_fence** %2, align 8
  br label %21

11:                                               ; preds = %1
  %12 = load %struct.sync_file*, %struct.sync_file** %4, align 8
  %13 = getelementptr inbounds %struct.sync_file, %struct.sync_file* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.dma_fence* @dma_fence_get(i32 %14)
  store %struct.dma_fence* %15, %struct.dma_fence** %5, align 8
  %16 = load %struct.sync_file*, %struct.sync_file** %4, align 8
  %17 = getelementptr inbounds %struct.sync_file, %struct.sync_file* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @fput(i32 %18)
  %20 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  store %struct.dma_fence* %20, %struct.dma_fence** %2, align 8
  br label %21

21:                                               ; preds = %11, %10
  %22 = load %struct.dma_fence*, %struct.dma_fence** %2, align 8
  ret %struct.dma_fence* %22
}

declare dso_local %struct.sync_file* @sync_file_fdget(i32) #1

declare dso_local %struct.dma_fence* @dma_fence_get(i32) #1

declare dso_local i32 @fput(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
