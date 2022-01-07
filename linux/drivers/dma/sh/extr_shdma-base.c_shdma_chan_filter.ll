; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/sh/extr_shdma-base.c_shdma_chan_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/sh/extr_shdma-base.c_shdma_chan_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.shdma_chan = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.shdma_dev = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 (%struct.shdma_chan*, i32, i32, i32)* }
%struct.TYPE_6__ = type { i32 }

@shdma_alloc_chan_resources = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"invalid slave ID passed to dma_request_slave\0A\00", align 1
@slave_num = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @shdma_chan_filter(%struct.dma_chan* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.shdma_chan*, align 8
  %7 = alloca %struct.shdma_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = ptrtoint i8* %10 to i64
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %8, align 4
  %13 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %14 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @shdma_alloc_chan_resources, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %82

21:                                               ; preds = %2
  %22 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %23 = call %struct.shdma_chan* @to_shdma_chan(%struct.dma_chan* %22)
  store %struct.shdma_chan* %23, %struct.shdma_chan** %6, align 8
  %24 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %25 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = call %struct.shdma_dev* @to_shdma_dev(%struct.TYPE_8__* %26)
  store %struct.shdma_dev* %27, %struct.shdma_dev** %7, align 8
  %28 = load %struct.shdma_chan*, %struct.shdma_chan** %6, align 8
  %29 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %28, i32 0, i32 2
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %21
  %35 = load %struct.shdma_dev*, %struct.shdma_dev** %7, align 8
  %36 = getelementptr inbounds %struct.shdma_dev, %struct.shdma_dev* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32 (%struct.shdma_chan*, i32, i32, i32)*, i32 (%struct.shdma_chan*, i32, i32, i32)** %38, align 8
  %40 = load %struct.shdma_chan*, %struct.shdma_chan** %6, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 %39(%struct.shdma_chan* %40, i32 %41, i32 0, i32 1)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %82

46:                                               ; preds = %34
  %47 = load %struct.shdma_chan*, %struct.shdma_chan** %6, align 8
  %48 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.shdma_chan*, %struct.shdma_chan** %6, align 8
  %51 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  store i32 1, i32* %3, align 4
  br label %82

52:                                               ; preds = %21
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load %struct.shdma_dev*, %struct.shdma_dev** %7, align 8
  %57 = getelementptr inbounds %struct.shdma_dev, %struct.shdma_dev* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @dev_warn(i32 %59, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %82

61:                                               ; preds = %52
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @slave_num, align 4
  %64 = icmp sge i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %82

66:                                               ; preds = %61
  %67 = load %struct.shdma_dev*, %struct.shdma_dev** %7, align 8
  %68 = getelementptr inbounds %struct.shdma_dev, %struct.shdma_dev* %67, i32 0, i32 0
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32 (%struct.shdma_chan*, i32, i32, i32)*, i32 (%struct.shdma_chan*, i32, i32, i32)** %70, align 8
  %72 = load %struct.shdma_chan*, %struct.shdma_chan** %6, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 %71(%struct.shdma_chan* %72, i32 %73, i32 0, i32 1)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %82

78:                                               ; preds = %66
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.shdma_chan*, %struct.shdma_chan** %6, align 8
  %81 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  store i32 1, i32* %3, align 4
  br label %82

82:                                               ; preds = %78, %77, %65, %55, %46, %45, %20
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.shdma_chan* @to_shdma_chan(%struct.dma_chan*) #1

declare dso_local %struct.shdma_dev* @to_shdma_dev(%struct.TYPE_8__*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
