; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_moxart-dma.c_moxart_slave_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_moxart-dma.c_moxart_slave_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_slave_config = type { i32, i64 }
%struct.moxart_chan = type { i32, i64, %struct.dma_slave_config }

@REG_OFF_CTRL = common dso_local global i64 0, align 8
@APB_DMA_BURST_MODE = common dso_local global i32 0, align 4
@APB_DMA_DEST_MASK = common dso_local global i32 0, align 4
@APB_DMA_SOURCE_MASK = common dso_local global i32 0, align 4
@APB_DMA_DEST_REQ_NO_MASK = common dso_local global i32 0, align 4
@APB_DMA_SOURCE_REQ_NO_MASK = common dso_local global i32 0, align 4
@APB_DMA_DATA_WIDTH_1 = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i64 0, align 8
@APB_DMA_DEST_INC_1_4 = common dso_local global i32 0, align 4
@APB_DMA_SOURCE_INC_1_4 = common dso_local global i32 0, align 4
@APB_DMA_DATA_WIDTH_2 = common dso_local global i32 0, align 4
@APB_DMA_DEST_INC_2_8 = common dso_local global i32 0, align 4
@APB_DMA_SOURCE_INC_2_8 = common dso_local global i32 0, align 4
@APB_DMA_DATA_WIDTH = common dso_local global i32 0, align 4
@APB_DMA_DEST_INC_4_16 = common dso_local global i32 0, align 4
@APB_DMA_SOURCE_INC_4_16 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@APB_DMA_DEST_SELECT = common dso_local global i32 0, align 4
@APB_DMA_SOURCE_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, %struct.dma_slave_config*)* @moxart_slave_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @moxart_slave_config(%struct.dma_chan* %0, %struct.dma_slave_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca %struct.dma_slave_config*, align 8
  %6 = alloca %struct.moxart_chan*, align 8
  %7 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %4, align 8
  store %struct.dma_slave_config* %1, %struct.dma_slave_config** %5, align 8
  %8 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %9 = call %struct.moxart_chan* @to_moxart_dma_chan(%struct.dma_chan* %8)
  store %struct.moxart_chan* %9, %struct.moxart_chan** %6, align 8
  %10 = load %struct.moxart_chan*, %struct.moxart_chan** %6, align 8
  %11 = getelementptr inbounds %struct.moxart_chan, %struct.moxart_chan* %10, i32 0, i32 2
  %12 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %13 = bitcast %struct.dma_slave_config* %11 to i8*
  %14 = bitcast %struct.dma_slave_config* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 16, i1 false)
  %15 = load %struct.moxart_chan*, %struct.moxart_chan** %6, align 8
  %16 = getelementptr inbounds %struct.moxart_chan, %struct.moxart_chan* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @REG_OFF_CTRL, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @APB_DMA_BURST_MODE, align 4
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* @APB_DMA_DEST_MASK, align 4
  %25 = load i32, i32* @APB_DMA_SOURCE_MASK, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* @APB_DMA_DEST_REQ_NO_MASK, align 4
  %31 = load i32, i32* @APB_DMA_SOURCE_REQ_NO_MASK, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %7, align 4
  %36 = load %struct.moxart_chan*, %struct.moxart_chan** %6, align 8
  %37 = getelementptr inbounds %struct.moxart_chan, %struct.moxart_chan* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %98 [
    i32 130, label %40
    i32 129, label %59
    i32 128, label %78
  ]

40:                                               ; preds = %2
  %41 = load i32, i32* @APB_DMA_DATA_WIDTH_1, align 4
  %42 = load i32, i32* %7, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load %struct.moxart_chan*, %struct.moxart_chan** %6, align 8
  %45 = getelementptr inbounds %struct.moxart_chan, %struct.moxart_chan* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @DMA_MEM_TO_DEV, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %40
  %51 = load i32, i32* @APB_DMA_DEST_INC_1_4, align 4
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %7, align 4
  br label %58

