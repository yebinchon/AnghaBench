; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-cqdma.c_mtk_cqdma_prep_dma_memcpy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-cqdma.c_mtk_cqdma_prep_dma_memcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { %struct.dma_async_tx_descriptor* }
%struct.dma_chan = type { i32 }
%struct.mtk_cqdma_vdesc = type { i64, i64, i64, i64, %struct.TYPE_2__, %struct.mtk_cqdma_vdesc*, %struct.dma_chan* }
%struct.TYPE_2__ = type { %struct.dma_async_tx_descriptor }

@MTK_CQDMA_MAX_LEN = common dso_local global i64 0, align 8
@GFP_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.dma_chan*, i64, i64, i64, i64)* @mtk_cqdma_prep_dma_memcpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @mtk_cqdma_prep_dma_memcpy(%struct.dma_chan* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.dma_async_tx_descriptor*, align 8
  %7 = alloca %struct.dma_chan*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mtk_cqdma_vdesc**, align 8
  %13 = alloca %struct.dma_async_tx_descriptor*, align 8
  %14 = alloca %struct.dma_async_tx_descriptor*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %13, align 8
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %14, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* @MTK_CQDMA_MAX_LEN, align 8
  %20 = call i64 @DIV_ROUND_UP(i64 %18, i64 %19)
  store i64 %20, i64* %17, align 8
  %21 = load i64, i64* %17, align 8
  %22 = load i32, i32* @GFP_NOWAIT, align 4
  %23 = call %struct.mtk_cqdma_vdesc** @kcalloc(i64 %21, i32 8, i32 %22)
  store %struct.mtk_cqdma_vdesc** %23, %struct.mtk_cqdma_vdesc*** %12, align 8
  %24 = load %struct.mtk_cqdma_vdesc**, %struct.mtk_cqdma_vdesc*** %12, align 8
  %25 = icmp ne %struct.mtk_cqdma_vdesc** %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %5
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %6, align 8
  br label %149

27:                                               ; preds = %5
  store i64 0, i64* %15, align 8
  br label %28

28:                                               ; preds = %140, %27
  %29 = load i64, i64* %15, align 8
  %30 = load i64, i64* %17, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %143

32:                                               ; preds = %28
  %33 = load i32, i32* @GFP_NOWAIT, align 4
  %34 = call %struct.mtk_cqdma_vdesc* @kzalloc(i32 56, i32 %33)
  %35 = load %struct.mtk_cqdma_vdesc**, %struct.mtk_cqdma_vdesc*** %12, align 8
  %36 = load i64, i64* %15, align 8
  %37 = getelementptr inbounds %struct.mtk_cqdma_vdesc*, %struct.mtk_cqdma_vdesc** %35, i64 %36
  store %struct.mtk_cqdma_vdesc* %34, %struct.mtk_cqdma_vdesc** %37, align 8
  %38 = load %struct.mtk_cqdma_vdesc**, %struct.mtk_cqdma_vdesc*** %12, align 8
  %39 = load i64, i64* %15, align 8
  %40 = getelementptr inbounds %struct.mtk_cqdma_vdesc*, %struct.mtk_cqdma_vdesc** %38, i64 %39
  %41 = load %struct.mtk_cqdma_vdesc*, %struct.mtk_cqdma_vdesc** %40, align 8
  %42 = icmp ne %struct.mtk_cqdma_vdesc* %41, null
  br i1 %42, label %58, label %43

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %54, %43
  %45 = load i64, i64* %15, align 8
  %46 = icmp ugt i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load %struct.mtk_cqdma_vdesc**, %struct.mtk_cqdma_vdesc*** %12, align 8
  %49 = load i64, i64* %15, align 8
  %50 = sub i64 %49, 1
  %51 = getelementptr inbounds %struct.mtk_cqdma_vdesc*, %struct.mtk_cqdma_vdesc** %48, i64 %50
  %52 = load %struct.mtk_cqdma_vdesc*, %struct.mtk_cqdma_vdesc** %51, align 8
  %53 = call i32 @kfree(%struct.mtk_cqdma_vdesc* %52)
  br label %54

54:                                               ; preds = %47
  %55 = load i64, i64* %15, align 8
  %56 = add i64 %55, -1
  store i64 %56, i64* %15, align 8
  br label %44

57:                                               ; preds = %44
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %6, align 8
  br label %149

58:                                               ; preds = %32
  %59 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %60 = load %struct.mtk_cqdma_vdesc**, %struct.mtk_cqdma_vdesc*** %12, align 8
  %61 = load i64, i64* %15, align 8
  %62 = getelementptr inbounds %struct.mtk_cqdma_vdesc*, %struct.mtk_cqdma_vdesc** %60, i64 %61
  %63 = load %struct.mtk_cqdma_vdesc*, %struct.mtk_cqdma_vdesc** %62, align 8
  %64 = getelementptr inbounds %struct.mtk_cqdma_vdesc, %struct.mtk_cqdma_vdesc* %63, i32 0, i32 6
  store %struct.dma_chan* %59, %struct.dma_chan** %64, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* @MTK_CQDMA_MAX_LEN, align 8
  %67 = icmp ugt i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %58
  %69 = load i64, i64* @MTK_CQDMA_MAX_LEN, align 8
  br label %72

70:                                               ; preds = %58
  %71 = load i64, i64* %10, align 8
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i64 [ %69, %68 ], [ %71, %70 ]
  store i64 %73, i64* %16, align 8
  %74 = load i64, i64* %16, align 8
  %75 = load %struct.mtk_cqdma_vdesc**, %struct.mtk_cqdma_vdesc*** %12, align 8
  %76 = load i64, i64* %15, align 8
  %77 = getelementptr inbounds %struct.mtk_cqdma_vdesc*, %struct.mtk_cqdma_vdesc** %75, i64 %76
  %78 = load %struct.mtk_cqdma_vdesc*, %struct.mtk_cqdma_vdesc** %77, align 8
  %79 = getelementptr inbounds %struct.mtk_cqdma_vdesc, %struct.mtk_cqdma_vdesc* %78, i32 0, i32 0
  store i64 %74, i64* %79, align 8
  %80 = load i64, i64* %9, align 8
  %81 = load %struct.mtk_cqdma_vdesc**, %struct.mtk_cqdma_vdesc*** %12, align 8
  %82 = load i64, i64* %15, align 8
  %83 = getelementptr inbounds %struct.mtk_cqdma_vdesc*, %struct.mtk_cqdma_vdesc** %81, i64 %82
  %84 = load %struct.mtk_cqdma_vdesc*, %struct.mtk_cqdma_vdesc** %83, align 8
  %85 = getelementptr inbounds %struct.mtk_cqdma_vdesc, %struct.mtk_cqdma_vdesc* %84, i32 0, i32 1
  store i64 %80, i64* %85, align 8
  %86 = load i64, i64* %8, align 8
  %87 = load %struct.mtk_cqdma_vdesc**, %struct.mtk_cqdma_vdesc*** %12, align 8
  %88 = load i64, i64* %15, align 8
  %89 = getelementptr inbounds %struct.mtk_cqdma_vdesc*, %struct.mtk_cqdma_vdesc** %87, i64 %88
  %90 = load %struct.mtk_cqdma_vdesc*, %struct.mtk_cqdma_vdesc** %89, align 8
  %91 = getelementptr inbounds %struct.mtk_cqdma_vdesc, %struct.mtk_cqdma_vdesc* %90, i32 0, i32 2
  store i64 %86, i64* %91, align 8
  %92 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %93 = call i32 @to_virt_chan(%struct.dma_chan* %92)
  %94 = load %struct.mtk_cqdma_vdesc**, %struct.mtk_cqdma_vdesc*** %12, align 8
  %95 = load i64, i64* %15, align 8
  %96 = getelementptr inbounds %struct.mtk_cqdma_vdesc*, %struct.mtk_cqdma_vdesc** %94, i64 %95
  %97 = load %struct.mtk_cqdma_vdesc*, %struct.mtk_cqdma_vdesc** %96, align 8
  %98 = getelementptr inbounds %struct.mtk_cqdma_vdesc, %struct.mtk_cqdma_vdesc* %97, i32 0, i32 4
  %99 = load i64, i64* %11, align 8
  %100 = call %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32 %93, %struct.TYPE_2__* %98, i64 %99)
  store %struct.dma_async_tx_descriptor* %100, %struct.dma_async_tx_descriptor** %13, align 8
  %101 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %13, align 8
  %102 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %101, i32 0, i32 0
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %102, align 8
  %103 = load i64, i64* %15, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %72
  %106 = load i64, i64* %10, align 8
  %107 = load %struct.mtk_cqdma_vdesc**, %struct.mtk_cqdma_vdesc*** %12, align 8
  %108 = getelementptr inbounds %struct.mtk_cqdma_vdesc*, %struct.mtk_cqdma_vdesc** %107, i64 0
  %109 = load %struct.mtk_cqdma_vdesc*, %struct.mtk_cqdma_vdesc** %108, align 8
  %110 = getelementptr inbounds %struct.mtk_cqdma_vdesc, %struct.mtk_cqdma_vdesc* %109, i32 0, i32 3
  store i64 %106, i64* %110, align 8
  br label %121

