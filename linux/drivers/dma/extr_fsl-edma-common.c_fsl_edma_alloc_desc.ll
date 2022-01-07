; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-edma-common.c_fsl_edma_alloc_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-edma-common.c_fsl_edma_alloc_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_edma_desc = type { i32, %struct.TYPE_2__*, %struct.fsl_edma_chan* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.fsl_edma_chan = type { i32 }

@tcd = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fsl_edma_desc* (%struct.fsl_edma_chan*, i32)* @fsl_edma_alloc_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fsl_edma_desc* @fsl_edma_alloc_desc(%struct.fsl_edma_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.fsl_edma_desc*, align 8
  %4 = alloca %struct.fsl_edma_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsl_edma_desc*, align 8
  %7 = alloca i32, align 4
  store %struct.fsl_edma_chan* %0, %struct.fsl_edma_chan** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.fsl_edma_desc*, %struct.fsl_edma_desc** %6, align 8
  %9 = load i32, i32* @tcd, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @struct_size(%struct.fsl_edma_desc* %8, i32 %9, i32 %10)
  %12 = load i32, i32* @GFP_NOWAIT, align 4
  %13 = call %struct.fsl_edma_desc* @kzalloc(i32 %11, i32 %12)
  store %struct.fsl_edma_desc* %13, %struct.fsl_edma_desc** %6, align 8
  %14 = load %struct.fsl_edma_desc*, %struct.fsl_edma_desc** %6, align 8
  %15 = icmp ne %struct.fsl_edma_desc* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.fsl_edma_desc* null, %struct.fsl_edma_desc** %3, align 8
  br label %93

17:                                               ; preds = %2
  %18 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %4, align 8
  %19 = load %struct.fsl_edma_desc*, %struct.fsl_edma_desc** %6, align 8
  %20 = getelementptr inbounds %struct.fsl_edma_desc, %struct.fsl_edma_desc* %19, i32 0, i32 2
  store %struct.fsl_edma_chan* %18, %struct.fsl_edma_chan** %20, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.fsl_edma_desc*, %struct.fsl_edma_desc** %6, align 8
  %23 = getelementptr inbounds %struct.fsl_edma_desc, %struct.fsl_edma_desc* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %59, %17
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %62

28:                                               ; preds = %24
  %29 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %4, align 8
  %30 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @GFP_NOWAIT, align 4
  %33 = load %struct.fsl_edma_desc*, %struct.fsl_edma_desc** %6, align 8
  %34 = getelementptr inbounds %struct.fsl_edma_desc, %struct.fsl_edma_desc* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @dma_pool_alloc(i32 %31, i32 %32, i32* %39)
  %41 = load %struct.fsl_edma_desc*, %struct.fsl_edma_desc** %6, align 8
  %42 = getelementptr inbounds %struct.fsl_edma_desc, %struct.fsl_edma_desc* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i32 %40, i32* %47, align 4
  %48 = load %struct.fsl_edma_desc*, %struct.fsl_edma_desc** %6, align 8
  %49 = getelementptr inbounds %struct.fsl_edma_desc, %struct.fsl_edma_desc* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %28
  br label %64

58:                                               ; preds = %28
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %24

62:                                               ; preds = %24
  %63 = load %struct.fsl_edma_desc*, %struct.fsl_edma_desc** %6, align 8
  store %struct.fsl_edma_desc* %63, %struct.fsl_edma_desc** %3, align 8
  br label %93

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %69, %64
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %7, align 4
  %68 = icmp sge i32 %67, 0
  br i1 %68, label %69, label %90

69:                                               ; preds = %65
  %70 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %4, align 8
  %71 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.fsl_edma_desc*, %struct.fsl_edma_desc** %6, align 8
  %74 = getelementptr inbounds %struct.fsl_edma_desc, %struct.fsl_edma_desc* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.fsl_edma_desc*, %struct.fsl_edma_desc** %6, align 8
  %82 = getelementptr inbounds %struct.fsl_edma_desc, %struct.fsl_edma_desc* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @dma_pool_free(i32 %72, i32 %80, i32 %88)
  br label %65

90:                                               ; preds = %65
  %91 = load %struct.fsl_edma_desc*, %struct.fsl_edma_desc** %6, align 8
  %92 = call i32 @kfree(%struct.fsl_edma_desc* %91)
  store %struct.fsl_edma_desc* null, %struct.fsl_edma_desc** %3, align 8
  br label %93

93:                                               ; preds = %90, %62, %16
  %94 = load %struct.fsl_edma_desc*, %struct.fsl_edma_desc** %3, align 8
  ret %struct.fsl_edma_desc* %94
}

declare dso_local %struct.fsl_edma_desc* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.fsl_edma_desc*, i32, i32) #1

declare dso_local i32 @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @dma_pool_free(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.fsl_edma_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
