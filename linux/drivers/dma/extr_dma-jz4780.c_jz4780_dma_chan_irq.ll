; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_dma-jz4780.c_jz4780_dma_chan_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_dma-jz4780.c_jz4780_dma_chan_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_dma_dev = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.jz4780_dma_chan = type { i64, %struct.TYPE_8__, i32, %struct.jz4780_dma_desc* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.jz4780_dma_desc = type { i32, i64, i64, i32 }

@JZ_DMA_REG_DCS = common dso_local global i32 0, align 4
@JZ_DMA_DCS_AR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"address error (DCS=0x%x)\0A\00", align 1
@JZ_DMA_DCS_HLT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"channel halt (DCS=0x%x)\0A\00", align 1
@DMA_CYCLIC = common dso_local global i64 0, align 8
@JZ_DMA_DCS_TT = common dso_local global i32 0, align 4
@JZ_SOC_DATA_BREAK_LINKS = common dso_local global i32 0, align 4
@JZ_DMA_DCS_CTE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"channel IRQ with no active transfer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jz4780_dma_dev*, %struct.jz4780_dma_chan*)* @jz4780_dma_chan_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_dma_chan_irq(%struct.jz4780_dma_dev* %0, %struct.jz4780_dma_chan* %1) #0 {
  %3 = alloca %struct.jz4780_dma_dev*, align 8
  %4 = alloca %struct.jz4780_dma_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.jz4780_dma_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.jz4780_dma_dev* %0, %struct.jz4780_dma_dev** %3, align 8
  store %struct.jz4780_dma_chan* %1, %struct.jz4780_dma_chan** %4, align 8
  %9 = load %struct.jz4780_dma_dev*, %struct.jz4780_dma_dev** %3, align 8
  %10 = getelementptr inbounds %struct.jz4780_dma_dev, %struct.jz4780_dma_dev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %4, align 8
  %15 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %14, i32 0, i32 3
  %16 = load %struct.jz4780_dma_desc*, %struct.jz4780_dma_desc** %15, align 8
  store %struct.jz4780_dma_desc* %16, %struct.jz4780_dma_desc** %6, align 8
  store i32 1, i32* %8, align 4
  %17 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %4, align 8
  %18 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.jz4780_dma_dev*, %struct.jz4780_dma_dev** %3, align 8
  %22 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %4, align 8
  %23 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @JZ_DMA_REG_DCS, align 4
  %26 = call i32 @jz4780_dma_chn_readl(%struct.jz4780_dma_dev* %21, i32 %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.jz4780_dma_dev*, %struct.jz4780_dma_dev** %3, align 8
  %28 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %4, align 8
  %29 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @JZ_DMA_REG_DCS, align 4
  %32 = call i32 @jz4780_dma_chn_writel(%struct.jz4780_dma_dev* %27, i32 %30, i32 %31, i32 0)
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @JZ_DMA_DCS_AR, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %2
  %38 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %4, align 8
  %39 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @dev_warn(i32* %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %37, %2
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @JZ_DMA_DCS_HLT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %4, align 8
  %53 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @dev_warn(i32* %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %51, %46
  %61 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %4, align 8
  %62 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %61, i32 0, i32 3
  %63 = load %struct.jz4780_dma_desc*, %struct.jz4780_dma_desc** %62, align 8
  %64 = icmp ne %struct.jz4780_dma_desc* %63, null
  br i1 %64, label %65, label %132

65:                                               ; preds = %60
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %4, align 8
  %68 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %67, i32 0, i32 3
  %69 = load %struct.jz4780_dma_desc*, %struct.jz4780_dma_desc** %68, align 8
  %70 = getelementptr inbounds %struct.jz4780_dma_desc, %struct.jz4780_dma_desc* %69, i32 0, i32 0
  store i32 %66, i32* %70, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @JZ_DMA_DCS_AR, align 4
  %73 = load i32, i32* @JZ_DMA_DCS_HLT, align 4
  %74 = or i32 %72, %73
  %75 = and i32 %71, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %131

77:                                               ; preds = %65
  %78 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %4, align 8
  %79 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %78, i32 0, i32 3
  %80 = load %struct.jz4780_dma_desc*, %struct.jz4780_dma_desc** %79, align 8
  %81 = getelementptr inbounds %struct.jz4780_dma_desc, %struct.jz4780_dma_desc* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @DMA_CYCLIC, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %77
  %86 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %4, align 8
  %87 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %86, i32 0, i32 3
  %88 = load %struct.jz4780_dma_desc*, %struct.jz4780_dma_desc** %87, align 8
  %89 = getelementptr inbounds %struct.jz4780_dma_desc, %struct.jz4780_dma_desc* %88, i32 0, i32 3
  %90 = call i32 @vchan_cyclic_callback(i32* %89)
  %91 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %4, align 8
  %92 = call i32 @jz4780_dma_begin(%struct.jz4780_dma_chan* %91)
  br label %130

93:                                               ; preds = %77
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @JZ_DMA_DCS_TT, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %121

98:                                               ; preds = %93
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @JZ_SOC_DATA_BREAK_LINKS, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %98
  %104 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %4, align 8
  %105 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %106, 1
  %108 = load %struct.jz4780_dma_desc*, %struct.jz4780_dma_desc** %6, align 8
  %109 = getelementptr inbounds %struct.jz4780_dma_desc, %struct.jz4780_dma_desc* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %107, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %103, %98
  %113 = load %struct.jz4780_dma_desc*, %struct.jz4780_dma_desc** %6, align 8
  %114 = getelementptr inbounds %struct.jz4780_dma_desc, %struct.jz4780_dma_desc* %113, i32 0, i32 3
  %115 = call i32 @vchan_cookie_complete(i32* %114)
  %116 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %4, align 8
  %117 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %116, i32 0, i32 3
  store %struct.jz4780_dma_desc* null, %struct.jz4780_dma_desc** %117, align 8
  br label %118

118:                                              ; preds = %112, %103
  %119 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %4, align 8
  %120 = call i32 @jz4780_dma_begin(%struct.jz4780_dma_chan* %119)
  br label %129

121:                                              ; preds = %93
  store i32 0, i32* %8, align 4
  %122 = load %struct.jz4780_dma_dev*, %struct.jz4780_dma_dev** %3, align 8
  %123 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %4, align 8
  %124 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @JZ_DMA_REG_DCS, align 4
  %127 = load i32, i32* @JZ_DMA_DCS_CTE, align 4
  %128 = call i32 @jz4780_dma_chn_writel(%struct.jz4780_dma_dev* %122, i32 %125, i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %121, %118
  br label %130

130:                                              ; preds = %129, %85
  br label %131

131:                                              ; preds = %130, %65
  br label %140

132:                                              ; preds = %60
  %133 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %4, align 8
  %134 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = call i32 @dev_err(i32* %138, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %140

140:                                              ; preds = %132, %131
  %141 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %4, align 8
  %142 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = call i32 @spin_unlock(i32* %143)
  %145 = load i32, i32* %8, align 4
  ret i32 %145
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @jz4780_dma_chn_readl(%struct.jz4780_dma_dev*, i32, i32) #1

declare dso_local i32 @jz4780_dma_chn_writel(%struct.jz4780_dma_dev*, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @vchan_cyclic_callback(i32*) #1

declare dso_local i32 @jz4780_dma_begin(%struct.jz4780_dma_chan*) #1

declare dso_local i32 @vchan_cookie_complete(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
