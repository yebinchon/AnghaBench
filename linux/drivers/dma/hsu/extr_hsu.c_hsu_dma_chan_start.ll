; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/hsu/extr_hsu.c_hsu_dma_chan_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/hsu/extr_hsu.c_hsu_dma_chan_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsu_dma_chan = type { i64, %struct.hsu_dma_desc*, %struct.dma_slave_config }
%struct.hsu_dma_desc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32 }

@HSU_CH_DCR_CHSOE = common dso_local global i32 0, align 4
@HSU_CH_DCR_CHEI = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i64 0, align 8
@DMA_DEV_TO_MEM = common dso_local global i64 0, align 8
@HSU_CH_DCR = common dso_local global i32 0, align 4
@HSU_CH_BSR = common dso_local global i32 0, align 4
@HSU_CH_MTSR = common dso_local global i32 0, align 4
@HSU_DMA_CHAN_NR_DESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hsu_dma_chan*)* @hsu_dma_chan_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hsu_dma_chan_start(%struct.hsu_dma_chan* %0) #0 {
  %2 = alloca %struct.hsu_dma_chan*, align 8
  %3 = alloca %struct.dma_slave_config*, align 8
  %4 = alloca %struct.hsu_dma_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hsu_dma_chan* %0, %struct.hsu_dma_chan** %2, align 8
  %10 = load %struct.hsu_dma_chan*, %struct.hsu_dma_chan** %2, align 8
  %11 = getelementptr inbounds %struct.hsu_dma_chan, %struct.hsu_dma_chan* %10, i32 0, i32 2
  store %struct.dma_slave_config* %11, %struct.dma_slave_config** %3, align 8
  %12 = load %struct.hsu_dma_chan*, %struct.hsu_dma_chan** %2, align 8
  %13 = getelementptr inbounds %struct.hsu_dma_chan, %struct.hsu_dma_chan* %12, i32 0, i32 1
  %14 = load %struct.hsu_dma_desc*, %struct.hsu_dma_desc** %13, align 8
  store %struct.hsu_dma_desc* %14, %struct.hsu_dma_desc** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %15 = load i32, i32* @HSU_CH_DCR_CHSOE, align 4
  %16 = load i32, i32* @HSU_CH_DCR_CHEI, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.hsu_dma_chan*, %struct.hsu_dma_chan** %2, align 8
  %19 = getelementptr inbounds %struct.hsu_dma_chan, %struct.hsu_dma_chan* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DMA_MEM_TO_DEV, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load %struct.dma_slave_config*, %struct.dma_slave_config** %3, align 8
  %25 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %5, align 4
  %27 = load %struct.dma_slave_config*, %struct.dma_slave_config** %3, align 8
  %28 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %6, align 4
  br label %44

30:                                               ; preds = %1
  %31 = load %struct.hsu_dma_chan*, %struct.hsu_dma_chan** %2, align 8
  %32 = getelementptr inbounds %struct.hsu_dma_chan, %struct.hsu_dma_chan* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DMA_DEV_TO_MEM, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load %struct.dma_slave_config*, %struct.dma_slave_config** %3, align 8
  %38 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %5, align 4
  %40 = load %struct.dma_slave_config*, %struct.dma_slave_config** %3, align 8
  %41 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %36, %30
  br label %44

44:                                               ; preds = %43, %23
  %45 = load %struct.hsu_dma_chan*, %struct.hsu_dma_chan** %2, align 8
  %46 = call i32 @hsu_chan_disable(%struct.hsu_dma_chan* %45)
  %47 = load %struct.hsu_dma_chan*, %struct.hsu_dma_chan** %2, align 8
  %48 = load i32, i32* @HSU_CH_DCR, align 4
  %49 = call i32 @hsu_chan_writel(%struct.hsu_dma_chan* %47, i32 %48, i32 0)
  %50 = load %struct.hsu_dma_chan*, %struct.hsu_dma_chan** %2, align 8
  %51 = load i32, i32* @HSU_CH_BSR, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @hsu_chan_writel(%struct.hsu_dma_chan* %50, i32 %51, i32 %52)
  %54 = load %struct.hsu_dma_chan*, %struct.hsu_dma_chan** %2, align 8
  %55 = load i32, i32* @HSU_CH_MTSR, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @hsu_chan_writel(%struct.hsu_dma_chan* %54, i32 %55, i32 %56)
  %58 = load %struct.hsu_dma_desc*, %struct.hsu_dma_desc** %4, align 8
  %59 = getelementptr inbounds %struct.hsu_dma_desc, %struct.hsu_dma_desc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.hsu_dma_desc*, %struct.hsu_dma_desc** %4, align 8
  %62 = getelementptr inbounds %struct.hsu_dma_desc, %struct.hsu_dma_desc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sub i32 %60, %63
  store i32 %64, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %112, %44
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @HSU_DMA_CHAN_NR_DESC, align 4
  %72 = icmp ult i32 %70, %71
  br label %73

