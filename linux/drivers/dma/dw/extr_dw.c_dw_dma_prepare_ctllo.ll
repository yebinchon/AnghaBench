; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw/extr_dw.c_dw_dma_prepare_ctllo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw/extr_dw.c_dw_dma_prepare_ctllo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_dma_chan = type { i64, %struct.TYPE_2__, %struct.dma_slave_config }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dma_slave_config = type { i32, i32 }

@DW_DMA_MSIZE_16 = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i64 0, align 8
@DMA_DEV_TO_MEM = common dso_local global i64 0, align 8
@DWC_CTLL_LLP_D_EN = common dso_local global i32 0, align 4
@DWC_CTLL_LLP_S_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_dma_chan*)* @dw_dma_prepare_ctllo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_dma_prepare_ctllo(%struct.dw_dma_chan* %0) #0 {
  %2 = alloca %struct.dw_dma_chan*, align 8
  %3 = alloca %struct.dma_slave_config*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dw_dma_chan* %0, %struct.dw_dma_chan** %2, align 8
  %11 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %2, align 8
  %12 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %11, i32 0, i32 2
  store %struct.dma_slave_config* %12, %struct.dma_slave_config** %3, align 8
  %13 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %2, align 8
  %14 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @is_slave_direction(i64 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.dma_slave_config*, %struct.dma_slave_config** %3, align 8
  %21 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  br label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @DW_DMA_MSIZE_16, align 4
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi i32 [ %22, %19 ], [ %24, %23 ]
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct.dma_slave_config*, %struct.dma_slave_config** %3, align 8
  %31 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  br label %35

33:                                               ; preds = %25
  %34 = load i32, i32* @DW_DMA_MSIZE_16, align 4
  br label %35

35:                                               ; preds = %33, %29
  %36 = phi i32 [ %32, %29 ], [ %34, %33 ]
  store i32 %36, i32* %6, align 4
  %37 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %2, align 8
  %38 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %7, align 4
  %41 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %2, align 8
  %42 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %8, align 4
  %45 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %2, align 8
  %46 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @DMA_MEM_TO_DEV, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %35
  %51 = load i32, i32* %7, align 4
  br label %54

52:                                               ; preds = %35
  %53 = load i32, i32* %8, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  store i32 %55, i32* %9, align 4
  %56 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %2, align 8
  %57 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @DMA_DEV_TO_MEM, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* %7, align 4
  br label %65

63:                                               ; preds = %54
  %64 = load i32, i32* %8, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* @DWC_CTLL_LLP_D_EN, align 4
  %68 = load i32, i32* @DWC_CTLL_LLP_S_EN, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @DWC_CTLL_DST_MSIZE(i32 %70)
  %72 = or i32 %69, %71
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @DWC_CTLL_SRC_MSIZE(i32 %73)
  %75 = or i32 %72, %74
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @DWC_CTLL_DMS(i32 %76)
  %78 = or i32 %75, %77
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @DWC_CTLL_SMS(i32 %79)
  %81 = or i32 %78, %80
  ret i32 %81
}

declare dso_local i32 @is_slave_direction(i64) #1

declare dso_local i32 @DWC_CTLL_DST_MSIZE(i32) #1

declare dso_local i32 @DWC_CTLL_SRC_MSIZE(i32) #1

declare dso_local i32 @DWC_CTLL_DMS(i32) #1

declare dso_local i32 @DWC_CTLL_SMS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
