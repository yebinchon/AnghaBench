; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_user_sdma.c_qib_user_sdma_queue_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_user_sdma.c_qib_user_sdma_queue_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_user_sdma_queue = type { i64, i32, i32, %struct.qib_user_sdma_queue*, i32 }

@qib_user_sdma_rb_root = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qib_user_sdma_queue_destroy(%struct.qib_user_sdma_queue* %0) #0 {
  %2 = alloca %struct.qib_user_sdma_queue*, align 8
  store %struct.qib_user_sdma_queue* %0, %struct.qib_user_sdma_queue** %2, align 8
  %3 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %2, align 8
  %4 = icmp ne %struct.qib_user_sdma_queue* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %40

6:                                                ; preds = %1
  %7 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %2, align 8
  %8 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %7, i32 0, i32 3
  %9 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %8, align 8
  %10 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, -1
  store i64 %12, i64* %10, align 8
  %13 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %2, align 8
  %14 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %13, i32 0, i32 3
  %15 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %14, align 8
  %16 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %6
  %20 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %2, align 8
  %21 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %20, i32 0, i32 3
  %22 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %21, align 8
  %23 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %22, i32 0, i32 4
  %24 = call i32 @rb_erase(i32* %23, i32* @qib_user_sdma_rb_root)
  %25 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %2, align 8
  %26 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %25, i32 0, i32 3
  %27 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %26, align 8
  %28 = call i32 @kfree(%struct.qib_user_sdma_queue* %27)
  br label %29

29:                                               ; preds = %19, %6
  %30 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %2, align 8
  %31 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dma_pool_destroy(i32 %32)
  %34 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %2, align 8
  %35 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @kmem_cache_destroy(i32 %36)
  %38 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %2, align 8
  %39 = call i32 @kfree(%struct.qib_user_sdma_queue* %38)
  br label %40

40:                                               ; preds = %29, %5
  ret void
}

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.qib_user_sdma_queue*) #1

declare dso_local i32 @dma_pool_destroy(i32) #1

declare dso_local i32 @kmem_cache_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
