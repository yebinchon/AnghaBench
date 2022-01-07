; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_omap-dma.c_omap_dma_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_omap-dma.c_omap_dma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_chan = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.omap_desc = type { i32, i64, i32, %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.omap_dmadev = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@CPC = common dso_local global i32 0, align 4
@CDAC = common dso_local global i32 0, align 4
@CDP_TMODE_LLIST = common dso_local global i32 0, align 4
@CDP_NTYPE_TYPE2 = common dso_local global i32 0, align 4
@CDP_FAST = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i64 0, align 8
@CDP_DST_VALID_RELOAD = common dso_local global i32 0, align 4
@CDP_SRC_VALID_REUSE = common dso_local global i32 0, align 4
@CDP_DST_VALID_REUSE = common dso_local global i32 0, align 4
@CDP_SRC_VALID_RELOAD = common dso_local global i32 0, align 4
@CDP = common dso_local global i32 0, align 4
@CNDP = common dso_local global i32 0, align 4
@CCDN = common dso_local global i32 0, align 4
@CCFN = common dso_local global i32 0, align 4
@CCEN = common dso_local global i32 0, align 4
@CICR_BLOCK_IE = common dso_local global i32 0, align 4
@CICR = common dso_local global i32 0, align 4
@CCR = common dso_local global i32 0, align 4
@CCR_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_chan*, %struct.omap_desc*)* @omap_dma_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_dma_start(%struct.omap_chan* %0, %struct.omap_desc* %1) #0 {
  %3 = alloca %struct.omap_chan*, align 8
  %4 = alloca %struct.omap_desc*, align 8
  %5 = alloca %struct.omap_dmadev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.omap_chan* %0, %struct.omap_chan** %3, align 8
  store %struct.omap_desc* %1, %struct.omap_desc** %4, align 8
  %8 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %9 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.omap_dmadev* @to_omap_dma_dev(i32 %12)
  store %struct.omap_dmadev* %13, %struct.omap_dmadev** %5, align 8
  %14 = load %struct.omap_desc*, %struct.omap_desc** %4, align 8
  %15 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  %17 = load %struct.omap_dmadev*, %struct.omap_dmadev** %5, align 8
  %18 = getelementptr inbounds %struct.omap_dmadev, %struct.omap_dmadev* %17, i32 0, i32 1
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @__dma_omap15xx(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %26 = load i32, i32* @CPC, align 4
  %27 = call i32 @omap_dma_chan_write(%struct.omap_chan* %25, i32 %26, i32 0)
  br label %32

28:                                               ; preds = %2
  %29 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %30 = load i32, i32* @CDAC, align 4
  %31 = call i32 @omap_dma_chan_write(%struct.omap_chan* %29, i32 %30, i32 0)
  br label %32

32:                                               ; preds = %28, %24
  %33 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %34 = call i32 @omap_dma_clear_csr(%struct.omap_chan* %33)
  %35 = load %struct.omap_desc*, %struct.omap_desc** %4, align 8
  %36 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %89

39:                                               ; preds = %32
  %40 = load i32, i32* @CDP_TMODE_LLIST, align 4
  %41 = load i32, i32* @CDP_NTYPE_TYPE2, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @CDP_FAST, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %7, align 4
  %45 = load %struct.omap_desc*, %struct.omap_desc** %4, align 8
  %46 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @DMA_DEV_TO_MEM, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %39
  %51 = load i32, i32* @CDP_DST_VALID_RELOAD, align 4
  %52 = load i32, i32* @CDP_SRC_VALID_REUSE, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  br label %62

56:                                               ; preds = %39
  %57 = load i32, i32* @CDP_DST_VALID_REUSE, align 4
  %58 = load i32, i32* @CDP_SRC_VALID_RELOAD, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %56, %50
  %63 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %64 = load i32, i32* @CDP, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @omap_dma_chan_write(%struct.omap_chan* %63, i32 %64, i32 %65)
  %67 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %68 = load i32, i32* @CNDP, align 4
  %69 = load %struct.omap_desc*, %struct.omap_desc** %4, align 8
  %70 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %69, i32 0, i32 3
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @omap_dma_chan_write(%struct.omap_chan* %67, i32 %68, i32 %74)
  %76 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %77 = load i32, i32* @CCDN, align 4
  %78 = call i32 @omap_dma_chan_write(%struct.omap_chan* %76, i32 %77, i32 0)
  %79 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %80 = load i32, i32* @CCFN, align 4
  %81 = call i32 @omap_dma_chan_write(%struct.omap_chan* %79, i32 %80, i32 65535)
  %82 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %83 = load i32, i32* @CCEN, align 4
  %84 = call i32 @omap_dma_chan_write(%struct.omap_chan* %82, i32 %83, i32 16777215)
  %85 = load i32, i32* @CICR_BLOCK_IE, align 4
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %6, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %6, align 4
  br label %99

89:                                               ; preds = %32
  %90 = load %struct.omap_dmadev*, %struct.omap_dmadev** %5, align 8
  %91 = getelementptr inbounds %struct.omap_dmadev, %struct.omap_dmadev* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %96 = load i32, i32* @CDP, align 4
  %97 = call i32 @omap_dma_chan_write(%struct.omap_chan* %95, i32 %96, i32 0)
  br label %98

98:                                               ; preds = %94, %89
  br label %99

99:                                               ; preds = %98, %62
  %100 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %101 = load i32, i32* @CICR, align 4
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @omap_dma_chan_write(%struct.omap_chan* %100, i32 %101, i32 %102)
  %104 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %105 = load i32, i32* @CCR, align 4
  %106 = load %struct.omap_desc*, %struct.omap_desc** %4, align 8
  %107 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @CCR_ENABLE, align 4
  %110 = or i32 %108, %109
  %111 = call i32 @omap_dma_chan_write(%struct.omap_chan* %104, i32 %105, i32 %110)
  %112 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %113 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %112, i32 0, i32 0
  store i32 1, i32* %113, align 4
  ret void
}

declare dso_local %struct.omap_dmadev* @to_omap_dma_dev(i32) #1

declare dso_local i64 @__dma_omap15xx(i32) #1

declare dso_local i32 @omap_dma_chan_write(%struct.omap_chan*, i32, i32) #1

declare dso_local i32 @omap_dma_clear_csr(%struct.omap_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
