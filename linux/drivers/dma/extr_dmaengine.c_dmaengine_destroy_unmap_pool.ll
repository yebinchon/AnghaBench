; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_dmaengine.c_dmaengine_destroy_unmap_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_dmaengine.c_dmaengine_destroy_unmap_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmaengine_unmap_pool = type { i32*, i32* }

@unmap_pool = common dso_local global %struct.dmaengine_unmap_pool* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dmaengine_destroy_unmap_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmaengine_destroy_unmap_pool() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.dmaengine_unmap_pool*, align 8
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %25, %0
  %4 = load i32, i32* %1, align 4
  %5 = load %struct.dmaengine_unmap_pool*, %struct.dmaengine_unmap_pool** @unmap_pool, align 8
  %6 = call i32 @ARRAY_SIZE(%struct.dmaengine_unmap_pool* %5)
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %8, label %28

8:                                                ; preds = %3
  %9 = load %struct.dmaengine_unmap_pool*, %struct.dmaengine_unmap_pool** @unmap_pool, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.dmaengine_unmap_pool, %struct.dmaengine_unmap_pool* %9, i64 %11
  store %struct.dmaengine_unmap_pool* %12, %struct.dmaengine_unmap_pool** %2, align 8
  %13 = load %struct.dmaengine_unmap_pool*, %struct.dmaengine_unmap_pool** %2, align 8
  %14 = getelementptr inbounds %struct.dmaengine_unmap_pool, %struct.dmaengine_unmap_pool* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @mempool_destroy(i32* %15)
  %17 = load %struct.dmaengine_unmap_pool*, %struct.dmaengine_unmap_pool** %2, align 8
  %18 = getelementptr inbounds %struct.dmaengine_unmap_pool, %struct.dmaengine_unmap_pool* %17, i32 0, i32 1
  store i32* null, i32** %18, align 8
  %19 = load %struct.dmaengine_unmap_pool*, %struct.dmaengine_unmap_pool** %2, align 8
  %20 = getelementptr inbounds %struct.dmaengine_unmap_pool, %struct.dmaengine_unmap_pool* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @kmem_cache_destroy(i32* %21)
  %23 = load %struct.dmaengine_unmap_pool*, %struct.dmaengine_unmap_pool** %2, align 8
  %24 = getelementptr inbounds %struct.dmaengine_unmap_pool, %struct.dmaengine_unmap_pool* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  br label %25

25:                                               ; preds = %8
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %1, align 4
  br label %3

28:                                               ; preds = %3
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.dmaengine_unmap_pool*) #1

declare dso_local i32 @mempool_destroy(i32*) #1

declare dso_local i32 @kmem_cache_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