111:                                              ; preds = %72
  %112 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %13, align 8
  %113 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %14, align 8
  %114 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %113, i32 0, i32 0
  store %struct.dma_async_tx_descriptor* %112, %struct.dma_async_tx_descriptor** %114, align 8
  %115 = load i64, i64* %16, align 8
  %116 = load %struct.mtk_cqdma_vdesc**, %struct.mtk_cqdma_vdesc*** %12, align 8
  %117 = load i64, i64* %15, align 8
  %118 = getelementptr inbounds %struct.mtk_cqdma_vdesc*, %struct.mtk_cqdma_vdesc** %116, i64 %117
  %119 = load %struct.mtk_cqdma_vdesc*, %struct.mtk_cqdma_vdesc** %118, align 8
  %120 = getelementptr inbounds %struct.mtk_cqdma_vdesc, %struct.mtk_cqdma_vdesc* %119, i32 0, i32 3
  store i64 %115, i64* %120, align 8
  br label %121

121:                                              ; preds = %111, %105
  %122 = load %struct.mtk_cqdma_vdesc**, %struct.mtk_cqdma_vdesc*** %12, align 8
  %123 = getelementptr inbounds %struct.mtk_cqdma_vdesc*, %struct.mtk_cqdma_vdesc** %122, i64 0
  %124 = load %struct.mtk_cqdma_vdesc*, %struct.mtk_cqdma_vdesc** %123, align 8
  %125 = load %struct.mtk_cqdma_vdesc**, %struct.mtk_cqdma_vdesc*** %12, align 8
  %126 = load i64, i64* %15, align 8
  %127 = getelementptr inbounds %struct.mtk_cqdma_vdesc*, %struct.mtk_cqdma_vdesc** %125, i64 %126
  %128 = load %struct.mtk_cqdma_vdesc*, %struct.mtk_cqdma_vdesc** %127, align 8
  %129 = getelementptr inbounds %struct.mtk_cqdma_vdesc, %struct.mtk_cqdma_vdesc* %128, i32 0, i32 5
  store %struct.mtk_cqdma_vdesc* %124, %struct.mtk_cqdma_vdesc** %129, align 8
  %130 = load i64, i64* %16, align 8
  %131 = load i64, i64* %9, align 8
  %132 = add i64 %131, %130
  store i64 %132, i64* %9, align 8
  %133 = load i64, i64* %16, align 8
  %134 = load i64, i64* %8, align 8
  %135 = add i64 %134, %133
  store i64 %135, i64* %8, align 8
  %136 = load i64, i64* %16, align 8
  %137 = load i64, i64* %10, align 8
  %138 = sub i64 %137, %136
  store i64 %138, i64* %10, align 8
  %139 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %13, align 8
  store %struct.dma_async_tx_descriptor* %139, %struct.dma_async_tx_descriptor** %14, align 8
  br label %140

