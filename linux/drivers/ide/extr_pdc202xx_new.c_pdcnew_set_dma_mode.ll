; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_pdc202xx_new.c_pdcnew_set_dma_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_pdc202xx_new.c_pdcnew_set_dma_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.pci_dev = type { i32 }

@XFER_UDMA_0 = common dso_local global i32 0, align 4
@udma_timings = common dso_local global %struct.TYPE_11__* null, align 8
@mwdma_timings = common dso_local global %struct.TYPE_12__* null, align 8
@XFER_UDMA_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_10__*)* @pdcnew_set_dma_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdcnew_set_dma_mode(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.pci_dev* @to_pci_dev(i32 %12)
  store %struct.pci_dev* %13, %struct.pci_dev** %5, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 8, i32 0
  store i32 %20, i32* %6, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  %24 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %25 = call i32 @max_dma_rate(%struct.pci_dev* %24)
  %26 = icmp eq i32 %25, 4
  br i1 %26, label %27, label %86

27:                                               ; preds = %2
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, 7
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @XFER_UDMA_0, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %64

33:                                               ; preds = %27
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 16, %35
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** @udma_timings, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @set_indexed_reg(%struct.TYPE_9__* %34, i32 %36, i32 %42)
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 17, %45
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** @udma_timings, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @set_indexed_reg(%struct.TYPE_9__* %44, i32 %46, i32 %52)
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 18, %55
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** @udma_timings, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @set_indexed_reg(%struct.TYPE_9__* %54, i32 %56, i32 %62)
  br label %85

64:                                               ; preds = %27
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 14, %66
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** @mwdma_timings, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @set_indexed_reg(%struct.TYPE_9__* %65, i32 %67, i32 %73)
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 15, %76
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** @mwdma_timings, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @set_indexed_reg(%struct.TYPE_9__* %75, i32 %77, i32 %83)
  br label %85

85:                                               ; preds = %64, %33
  br label %102

86:                                               ; preds = %2
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @XFER_UDMA_2, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %86
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 16, %92
  %94 = call i32 @get_indexed_reg(%struct.TYPE_9__* %91, i32 %93)
  store i32 %94, i32* %9, align 4
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 16, %96
  %98 = load i32, i32* %9, align 4
  %99 = and i32 %98, 127
  %100 = call i32 @set_indexed_reg(%struct.TYPE_9__* %95, i32 %97, i32 %99)
  br label %101

101:                                              ; preds = %90, %86
  br label %102

102:                                              ; preds = %101, %85
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @max_dma_rate(%struct.pci_dev*) #1

declare dso_local i32 @set_indexed_reg(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @get_indexed_reg(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
