; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_omap-dma.c_omap_dma_desc_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_omap-dma.c_omap_dma_desc_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virt_dma_desc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.omap_desc = type { i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.omap_dmadev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virt_dma_desc*)* @omap_dma_desc_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_dma_desc_free(%struct.virt_dma_desc* %0) #0 {
  %2 = alloca %struct.virt_dma_desc*, align 8
  %3 = alloca %struct.omap_desc*, align 8
  %4 = alloca %struct.omap_dmadev*, align 8
  %5 = alloca i32, align 4
  store %struct.virt_dma_desc* %0, %struct.virt_dma_desc** %2, align 8
  %6 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %2, align 8
  %7 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %6, i32 0, i32 0
  %8 = call %struct.omap_desc* @to_omap_dma_desc(%struct.TYPE_6__* %7)
  store %struct.omap_desc* %8, %struct.omap_desc** %3, align 8
  %9 = load %struct.omap_desc*, %struct.omap_desc** %3, align 8
  %10 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %63

13:                                               ; preds = %1
  %14 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %2, align 8
  %15 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.omap_dmadev* @to_omap_dma_dev(i32 %19)
  store %struct.omap_dmadev* %20, %struct.omap_dmadev** %4, align 8
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %59, %13
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.omap_desc*, %struct.omap_desc** %3, align 8
  %24 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %62

27:                                               ; preds = %21
  %28 = load %struct.omap_desc*, %struct.omap_desc** %3, align 8
  %29 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %27
  %38 = load %struct.omap_dmadev*, %struct.omap_dmadev** %4, align 8
  %39 = getelementptr inbounds %struct.omap_dmadev, %struct.omap_dmadev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.omap_desc*, %struct.omap_desc** %3, align 8
  %42 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.omap_desc*, %struct.omap_desc** %3, align 8
  %50 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @dma_pool_free(i32 %40, i64 %48, i32 %56)
  br label %58

58:                                               ; preds = %37, %27
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %21

62:                                               ; preds = %21
  br label %63

63:                                               ; preds = %62, %1
  %64 = load %struct.omap_desc*, %struct.omap_desc** %3, align 8
  %65 = call i32 @kfree(%struct.omap_desc* %64)
  ret void
}

declare dso_local %struct.omap_desc* @to_omap_dma_desc(%struct.TYPE_6__*) #1

declare dso_local %struct.omap_dmadev* @to_omap_dma_dev(i32) #1

declare dso_local i32 @dma_pool_free(i32, i64, i32) #1

declare dso_local i32 @kfree(%struct.omap_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
