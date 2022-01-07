; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsldma.c_fsl_dma_prep_memcpy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsldma.c_fsl_dma_prep_memcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i64, i32, i32 }
%struct.dma_chan = type { i32 }
%struct.fsldma_chan = type { i32 }
%struct.fsl_desc_sw = type { i32, %struct.dma_async_tx_descriptor, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@msg_ld_oom = common dso_local global i32 0, align 4
@FSL_DMA_BCR_MAX_CNT = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.dma_chan*, i64, i64, i64, i64)* @fsl_dma_prep_memcpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @fsl_dma_prep_memcpy(%struct.dma_chan* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.dma_async_tx_descriptor*, align 8
  %7 = alloca %struct.dma_chan*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.fsldma_chan*, align 8
  %13 = alloca %struct.fsl_desc_sw*, align 8
  %14 = alloca %struct.fsl_desc_sw*, align 8
  %15 = alloca %struct.fsl_desc_sw*, align 8
  %16 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.fsl_desc_sw* null, %struct.fsl_desc_sw** %13, align 8
  store %struct.fsl_desc_sw* null, %struct.fsl_desc_sw** %14, align 8
  %17 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %18 = icmp ne %struct.dma_chan* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %6, align 8
  br label %117

20:                                               ; preds = %5
  %21 = load i64, i64* %10, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %6, align 8
  br label %117

24:                                               ; preds = %20
  %25 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %26 = call %struct.fsldma_chan* @to_fsl_chan(%struct.dma_chan* %25)
  store %struct.fsldma_chan* %26, %struct.fsldma_chan** %12, align 8
  br label %27

27:                                               ; preds = %90, %24
  %28 = load %struct.fsldma_chan*, %struct.fsldma_chan** %12, align 8
  %29 = call %struct.fsl_desc_sw* @fsl_dma_alloc_descriptor(%struct.fsldma_chan* %28)
  store %struct.fsl_desc_sw* %29, %struct.fsl_desc_sw** %15, align 8
  %30 = load %struct.fsl_desc_sw*, %struct.fsl_desc_sw** %15, align 8
  %31 = icmp ne %struct.fsl_desc_sw* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = load %struct.fsldma_chan*, %struct.fsldma_chan** %12, align 8
  %34 = load i32, i32* @msg_ld_oom, align 4
  %35 = call i32 @chan_err(%struct.fsldma_chan* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %108

36:                                               ; preds = %27
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* @FSL_DMA_BCR_MAX_CNT, align 8
  %39 = call i64 @min(i64 %37, i64 %38)
  store i64 %39, i64* %16, align 8
  %40 = load %struct.fsldma_chan*, %struct.fsldma_chan** %12, align 8
  %41 = load %struct.fsl_desc_sw*, %struct.fsl_desc_sw** %15, align 8
  %42 = getelementptr inbounds %struct.fsl_desc_sw, %struct.fsl_desc_sw* %41, i32 0, i32 3
  %43 = load i64, i64* %16, align 8
  %44 = call i32 @set_desc_cnt(%struct.fsldma_chan* %40, i32* %42, i64 %43)
  %45 = load %struct.fsldma_chan*, %struct.fsldma_chan** %12, align 8
  %46 = load %struct.fsl_desc_sw*, %struct.fsl_desc_sw** %15, align 8
  %47 = getelementptr inbounds %struct.fsl_desc_sw, %struct.fsl_desc_sw* %46, i32 0, i32 3
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @set_desc_src(%struct.fsldma_chan* %45, i32* %47, i64 %48)
  %50 = load %struct.fsldma_chan*, %struct.fsldma_chan** %12, align 8
  %51 = load %struct.fsl_desc_sw*, %struct.fsl_desc_sw** %15, align 8
  %52 = getelementptr inbounds %struct.fsl_desc_sw, %struct.fsl_desc_sw* %51, i32 0, i32 3
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @set_desc_dst(%struct.fsldma_chan* %50, i32* %52, i64 %53)
  %55 = load %struct.fsl_desc_sw*, %struct.fsl_desc_sw** %13, align 8
  %56 = icmp ne %struct.fsl_desc_sw* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %36
  %58 = load %struct.fsl_desc_sw*, %struct.fsl_desc_sw** %15, align 8
  store %struct.fsl_desc_sw* %58, %struct.fsl_desc_sw** %13, align 8
  br label %68

59:                                               ; preds = %36
  %60 = load %struct.fsldma_chan*, %struct.fsldma_chan** %12, align 8
  %61 = load %struct.fsl_desc_sw*, %struct.fsl_desc_sw** %14, align 8
  %62 = getelementptr inbounds %struct.fsl_desc_sw, %struct.fsl_desc_sw* %61, i32 0, i32 3
  %63 = load %struct.fsl_desc_sw*, %struct.fsl_desc_sw** %15, align 8
  %64 = getelementptr inbounds %struct.fsl_desc_sw, %struct.fsl_desc_sw* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @set_desc_next(%struct.fsldma_chan* %60, i32* %62, i32 %66)
  br label %68

68:                                               ; preds = %59, %57
  %69 = load %struct.fsl_desc_sw*, %struct.fsl_desc_sw** %15, align 8
  %70 = getelementptr inbounds %struct.fsl_desc_sw, %struct.fsl_desc_sw* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %70, i32 0, i32 1
  store i32 0, i32* %71, align 8
  %72 = load %struct.fsl_desc_sw*, %struct.fsl_desc_sw** %15, align 8
  %73 = getelementptr inbounds %struct.fsl_desc_sw, %struct.fsl_desc_sw* %72, i32 0, i32 1
  %74 = call i32 @async_tx_ack(%struct.dma_async_tx_descriptor* %73)
  %75 = load %struct.fsl_desc_sw*, %struct.fsl_desc_sw** %15, align 8
  store %struct.fsl_desc_sw* %75, %struct.fsl_desc_sw** %14, align 8
  %76 = load i64, i64* %16, align 8
  %77 = load i64, i64* %10, align 8
  %78 = sub i64 %77, %76
  store i64 %78, i64* %10, align 8
  %79 = load i64, i64* %16, align 8
  %80 = load i64, i64* %9, align 8
  %81 = add i64 %80, %79
  store i64 %81, i64* %9, align 8
  %82 = load i64, i64* %16, align 8
  %83 = load i64, i64* %8, align 8
  %84 = add i64 %83, %82
  store i64 %84, i64* %8, align 8
  %85 = load %struct.fsl_desc_sw*, %struct.fsl_desc_sw** %15, align 8
  %86 = getelementptr inbounds %struct.fsl_desc_sw, %struct.fsl_desc_sw* %85, i32 0, i32 2
  %87 = load %struct.fsl_desc_sw*, %struct.fsl_desc_sw** %13, align 8
  %88 = getelementptr inbounds %struct.fsl_desc_sw, %struct.fsl_desc_sw* %87, i32 0, i32 0
  %89 = call i32 @list_add_tail(i32* %86, i32* %88)
  br label %90

90:                                               ; preds = %68
  %91 = load i64, i64* %10, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %27, label %93

93:                                               ; preds = %90
  %94 = load i64, i64* %11, align 8
  %95 = load %struct.fsl_desc_sw*, %struct.fsl_desc_sw** %15, align 8
  %96 = getelementptr inbounds %struct.fsl_desc_sw, %struct.fsl_desc_sw* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %96, i32 0, i32 0
  store i64 %94, i64* %97, align 8
  %98 = load i32, i32* @EBUSY, align 4
  %99 = sub nsw i32 0, %98
  %100 = load %struct.fsl_desc_sw*, %struct.fsl_desc_sw** %15, align 8
  %101 = getelementptr inbounds %struct.fsl_desc_sw, %struct.fsl_desc_sw* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %101, i32 0, i32 1
  store i32 %99, i32* %102, align 8
  %103 = load %struct.fsldma_chan*, %struct.fsldma_chan** %12, align 8
  %104 = load %struct.fsl_desc_sw*, %struct.fsl_desc_sw** %15, align 8
  %105 = call i32 @set_ld_eol(%struct.fsldma_chan* %103, %struct.fsl_desc_sw* %104)
  %106 = load %struct.fsl_desc_sw*, %struct.fsl_desc_sw** %13, align 8
  %107 = getelementptr inbounds %struct.fsl_desc_sw, %struct.fsl_desc_sw* %106, i32 0, i32 1
  store %struct.dma_async_tx_descriptor* %107, %struct.dma_async_tx_descriptor** %6, align 8
  br label %117

108:                                              ; preds = %32
  %109 = load %struct.fsl_desc_sw*, %struct.fsl_desc_sw** %13, align 8
  %110 = icmp ne %struct.fsl_desc_sw* %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %108
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %6, align 8
  br label %117

112:                                              ; preds = %108
  %113 = load %struct.fsldma_chan*, %struct.fsldma_chan** %12, align 8
  %114 = load %struct.fsl_desc_sw*, %struct.fsl_desc_sw** %13, align 8
  %115 = getelementptr inbounds %struct.fsl_desc_sw, %struct.fsl_desc_sw* %114, i32 0, i32 0
  %116 = call i32 @fsldma_free_desc_list_reverse(%struct.fsldma_chan* %113, i32* %115)
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %6, align 8
  br label %117

117:                                              ; preds = %112, %111, %93, %23, %19
  %118 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  ret %struct.dma_async_tx_descriptor* %118
}

declare dso_local %struct.fsldma_chan* @to_fsl_chan(%struct.dma_chan*) #1

declare dso_local %struct.fsl_desc_sw* @fsl_dma_alloc_descriptor(%struct.fsldma_chan*) #1

declare dso_local i32 @chan_err(%struct.fsldma_chan*, i8*, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @set_desc_cnt(%struct.fsldma_chan*, i32*, i64) #1

declare dso_local i32 @set_desc_src(%struct.fsldma_chan*, i32*, i64) #1

declare dso_local i32 @set_desc_dst(%struct.fsldma_chan*, i32*, i64) #1

declare dso_local i32 @set_desc_next(%struct.fsldma_chan*, i32*, i32) #1

declare dso_local i32 @async_tx_ack(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @set_ld_eol(%struct.fsldma_chan*, %struct.fsl_desc_sw*) #1

declare dso_local i32 @fsldma_free_desc_list_reverse(%struct.fsldma_chan*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
