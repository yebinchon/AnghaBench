; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-fence-array.c_dma_fence_match_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-fence-array.c_dma_fence_match_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i64 }
%struct.dma_fence_array = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dma_fence_match_context(%struct.dma_fence* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_fence*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dma_fence_array*, align 8
  %7 = alloca i32, align 4
  store %struct.dma_fence* %0, %struct.dma_fence** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %9 = call %struct.dma_fence_array* @to_dma_fence_array(%struct.dma_fence* %8)
  store %struct.dma_fence_array* %9, %struct.dma_fence_array** %6, align 8
  %10 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %11 = call i32 @dma_fence_is_array(%struct.dma_fence* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %15 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %3, align 4
  br label %45

20:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %41, %20
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.dma_fence_array*, %struct.dma_fence_array** %6, align 8
  %24 = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %21
  %28 = load %struct.dma_fence_array*, %struct.dma_fence_array** %6, align 8
  %29 = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %30, i64 %32
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %45

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %7, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %21

44:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %39, %13
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.dma_fence_array* @to_dma_fence_array(%struct.dma_fence*) #1

declare dso_local i32 @dma_fence_is_array(%struct.dma_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
