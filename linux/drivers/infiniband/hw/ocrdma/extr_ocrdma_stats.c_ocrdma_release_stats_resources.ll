; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_stats.c_ocrdma_release_stats_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_stats.c_ocrdma_release_stats_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %struct.TYPE_4__, %struct.stats_mem }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.stats_mem = type { i32, i32*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocrdma_release_stats_resources(%struct.ocrdma_dev* %0) #0 {
  %2 = alloca %struct.ocrdma_dev*, align 8
  %3 = alloca %struct.stats_mem*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %2, align 8
  %4 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %5 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %4, i32 0, i32 1
  store %struct.stats_mem* %5, %struct.stats_mem** %3, align 8
  %6 = load %struct.stats_mem*, %struct.stats_mem** %3, align 8
  %7 = getelementptr inbounds %struct.stats_mem, %struct.stats_mem* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  %11 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %12 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.stats_mem*, %struct.stats_mem** %3, align 8
  %17 = getelementptr inbounds %struct.stats_mem, %struct.stats_mem* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.stats_mem*, %struct.stats_mem** %3, align 8
  %20 = getelementptr inbounds %struct.stats_mem, %struct.stats_mem* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.stats_mem*, %struct.stats_mem** %3, align 8
  %23 = getelementptr inbounds %struct.stats_mem, %struct.stats_mem* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dma_free_coherent(i32* %15, i32 %18, i32* %21, i32 %24)
  br label %26

26:                                               ; preds = %10, %1
  %27 = load %struct.stats_mem*, %struct.stats_mem** %3, align 8
  %28 = getelementptr inbounds %struct.stats_mem, %struct.stats_mem* %27, i32 0, i32 1
  store i32* null, i32** %28, align 8
  %29 = load %struct.stats_mem*, %struct.stats_mem** %3, align 8
  %30 = getelementptr inbounds %struct.stats_mem, %struct.stats_mem* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @kfree(i32 %31)
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
