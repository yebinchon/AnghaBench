; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-fence-array.c_dma_fence_array_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-fence-array.c_dma_fence_array_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence_array = type { i32, %struct.TYPE_2__, %struct.dma_fence**, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.dma_fence = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@dma_fence_array_ops = common dso_local global i32 0, align 4
@irq_dma_fence_array_work = common dso_local global i32 0, align 4
@PENDING_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dma_fence_array* @dma_fence_array_create(i32 %0, %struct.dma_fence** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.dma_fence_array*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dma_fence**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dma_fence_array*, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store %struct.dma_fence** %1, %struct.dma_fence*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 32, i64* %13, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = load i64, i64* %13, align 8
  %18 = add i64 %17, %16
  store i64 %18, i64* %13, align 8
  %19 = load i64, i64* %13, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.dma_fence_array* @kzalloc(i64 %19, i32 %20)
  store %struct.dma_fence_array* %21, %struct.dma_fence_array** %12, align 8
  %22 = load %struct.dma_fence_array*, %struct.dma_fence_array** %12, align 8
  %23 = icmp ne %struct.dma_fence_array* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %5
  store %struct.dma_fence_array* null, %struct.dma_fence_array** %6, align 8
  br label %61

25:                                               ; preds = %5
  %26 = load %struct.dma_fence_array*, %struct.dma_fence_array** %12, align 8
  %27 = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %26, i32 0, i32 5
  %28 = call i32 @spin_lock_init(i32* %27)
  %29 = load %struct.dma_fence_array*, %struct.dma_fence_array** %12, align 8
  %30 = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %29, i32 0, i32 1
  %31 = load %struct.dma_fence_array*, %struct.dma_fence_array** %12, align 8
  %32 = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %31, i32 0, i32 5
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @dma_fence_init(%struct.TYPE_2__* %30, i32* @dma_fence_array_ops, i32* %32, i32 %33, i32 %34)
  %36 = load %struct.dma_fence_array*, %struct.dma_fence_array** %12, align 8
  %37 = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %36, i32 0, i32 4
  %38 = load i32, i32* @irq_dma_fence_array_work, align 4
  %39 = call i32 @init_irq_work(i32* %37, i32 %38)
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.dma_fence_array*, %struct.dma_fence_array** %12, align 8
  %42 = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.dma_fence_array*, %struct.dma_fence_array** %12, align 8
  %44 = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %43, i32 0, i32 3
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %25
  br label %50

48:                                               ; preds = %25
  %49 = load i32, i32* %7, align 4
  br label %50

50:                                               ; preds = %48, %47
  %51 = phi i32 [ 1, %47 ], [ %49, %48 ]
  %52 = call i32 @atomic_set(i32* %44, i32 %51)
  %53 = load %struct.dma_fence**, %struct.dma_fence*** %8, align 8
  %54 = load %struct.dma_fence_array*, %struct.dma_fence_array** %12, align 8
  %55 = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %54, i32 0, i32 2
  store %struct.dma_fence** %53, %struct.dma_fence*** %55, align 8
  %56 = load i32, i32* @PENDING_ERROR, align 4
  %57 = load %struct.dma_fence_array*, %struct.dma_fence_array** %12, align 8
  %58 = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 4
  %60 = load %struct.dma_fence_array*, %struct.dma_fence_array** %12, align 8
  store %struct.dma_fence_array* %60, %struct.dma_fence_array** %6, align 8
  br label %61

61:                                               ; preds = %50, %24
  %62 = load %struct.dma_fence_array*, %struct.dma_fence_array** %6, align 8
  ret %struct.dma_fence_array* %62
}

declare dso_local %struct.dma_fence_array* @kzalloc(i64, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dma_fence_init(%struct.TYPE_2__*, i32*, i32*, i32, i32) #1

declare dso_local i32 @init_irq_work(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
