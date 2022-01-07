; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_omap-dma.c_omap_dma_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_omap-dma.c_omap_dma_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_chan = type { i32, i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.omap_dmadev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@CICR = common dso_local global i32 0, align 4
@CCR = common dso_local global i32 0, align 4
@DMA_ERRATA_i541 = common dso_local global i32 0, align 4
@CCR_TRIGGER_SRC = common dso_local global i32 0, align 4
@OCP_SYSCONFIG = common dso_local global i32 0, align 4
@DMA_SYSCONFIG_MIDLEMODE_MASK = common dso_local global i32 0, align 4
@DMA_IDLEMODE_NO_IDLE = common dso_local global i32 0, align 4
@CCR_ENABLE = common dso_local global i32 0, align 4
@CCR_BUFFERING_DISABLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CLNK_CTRL = common dso_local global i32 0, align 4
@CLNK_CTRL_ENABLE_LNK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_chan*)* @omap_dma_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_dma_stop(%struct.omap_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_chan*, align 8
  %4 = alloca %struct.omap_dmadev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.omap_chan* %0, %struct.omap_chan** %3, align 8
  %7 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %8 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.omap_dmadev* @to_omap_dma_dev(i32 %11)
  store %struct.omap_dmadev* %12, %struct.omap_dmadev** %4, align 8
  %13 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %14 = load i32, i32* @CICR, align 4
  %15 = call i32 @omap_dma_chan_write(%struct.omap_chan* %13, i32 %14, i32 0)
  %16 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %17 = call i32 @omap_dma_clear_csr(%struct.omap_chan* %16)
  %18 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %19 = load i32, i32* @CCR, align 4
  %20 = call i32 @omap_dma_chan_read(%struct.omap_chan* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.omap_dmadev*, %struct.omap_dmadev** %4, align 8
  %22 = getelementptr inbounds %struct.omap_dmadev, %struct.omap_dmadev* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @DMA_ERRATA_i541, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %75

29:                                               ; preds = %1
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @CCR_TRIGGER_SRC, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %75

34:                                               ; preds = %29
  %35 = load %struct.omap_dmadev*, %struct.omap_dmadev** %4, align 8
  %36 = load i32, i32* @OCP_SYSCONFIG, align 4
  %37 = call i32 @omap_dma_glbl_read(%struct.omap_dmadev* %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @DMA_SYSCONFIG_MIDLEMODE_MASK, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* @DMA_IDLEMODE_NO_IDLE, align 4
  %43 = call i32 @DMA_SYSCONFIG_MIDLEMODE(i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  %46 = load %struct.omap_dmadev*, %struct.omap_dmadev** %4, align 8
  %47 = load i32, i32* @OCP_SYSCONFIG, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @omap_dma_glbl_write(%struct.omap_dmadev* %46, i32 %47, i32 %48)
  %50 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %51 = load i32, i32* @CCR, align 4
  %52 = call i32 @omap_dma_chan_read(%struct.omap_chan* %50, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* @CCR_ENABLE, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %5, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %5, align 4
  %57 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %58 = load i32, i32* @CCR, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @omap_dma_chan_write(%struct.omap_chan* %57, i32 %58, i32 %59)
  %61 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %62 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @CCR_BUFFERING_DISABLE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %34
  %68 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %69 = call i32 @omap_dma_drain_chan(%struct.omap_chan* %68)
  br label %70

70:                                               ; preds = %67, %34
  %71 = load %struct.omap_dmadev*, %struct.omap_dmadev** %4, align 8
  %72 = load i32, i32* @OCP_SYSCONFIG, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @omap_dma_glbl_write(%struct.omap_dmadev* %71, i32 %72, i32 %73)
  br label %102

75:                                               ; preds = %29, %1
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @CCR_ENABLE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %138

83:                                               ; preds = %75
  %84 = load i32, i32* @CCR_ENABLE, align 4
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %5, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %5, align 4
  %88 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %89 = load i32, i32* @CCR, align 4
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @omap_dma_chan_write(%struct.omap_chan* %88, i32 %89, i32 %90)
  %92 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %93 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @CCR_BUFFERING_DISABLE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %83
  %99 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %100 = call i32 @omap_dma_drain_chan(%struct.omap_chan* %99)
  br label %101

101:                                              ; preds = %98, %83
  br label %102

102:                                              ; preds = %101, %70
  %103 = call i32 (...) @mb()
  %104 = load %struct.omap_dmadev*, %struct.omap_dmadev** %4, align 8
  %105 = getelementptr inbounds %struct.omap_dmadev, %struct.omap_dmadev* %104, i32 0, i32 0
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @__dma_omap15xx(i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %135, label %111

111:                                              ; preds = %102
  %112 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %113 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %135

116:                                              ; preds = %111
  %117 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %118 = load i32, i32* @CLNK_CTRL, align 4
  %119 = call i32 @omap_dma_chan_read(%struct.omap_chan* %117, i32 %118)
  store i32 %119, i32* %5, align 4
  %120 = call i64 (...) @dma_omap1()
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %116
  %123 = load i32, i32* %5, align 4
  %124 = or i32 %123, 16384
  store i32 %124, i32* %5, align 4
  br label %130

125:                                              ; preds = %116
  %126 = load i32, i32* @CLNK_CTRL_ENABLE_LNK, align 4
  %127 = xor i32 %126, -1
  %128 = load i32, i32* %5, align 4
  %129 = and i32 %128, %127
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %125, %122
  %131 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %132 = load i32, i32* @CLNK_CTRL, align 4
  %133 = load i32, i32* %5, align 4
  %134 = call i32 @omap_dma_chan_write(%struct.omap_chan* %131, i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %130, %111, %102
  %136 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %137 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %136, i32 0, i32 1
  store i32 0, i32* %137, align 4
  store i32 0, i32* %2, align 4
  br label %138

138:                                              ; preds = %135, %80
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local %struct.omap_dmadev* @to_omap_dma_dev(i32) #1

declare dso_local i32 @omap_dma_chan_write(%struct.omap_chan*, i32, i32) #1

declare dso_local i32 @omap_dma_clear_csr(%struct.omap_chan*) #1

declare dso_local i32 @omap_dma_chan_read(%struct.omap_chan*, i32) #1

declare dso_local i32 @omap_dma_glbl_read(%struct.omap_dmadev*, i32) #1

declare dso_local i32 @DMA_SYSCONFIG_MIDLEMODE(i32) #1

declare dso_local i32 @omap_dma_glbl_write(%struct.omap_dmadev*, i32, i32) #1

declare dso_local i32 @omap_dma_drain_chan(%struct.omap_chan*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @__dma_omap15xx(i32) #1

declare dso_local i64 @dma_omap1(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
