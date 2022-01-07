; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_xilinx_dma.c_xilinx_vdma_channel_set_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_xilinx_dma.c_xilinx_vdma_channel_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.xilinx_vdma_config = type { i32, i32, i32, i32, i32, i64, i32, i32, i64, i32, i64 }
%struct.xilinx_dma_chan = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i64, i64, i32 }

@XILINX_DMA_REG_DMACR = common dso_local global i32 0, align 4
@XILINX_DMA_DMACR_GENLOCK_EN = common dso_local global i32 0, align 4
@XILINX_DMA_DMACR_MASTER_MASK = common dso_local global i32 0, align 4
@XILINX_DMA_DMACR_MASTER_SHIFT = common dso_local global i32 0, align 4
@XILINX_DMA_DMACR_FRAME_COUNT_MAX = common dso_local global i32 0, align 4
@XILINX_DMA_DMACR_FRAME_COUNT_MASK = common dso_local global i32 0, align 4
@XILINX_DMA_DMACR_FRAME_COUNT_SHIFT = common dso_local global i32 0, align 4
@XILINX_DMA_DMACR_DELAY_MAX = common dso_local global i32 0, align 4
@XILINX_DMA_DMACR_DELAY_MASK = common dso_local global i32 0, align 4
@XILINX_DMA_DMACR_DELAY_SHIFT = common dso_local global i32 0, align 4
@XILINX_DMA_DMACR_FSYNCSRC_MASK = common dso_local global i32 0, align 4
@XILINX_DMA_DMACR_FSYNCSRC_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xilinx_vdma_channel_set_config(%struct.dma_chan* %0, %struct.xilinx_vdma_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca %struct.xilinx_vdma_config*, align 8
  %6 = alloca %struct.xilinx_dma_chan*, align 8
  %7 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %4, align 8
  store %struct.xilinx_vdma_config* %1, %struct.xilinx_vdma_config** %5, align 8
  %8 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %9 = call %struct.xilinx_dma_chan* @to_xilinx_chan(%struct.dma_chan* %8)
  store %struct.xilinx_dma_chan* %9, %struct.xilinx_dma_chan** %6, align 8
  %10 = load %struct.xilinx_vdma_config*, %struct.xilinx_vdma_config** %5, align 8
  %11 = getelementptr inbounds %struct.xilinx_vdma_config, %struct.xilinx_vdma_config* %10, i32 0, i32 10
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %6, align 8
  %16 = call i32 @xilinx_dma_chan_reset(%struct.xilinx_dma_chan* %15)
  store i32 %16, i32* %3, align 4
  br label %177

17:                                               ; preds = %2
  %18 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %6, align 8
  %19 = load i32, i32* @XILINX_DMA_REG_DMACR, align 4
  %20 = call i32 @dma_ctrl_read(%struct.xilinx_dma_chan* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.xilinx_vdma_config*, %struct.xilinx_vdma_config** %5, align 8
  %22 = getelementptr inbounds %struct.xilinx_vdma_config, %struct.xilinx_vdma_config* %21, i32 0, i32 9
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %6, align 8
  %25 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 8
  store i32 %23, i32* %26, align 8
  %27 = load %struct.xilinx_vdma_config*, %struct.xilinx_vdma_config** %5, align 8
  %28 = getelementptr inbounds %struct.xilinx_vdma_config, %struct.xilinx_vdma_config* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %6, align 8
  %31 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 7
  store i64 %29, i64* %32, align 8
  %33 = load %struct.xilinx_vdma_config*, %struct.xilinx_vdma_config** %5, align 8
  %34 = getelementptr inbounds %struct.xilinx_vdma_config, %struct.xilinx_vdma_config* %33, i32 0, i32 8
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %6, align 8
  %37 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 6
  store i64 %35, i64* %38, align 8
  %39 = load %struct.xilinx_vdma_config*, %struct.xilinx_vdma_config** %5, align 8
  %40 = getelementptr inbounds %struct.xilinx_vdma_config, %struct.xilinx_vdma_config* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %6, align 8
  %43 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load i32, i32* @XILINX_DMA_DMACR_GENLOCK_EN, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %7, align 4
  %49 = load %struct.xilinx_vdma_config*, %struct.xilinx_vdma_config** %5, align 8
  %50 = getelementptr inbounds %struct.xilinx_vdma_config, %struct.xilinx_vdma_config* %49, i32 0, i32 8
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %17
  %54 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %6, align 8
  %55 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %53
  %59 = load i32, i32* @XILINX_DMA_DMACR_GENLOCK_EN, align 4
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* @XILINX_DMA_DMACR_MASTER_MASK, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %7, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %7, align 4
  %66 = load %struct.xilinx_vdma_config*, %struct.xilinx_vdma_config** %5, align 8
  %67 = getelementptr inbounds %struct.xilinx_vdma_config, %struct.xilinx_vdma_config* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @XILINX_DMA_DMACR_MASTER_SHIFT, align 4
  %70 = shl i32 %68, %69
  %71 = load i32, i32* %7, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %58, %53, %17
  %74 = load %struct.xilinx_vdma_config*, %struct.xilinx_vdma_config** %5, align 8
  %75 = getelementptr inbounds %struct.xilinx_vdma_config, %struct.xilinx_vdma_config* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %6, align 8
  %78 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 5
  store i32 %76, i32* %79, align 4
  %80 = load %struct.xilinx_vdma_config*, %struct.xilinx_vdma_config** %5, align 8
  %81 = getelementptr inbounds %struct.xilinx_vdma_config, %struct.xilinx_vdma_config* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %6, align 8
  %84 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 4
  store i32 %82, i32* %85, align 8
  %86 = load %struct.xilinx_vdma_config*, %struct.xilinx_vdma_config** %5, align 8
  %87 = getelementptr inbounds %struct.xilinx_vdma_config, %struct.xilinx_vdma_config* %86, i32 0, i32 5
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %73
  %91 = load %struct.xilinx_vdma_config*, %struct.xilinx_vdma_config** %5, align 8
  %92 = getelementptr inbounds %struct.xilinx_vdma_config, %struct.xilinx_vdma_config* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %6, align 8
  %95 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  store i32 %93, i32* %96, align 4
  br label %101

97:                                               ; preds = %73
  %98 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %6, align 8
  %99 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  store i32 -1, i32* %100, align 4
  br label %101

101:                                              ; preds = %97, %90
  %102 = load %struct.xilinx_vdma_config*, %struct.xilinx_vdma_config** %5, align 8
  %103 = getelementptr inbounds %struct.xilinx_vdma_config, %struct.xilinx_vdma_config* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %6, align 8
  %106 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 2
  store i32 %104, i32* %107, align 8
  %108 = load %struct.xilinx_vdma_config*, %struct.xilinx_vdma_config** %5, align 8
  %109 = getelementptr inbounds %struct.xilinx_vdma_config, %struct.xilinx_vdma_config* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %6, align 8
  %112 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 3
  store i32 %110, i32* %113, align 4
  %114 = load %struct.xilinx_vdma_config*, %struct.xilinx_vdma_config** %5, align 8
  %115 = getelementptr inbounds %struct.xilinx_vdma_config, %struct.xilinx_vdma_config* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @XILINX_DMA_DMACR_FRAME_COUNT_MAX, align 4
  %118 = icmp sle i32 %116, %117
  br i1 %118, label %119, label %137

119:                                              ; preds = %101
  %120 = load i32, i32* @XILINX_DMA_DMACR_FRAME_COUNT_MASK, align 4
  %121 = xor i32 %120, -1
  %122 = load i32, i32* %7, align 4
  %123 = and i32 %122, %121
  store i32 %123, i32* %7, align 4
  %124 = load %struct.xilinx_vdma_config*, %struct.xilinx_vdma_config** %5, align 8
  %125 = getelementptr inbounds %struct.xilinx_vdma_config, %struct.xilinx_vdma_config* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @XILINX_DMA_DMACR_FRAME_COUNT_SHIFT, align 4
  %128 = shl i32 %126, %127
  %129 = load i32, i32* %7, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %7, align 4
  %131 = load %struct.xilinx_vdma_config*, %struct.xilinx_vdma_config** %5, align 8
  %132 = getelementptr inbounds %struct.xilinx_vdma_config, %struct.xilinx_vdma_config* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %6, align 8
  %135 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 2
  store i32 %133, i32* %136, align 8
  br label %137

137:                                              ; preds = %119, %101
  %138 = load %struct.xilinx_vdma_config*, %struct.xilinx_vdma_config** %5, align 8
  %139 = getelementptr inbounds %struct.xilinx_vdma_config, %struct.xilinx_vdma_config* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @XILINX_DMA_DMACR_DELAY_MAX, align 4
  %142 = icmp sle i32 %140, %141
  br i1 %142, label %143, label %161

143:                                              ; preds = %137
  %144 = load i32, i32* @XILINX_DMA_DMACR_DELAY_MASK, align 4
  %145 = xor i32 %144, -1
  %146 = load i32, i32* %7, align 4
  %147 = and i32 %146, %145
  store i32 %147, i32* %7, align 4
  %148 = load %struct.xilinx_vdma_config*, %struct.xilinx_vdma_config** %5, align 8
  %149 = getelementptr inbounds %struct.xilinx_vdma_config, %struct.xilinx_vdma_config* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @XILINX_DMA_DMACR_DELAY_SHIFT, align 4
  %152 = shl i32 %150, %151
  %153 = load i32, i32* %7, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %7, align 4
  %155 = load %struct.xilinx_vdma_config*, %struct.xilinx_vdma_config** %5, align 8
  %156 = getelementptr inbounds %struct.xilinx_vdma_config, %struct.xilinx_vdma_config* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %6, align 8
  %159 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 3
  store i32 %157, i32* %160, align 4
  br label %161

161:                                              ; preds = %143, %137
  %162 = load i32, i32* @XILINX_DMA_DMACR_FSYNCSRC_MASK, align 4
  %163 = xor i32 %162, -1
  %164 = load i32, i32* %7, align 4
  %165 = and i32 %164, %163
  store i32 %165, i32* %7, align 4
  %166 = load %struct.xilinx_vdma_config*, %struct.xilinx_vdma_config** %5, align 8
  %167 = getelementptr inbounds %struct.xilinx_vdma_config, %struct.xilinx_vdma_config* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @XILINX_DMA_DMACR_FSYNCSRC_SHIFT, align 4
  %170 = shl i32 %168, %169
  %171 = load i32, i32* %7, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %7, align 4
  %173 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %6, align 8
  %174 = load i32, i32* @XILINX_DMA_REG_DMACR, align 4
  %175 = load i32, i32* %7, align 4
  %176 = call i32 @dma_ctrl_write(%struct.xilinx_dma_chan* %173, i32 %174, i32 %175)
  store i32 0, i32* %3, align 4
  br label %177

177:                                              ; preds = %161, %14
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

declare dso_local %struct.xilinx_dma_chan* @to_xilinx_chan(%struct.dma_chan*) #1

declare dso_local i32 @xilinx_dma_chan_reset(%struct.xilinx_dma_chan*) #1

declare dso_local i32 @dma_ctrl_read(%struct.xilinx_dma_chan*, i32) #1

declare dso_local i32 @dma_ctrl_write(%struct.xilinx_dma_chan*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