140:                                              ; preds = %121
  %141 = load i64, i64* %15, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %15, align 8
  br label %28

143:                                              ; preds = %28
  %144 = load %struct.mtk_cqdma_vdesc**, %struct.mtk_cqdma_vdesc*** %12, align 8
  %145 = getelementptr inbounds %struct.mtk_cqdma_vdesc*, %struct.mtk_cqdma_vdesc** %144, i64 0
  %146 = load %struct.mtk_cqdma_vdesc*, %struct.mtk_cqdma_vdesc** %145, align 8
  %147 = getelementptr inbounds %struct.mtk_cqdma_vdesc, %struct.mtk_cqdma_vdesc* %146, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  store %struct.dma_async_tx_descriptor* %148, %struct.dma_async_tx_descriptor** %6, align 8
  br label %149

149:                                              ; preds = %143, %57, %26
  %150 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  ret %struct.dma_async_tx_descriptor* %150
}

declare dso_local i64 @DIV_ROUND_UP(i64, i64) #1

declare dso_local %struct.mtk_cqdma_vdesc** @kcalloc(i64, i32, i32) #1

declare dso_local %struct.mtk_cqdma_vdesc* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.mtk_cqdma_vdesc*) #1

declare dso_local %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32, %struct.TYPE_2__*, i64) #1

declare dso_local i32 @to_virt_chan(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