54:                                               ; preds = %40
  %55 = load i32, i32* @APB_DMA_SOURCE_INC_1_4, align 4
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %54, %50
  br label %101

59:                                               ; preds = %2
  %60 = load i32, i32* @APB_DMA_DATA_WIDTH_2, align 4
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %7, align 4
  %63 = load %struct.moxart_chan*, %struct.moxart_chan** %6, align 8
  %64 = getelementptr inbounds %struct.moxart_chan, %struct.moxart_chan* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @DMA_MEM_TO_DEV, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %59
  %70 = load i32, i32* @APB_DMA_DEST_INC_2_8, align 4
  %71 = load i32, i32* %7, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %7, align 4
  br label %77

73:                                               ; preds = %59
  %74 = load i32, i32* @APB_DMA_SOURCE_INC_2_8, align 4
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %73, %69
  br label %101

78:                                               ; preds = %2
  %79 = load i32, i32* @APB_DMA_DATA_WIDTH, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %7, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %7, align 4
  %83 = load %struct.moxart_chan*, %struct.moxart_chan** %6, align 8
  %84 = getelementptr inbounds %struct.moxart_chan, %struct.moxart_chan* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @DMA_MEM_TO_DEV, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %78
  %90 = load i32, i32* @APB_DMA_DEST_INC_4_16, align 4
  %91 = load i32, i32* %7, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %7, align 4
  br label %97

93:                                               ; preds = %78
  %94 = load i32, i32* @APB_DMA_SOURCE_INC_4_16, align 4
  %95 = load i32, i32* %7, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %93, %89
  br label %101

98:                                               ; preds = %2
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %148

101:                                              ; preds = %97, %77, %58
  %102 = load %struct.moxart_chan*, %struct.moxart_chan** %6, align 8
  %103 = getelementptr inbounds %struct.moxart_chan, %struct.moxart_chan* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @DMA_MEM_TO_DEV, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %124

108:                                              ; preds = %101
  %109 = load i32, i32* @APB_DMA_DEST_SELECT, align 4
  %110 = xor i32 %109, -1
  %111 = load i32, i32* %7, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* @APB_DMA_SOURCE_SELECT, align 4
  %114 = load i32, i32* %7, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %7, align 4
  %116 = load %struct.moxart_chan*, %struct.moxart_chan** %6, align 8
  %117 = getelementptr inbounds %struct.moxart_chan, %struct.moxart_chan* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = shl i32 %118, 16
  %120 = load i32, i32* @APB_DMA_DEST_REQ_NO_MASK, align 4
  %121 = and i32 %119, %120
  %122 = load i32, i32* %7, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %7, align 4
  br label %140

124:                                              ; preds = %101
  %125 = load i32, i32* @APB_DMA_DEST_SELECT, align 4
  %126 = load i32, i32* %7, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* @APB_DMA_SOURCE_SELECT, align 4
  %129 = xor i32 %128, -1
  %130 = load i32, i32* %7, align 4
  %131 = and i32 %130, %129
  store i32 %131, i32* %7, align 4
  %132 = load %struct.moxart_chan*, %struct.moxart_chan** %6, align 8
  %133 = getelementptr inbounds %struct.moxart_chan, %struct.moxart_chan* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = shl i32 %134, 24
  %136 = load i32, i32* @APB_DMA_SOURCE_REQ_NO_MASK, align 4
  %137 = and i32 %135, %136
  %138 = load i32, i32* %7, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %7, align 4
  br label %140

140:                                              ; preds = %124, %108
  %141 = load i32, i32* %7, align 4
  %142 = load %struct.moxart_chan*, %struct.moxart_chan** %6, align 8
  %143 = getelementptr inbounds %struct.moxart_chan, %struct.moxart_chan* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @REG_OFF_CTRL, align 8
  %146 = add nsw i64 %144, %145
  %147 = call i32 @writel(i32 %141, i64 %146)
  store i32 0, i32* %3, align 4
  br label %148

148:                                              ; preds = %140, %98
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local %struct.moxart_chan* @to_moxart_dma_chan(%struct.dma_chan*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