73:                                               ; preds = %69, %65
  %74 = phi i1 [ false, %65 ], [ %72, %69 ]
  br i1 %74, label %75, label %115

75:                                               ; preds = %73
  %76 = load %struct.hsu_dma_chan*, %struct.hsu_dma_chan** %2, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @HSU_CH_DxSAR(i32 %77)
  %79 = load %struct.hsu_dma_desc*, %struct.hsu_dma_desc** %4, align 8
  %80 = getelementptr inbounds %struct.hsu_dma_desc, %struct.hsu_dma_desc* %79, i32 0, i32 2
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @hsu_chan_writel(%struct.hsu_dma_chan* %76, i32 %78, i32 %86)
  %88 = load %struct.hsu_dma_chan*, %struct.hsu_dma_chan** %2, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @HSU_CH_DxTSR(i32 %89)
  %91 = load %struct.hsu_dma_desc*, %struct.hsu_dma_desc** %4, align 8
  %92 = getelementptr inbounds %struct.hsu_dma_desc, %struct.hsu_dma_desc* %91, i32 0, i32 2
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @hsu_chan_writel(%struct.hsu_dma_chan* %88, i32 %90, i32 %98)
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @HSU_CH_DCR_DESCA(i32 %100)
  %102 = load i32, i32* %7, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @HSU_CH_DCR_CHTOI(i32 %104)
  %106 = load i32, i32* %7, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %7, align 4
  %108 = load %struct.hsu_dma_desc*, %struct.hsu_dma_desc** %4, align 8
  %109 = getelementptr inbounds %struct.hsu_dma_desc, %struct.hsu_dma_desc* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %75
  %113 = load i32, i32* %8, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %8, align 4
  br label %65

115:                                              ; preds = %73
  %116 = load i32, i32* %9, align 4
  %117 = sub i32 %116, 1
  %118 = call i32 @HSU_CH_DCR_CHSOD(i32 %117)
  %119 = load i32, i32* %7, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %9, align 4
  %122 = sub i32 %121, 1
  %123 = call i32 @HSU_CH_DCR_CHDI(i32 %122)
  %124 = load i32, i32* %7, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %7, align 4
  %126 = load %struct.hsu_dma_chan*, %struct.hsu_dma_chan** %2, align 8
  %127 = load i32, i32* @HSU_CH_DCR, align 4
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @hsu_chan_writel(%struct.hsu_dma_chan* %126, i32 %127, i32 %128)
  %130 = load %struct.hsu_dma_chan*, %struct.hsu_dma_chan** %2, align 8
  %131 = call i32 @hsu_chan_enable(%struct.hsu_dma_chan* %130)
  ret void
}

declare dso_local i32 @hsu_chan_disable(%struct.hsu_dma_chan*) #1

declare dso_local i32 @hsu_chan_writel(%struct.hsu_dma_chan*, i32, i32) #1

declare dso_local i32 @HSU_CH_DxSAR(i32) #1

declare dso_local i32 @HSU_CH_DxTSR(i32) #1

declare dso_local i32 @HSU_CH_DCR_DESCA(i32) #1

declare dso_local i32 @HSU_CH_DCR_CHTOI(i32) #1

declare dso_local i32 @HSU_CH_DCR_CHSOD(i32) #1

declare dso_local i32 @HSU_CH_DCR_CHDI(i32) #1

declare dso_local i32 @hsu_chan_enable(%struct.hsu_dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
