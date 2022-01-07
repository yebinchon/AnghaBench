; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_zx_dma.c_zx_dma_prep_dma_cyclic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_zx_dma.c_zx_dma_prep_dma_cyclic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.dma_chan = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.zx_dma_chan = type { i32, i64, i32, i32 }
%struct.zx_dma_desc_sw = type { i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@DMA_MAX_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"maximum period size exceeded\0A\00", align 1
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@ZX_IRQ_ENABLE_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.dma_chan*, i64, i64, i64, i32, i64)* @zx_dma_prep_dma_cyclic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @zx_dma_prep_dma_cyclic(%struct.dma_chan* %0, i64 %1, i64 %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.dma_async_tx_descriptor*, align 8
  %8 = alloca %struct.dma_chan*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.zx_dma_chan*, align 8
  %15 = alloca %struct.zx_dma_desc_sw*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %21 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %22 = call %struct.zx_dma_chan* @to_zx_chan(%struct.dma_chan* %21)
  store %struct.zx_dma_chan* %22, %struct.zx_dma_chan** %14, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* %11, align 8
  %25 = udiv i64 %23, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* @DMA_MAX_SIZE, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %6
  %31 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %32 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %119

37:                                               ; preds = %6
  %38 = load %struct.zx_dma_chan*, %struct.zx_dma_chan** %14, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call i64 @zx_pre_config(%struct.zx_dma_chan* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %119

43:                                               ; preds = %37
  %44 = load i32, i32* %18, align 4
  %45 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %46 = call %struct.zx_dma_desc_sw* @zx_alloc_desc_resource(i32 %44, %struct.dma_chan* %45)
  store %struct.zx_dma_desc_sw* %46, %struct.zx_dma_desc_sw** %15, align 8
  %47 = load %struct.zx_dma_desc_sw*, %struct.zx_dma_desc_sw** %15, align 8
  %48 = icmp ne %struct.zx_dma_desc_sw* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %119

50:                                               ; preds = %43
  %51 = load %struct.zx_dma_chan*, %struct.zx_dma_chan** %14, align 8
  %52 = getelementptr inbounds %struct.zx_dma_chan, %struct.zx_dma_chan* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  br label %53

53:                                               ; preds = %77, %50
  %54 = load i32, i32* %19, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %10, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %98

58:                                               ; preds = %53
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load i64, i64* %9, align 8
  store i64 %63, i64* %16, align 8
  %64 = load %struct.zx_dma_chan*, %struct.zx_dma_chan** %14, align 8
  %65 = getelementptr inbounds %struct.zx_dma_chan, %struct.zx_dma_chan* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %17, align 8
  br label %77

67:                                               ; preds = %58
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load %struct.zx_dma_chan*, %struct.zx_dma_chan** %14, align 8
  %73 = getelementptr inbounds %struct.zx_dma_chan, %struct.zx_dma_chan* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %16, align 8
  %75 = load i64, i64* %9, align 8
  store i64 %75, i64* %17, align 8
  br label %76

76:                                               ; preds = %71, %67
  br label %77

77:                                               ; preds = %76, %62
  %78 = load %struct.zx_dma_desc_sw*, %struct.zx_dma_desc_sw** %15, align 8
  %79 = load i64, i64* %17, align 8
  %80 = load i64, i64* %16, align 8
  %81 = load i64, i64* %11, align 8
  %82 = load i32, i32* %20, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %20, align 4
  %84 = load %struct.zx_dma_chan*, %struct.zx_dma_chan** %14, align 8
  %85 = getelementptr inbounds %struct.zx_dma_chan, %struct.zx_dma_chan* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @ZX_IRQ_ENABLE_ALL, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @zx_dma_fill_desc(%struct.zx_dma_desc_sw* %78, i64 %79, i64 %80, i64 %81, i32 %82, i32 %88)
  %90 = load i64, i64* %11, align 8
  %91 = load i64, i64* %9, align 8
  %92 = add i64 %91, %90
  store i64 %92, i64* %9, align 8
  %93 = load i64, i64* %11, align 8
  %94 = load i32, i32* %19, align 4
  %95 = sext i32 %94 to i64
  %96 = add i64 %95, %93
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %19, align 4
  br label %53

98:                                               ; preds = %53
  %99 = load %struct.zx_dma_desc_sw*, %struct.zx_dma_desc_sw** %15, align 8
  %100 = getelementptr inbounds %struct.zx_dma_desc_sw, %struct.zx_dma_desc_sw* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.zx_dma_desc_sw*, %struct.zx_dma_desc_sw** %15, align 8
  %103 = getelementptr inbounds %struct.zx_dma_desc_sw, %struct.zx_dma_desc_sw* %102, i32 0, i32 3
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = load i32, i32* %20, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  store i32 %101, i32* %109, align 4
  %110 = load i64, i64* %10, align 8
  %111 = load %struct.zx_dma_desc_sw*, %struct.zx_dma_desc_sw** %15, align 8
  %112 = getelementptr inbounds %struct.zx_dma_desc_sw, %struct.zx_dma_desc_sw* %111, i32 0, i32 0
  store i64 %110, i64* %112, align 8
  %113 = load %struct.zx_dma_chan*, %struct.zx_dma_chan** %14, align 8
  %114 = getelementptr inbounds %struct.zx_dma_chan, %struct.zx_dma_chan* %113, i32 0, i32 3
  %115 = load %struct.zx_dma_desc_sw*, %struct.zx_dma_desc_sw** %15, align 8
  %116 = getelementptr inbounds %struct.zx_dma_desc_sw, %struct.zx_dma_desc_sw* %115, i32 0, i32 1
  %117 = load i64, i64* %13, align 8
  %118 = call %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32* %114, i32* %116, i64 %117)
  store %struct.dma_async_tx_descriptor* %118, %struct.dma_async_tx_descriptor** %7, align 8
  br label %119

119:                                              ; preds = %98, %49, %42, %30
  %120 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  ret %struct.dma_async_tx_descriptor* %120
}

declare dso_local %struct.zx_dma_chan* @to_zx_chan(%struct.dma_chan*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @zx_pre_config(%struct.zx_dma_chan*, i32) #1

declare dso_local %struct.zx_dma_desc_sw* @zx_alloc_desc_resource(i32, %struct.dma_chan*) #1

declare dso_local i32 @zx_dma_fill_desc(%struct.zx_dma_desc_sw*, i64, i64, i64, i32, i32) #1

declare dso_local %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
