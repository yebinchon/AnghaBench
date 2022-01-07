; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_sdma.c_alloc_sdma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_sdma.c_alloc_sdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { i32, i64, i32*, %struct.TYPE_4__*, i64*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@sdma_descq_cnt = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"failed to allocate SendDMA descriptor FIFO memory\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"failed to allocate SendDMA head memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_pportdata*)* @alloc_sdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_sdma(%struct.qib_pportdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qib_pportdata*, align 8
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %3, align 8
  %4 = load i32, i32* @sdma_descq_cnt, align 4
  %5 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %6 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %5, i32 0, i32 0
  store i32 %4, i32* %6, align 8
  %7 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %8 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %13 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %12, i32 0, i32 0
  store i32 256, i32* %13, align 8
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %16 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %15, i32 0, i32 3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %22 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 8
  %26 = trunc i64 %25 to i32
  %27 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %28 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %27, i32 0, i32 1
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @dma_alloc_coherent(i32* %20, i32 %26, i64* %28, i32 %29)
  %31 = bitcast i8* %30 to i32*
  %32 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %33 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %32, i32 0, i32 2
  store i32* %31, i32** %33, align 8
  %34 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %35 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %14
  %39 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %40 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %39, i32 0, i32 3
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = call i32 @qib_dev_err(%struct.TYPE_4__* %41, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %97

43:                                               ; preds = %14
  %44 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %45 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %44, i32 0, i32 3
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* @PAGE_SIZE, align 4
  %51 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %52 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %51, i32 0, i32 5
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i8* @dma_alloc_coherent(i32* %49, i32 %50, i64* %52, i32 %53)
  %55 = bitcast i8* %54 to i64*
  %56 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %57 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %56, i32 0, i32 4
  store i64* %55, i64** %57, align 8
  %58 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %59 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %58, i32 0, i32 4
  %60 = load i64*, i64** %59, align 8
  %61 = icmp ne i64* %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %43
  %63 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %64 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %63, i32 0, i32 3
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = call i32 @qib_dev_err(%struct.TYPE_4__* %65, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %72

67:                                               ; preds = %43
  %68 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %69 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %68, i32 0, i32 4
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  store i64 0, i64* %71, align 8
  store i32 0, i32* %2, align 4
  br label %102

72:                                               ; preds = %62
  %73 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %74 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %73, i32 0, i32 3
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %80 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 8
  %84 = trunc i64 %83 to i32
  %85 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %86 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = bitcast i32* %87 to i8*
  %89 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %90 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @dma_free_coherent(i32* %78, i32 %84, i8* %88, i64 %91)
  %93 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %94 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %93, i32 0, i32 2
  store i32* null, i32** %94, align 8
  %95 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %96 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %95, i32 0, i32 1
  store i64 0, i64* %96, align 8
  br label %97

97:                                               ; preds = %72, %38
  %98 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %99 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %98, i32 0, i32 0
  store i32 0, i32* %99, align 8
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %97, %67
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @qib_dev_err(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
