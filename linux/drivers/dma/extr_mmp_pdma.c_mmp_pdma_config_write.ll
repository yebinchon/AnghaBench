; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_pdma.c_mmp_pdma_config_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_pdma.c_mmp_pdma_config_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.mmp_pdma_chan = type { i32, i32, i32, i64 }

@DMA_SLAVE_BUSWIDTH_UNDEFINED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DCMD_INCTRGADDR = common dso_local global i32 0, align 4
@DCMD_FLOWSRC = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DCMD_INCSRCADDR = common dso_local global i32 0, align 4
@DCMD_FLOWTRG = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_1_BYTE = common dso_local global i32 0, align 4
@DCMD_WIDTH1 = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_2_BYTES = common dso_local global i32 0, align 4
@DCMD_WIDTH2 = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i32 0, align 4
@DCMD_WIDTH4 = common dso_local global i32 0, align 4
@DCMD_BURST8 = common dso_local global i32 0, align 4
@DCMD_BURST16 = common dso_local global i32 0, align 4
@DCMD_BURST32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, %struct.dma_slave_config*, i32)* @mmp_pdma_config_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmp_pdma_config_write(%struct.dma_chan* %0, %struct.dma_slave_config* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dma_chan*, align 8
  %6 = alloca %struct.dma_slave_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mmp_pdma_chan*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %5, align 8
  store %struct.dma_slave_config* %1, %struct.dma_slave_config** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %13 = call %struct.mmp_pdma_chan* @to_mmp_pdma_chan(%struct.dma_chan* %12)
  store %struct.mmp_pdma_chan* %13, %struct.mmp_pdma_chan** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* @DMA_SLAVE_BUSWIDTH_UNDEFINED, align 4
  store i32 %14, i32* %11, align 4
  %15 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %16 = icmp ne %struct.dma_chan* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %138

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  %25 = load i32, i32* @DCMD_INCTRGADDR, align 4
  %26 = load i32, i32* @DCMD_FLOWSRC, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %8, align 8
  %29 = getelementptr inbounds %struct.mmp_pdma_chan, %struct.mmp_pdma_chan* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.dma_slave_config*, %struct.dma_slave_config** %6, align 8
  %31 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %9, align 4
  %33 = load %struct.dma_slave_config*, %struct.dma_slave_config** %6, align 8
  %34 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %11, align 4
  %36 = load %struct.dma_slave_config*, %struct.dma_slave_config** %6, align 8
  %37 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %10, align 4
  br label %59

39:                                               ; preds = %20
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %39
  %44 = load i32, i32* @DCMD_INCSRCADDR, align 4
  %45 = load i32, i32* @DCMD_FLOWTRG, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %8, align 8
  %48 = getelementptr inbounds %struct.mmp_pdma_chan, %struct.mmp_pdma_chan* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.dma_slave_config*, %struct.dma_slave_config** %6, align 8
  %50 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %9, align 4
  %52 = load %struct.dma_slave_config*, %struct.dma_slave_config** %6, align 8
  %53 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %11, align 4
  %55 = load %struct.dma_slave_config*, %struct.dma_slave_config** %6, align 8
  %56 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %43, %39
  br label %59

59:                                               ; preds = %58, %24
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @DMA_SLAVE_BUSWIDTH_1_BYTE, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load i32, i32* @DCMD_WIDTH1, align 4
  %65 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %8, align 8
  %66 = getelementptr inbounds %struct.mmp_pdma_chan, %struct.mmp_pdma_chan* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %91

69:                                               ; preds = %59
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @DMA_SLAVE_BUSWIDTH_2_BYTES, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load i32, i32* @DCMD_WIDTH2, align 4
  %75 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %8, align 8
  %76 = getelementptr inbounds %struct.mmp_pdma_chan, %struct.mmp_pdma_chan* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %90

79:                                               ; preds = %69
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @DMA_SLAVE_BUSWIDTH_4_BYTES, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load i32, i32* @DCMD_WIDTH4, align 4
  %85 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %8, align 8
  %86 = getelementptr inbounds %struct.mmp_pdma_chan, %struct.mmp_pdma_chan* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %83, %79
  br label %90

90:                                               ; preds = %89, %73
  br label %91

91:                                               ; preds = %90, %63
  %92 = load i32, i32* %9, align 4
  %93 = icmp eq i32 %92, 8
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load i32, i32* @DCMD_BURST8, align 4
  %96 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %8, align 8
  %97 = getelementptr inbounds %struct.mmp_pdma_chan, %struct.mmp_pdma_chan* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 8
  br label %120

100:                                              ; preds = %91
  %101 = load i32, i32* %9, align 4
  %102 = icmp eq i32 %101, 16
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load i32, i32* @DCMD_BURST16, align 4
  %105 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %8, align 8
  %106 = getelementptr inbounds %struct.mmp_pdma_chan, %struct.mmp_pdma_chan* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  br label %119

109:                                              ; preds = %100
  %110 = load i32, i32* %9, align 4
  %111 = icmp eq i32 %110, 32
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load i32, i32* @DCMD_BURST32, align 4
  %114 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %8, align 8
  %115 = getelementptr inbounds %struct.mmp_pdma_chan, %struct.mmp_pdma_chan* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 8
  br label %118

118:                                              ; preds = %112, %109
  br label %119

119:                                              ; preds = %118, %103
  br label %120

120:                                              ; preds = %119, %94
  %121 = load i32, i32* %7, align 4
  %122 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %8, align 8
  %123 = getelementptr inbounds %struct.mmp_pdma_chan, %struct.mmp_pdma_chan* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* %10, align 4
  %125 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %8, align 8
  %126 = getelementptr inbounds %struct.mmp_pdma_chan, %struct.mmp_pdma_chan* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  %127 = load %struct.dma_slave_config*, %struct.dma_slave_config** %6, align 8
  %128 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %127, i32 0, i32 6
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %120
  %132 = load %struct.dma_slave_config*, %struct.dma_slave_config** %6, align 8
  %133 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %132, i32 0, i32 6
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %8, align 8
  %136 = getelementptr inbounds %struct.mmp_pdma_chan, %struct.mmp_pdma_chan* %135, i32 0, i32 3
  store i64 %134, i64* %136, align 8
  br label %137

137:                                              ; preds = %131, %120
  store i32 0, i32* %4, align 4
  br label %138

138:                                              ; preds = %137, %17
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local %struct.mmp_pdma_chan* @to_mmp_pdma_chan(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
