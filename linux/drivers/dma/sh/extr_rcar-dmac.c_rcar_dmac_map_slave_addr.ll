; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/sh/extr_rcar-dmac.c_rcar_dmac_map_slave_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/sh/extr_rcar-dmac.c_rcar_dmac_map_slave_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.rcar_dmac_chan = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.rcar_dmac_chan_map }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.rcar_dmac_chan_map = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64, i64 }

@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"chan%u: failed to map %zx@%pap\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"chan%u: map %zx@%pap to %pad dir: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"DMA_TO_DEVICE\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"DMA_FROM_DEVICE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i32)* @rcar_dmac_map_slave_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_dmac_map_slave_addr(%struct.dma_chan* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rcar_dmac_chan*, align 8
  %7 = alloca %struct.rcar_dmac_chan_map*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %12 = call %struct.rcar_dmac_chan* @to_rcar_dmac_chan(%struct.dma_chan* %11)
  store %struct.rcar_dmac_chan* %12, %struct.rcar_dmac_chan** %6, align 8
  %13 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %6, align 8
  %14 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %13, i32 0, i32 3
  store %struct.rcar_dmac_chan_map* %14, %struct.rcar_dmac_chan_map** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %2
  %19 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %6, align 8
  %20 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %8, align 8
  %23 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %6, align 8
  %24 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %9, align 8
  %27 = load i32, i32* @DMA_TO_DEVICE, align 4
  store i32 %27, i32* %10, align 4
  br label %38

28:                                               ; preds = %2
  %29 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %6, align 8
  %30 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %8, align 8
  %33 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %6, align 8
  %34 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %9, align 8
  %37 = load i32, i32* @DMA_FROM_DEVICE, align 4
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %28, %18
  %39 = load i64, i64* %8, align 8
  %40 = load %struct.rcar_dmac_chan_map*, %struct.rcar_dmac_chan_map** %7, align 8
  %41 = getelementptr inbounds %struct.rcar_dmac_chan_map, %struct.rcar_dmac_chan_map* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %39, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %38
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.rcar_dmac_chan_map*, %struct.rcar_dmac_chan_map** %7, align 8
  %48 = getelementptr inbounds %struct.rcar_dmac_chan_map, %struct.rcar_dmac_chan_map* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %46, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.rcar_dmac_chan_map*, %struct.rcar_dmac_chan_map** %7, align 8
  %55 = getelementptr inbounds %struct.rcar_dmac_chan_map, %struct.rcar_dmac_chan_map* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %149

59:                                               ; preds = %52, %45, %38
  %60 = load %struct.rcar_dmac_chan_map*, %struct.rcar_dmac_chan_map** %7, align 8
  %61 = getelementptr inbounds %struct.rcar_dmac_chan_map, %struct.rcar_dmac_chan_map* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %59
  %66 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %67 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %66, i32 0, i32 0
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.rcar_dmac_chan_map*, %struct.rcar_dmac_chan_map** %7, align 8
  %72 = getelementptr inbounds %struct.rcar_dmac_chan_map, %struct.rcar_dmac_chan_map* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.rcar_dmac_chan_map*, %struct.rcar_dmac_chan_map** %7, align 8
  %75 = getelementptr inbounds %struct.rcar_dmac_chan_map, %struct.rcar_dmac_chan_map* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.rcar_dmac_chan_map*, %struct.rcar_dmac_chan_map** %7, align 8
  %79 = getelementptr inbounds %struct.rcar_dmac_chan_map, %struct.rcar_dmac_chan_map* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @dma_unmap_resource(i32 %70, i32 %73, i64 %77, i32 %80, i32 0)
  br label %82

82:                                               ; preds = %65, %59
  %83 = load %struct.rcar_dmac_chan_map*, %struct.rcar_dmac_chan_map** %7, align 8
  %84 = getelementptr inbounds %struct.rcar_dmac_chan_map, %struct.rcar_dmac_chan_map* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  store i64 0, i64* %85, align 8
  %86 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %87 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i64, i64* %8, align 8
  %92 = load i64, i64* %9, align 8
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @dma_map_resource(i32 %90, i64 %91, i64 %92, i32 %93, i32 0)
  %95 = load %struct.rcar_dmac_chan_map*, %struct.rcar_dmac_chan_map** %7, align 8
  %96 = getelementptr inbounds %struct.rcar_dmac_chan_map, %struct.rcar_dmac_chan_map* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %98 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %97, i32 0, i32 0
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.rcar_dmac_chan_map*, %struct.rcar_dmac_chan_map** %7, align 8
  %103 = getelementptr inbounds %struct.rcar_dmac_chan_map, %struct.rcar_dmac_chan_map* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @dma_mapping_error(i32 %101, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %82
  %108 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %109 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %108, i32 0, i32 0
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %6, align 8
  %114 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i64, i64* %9, align 8
  %117 = call i32 @dev_err(i32 %112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %115, i64 %116, i64* %8)
  %118 = load i32, i32* @EIO, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %3, align 4
  br label %149

120:                                              ; preds = %82
  %121 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %122 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %121, i32 0, i32 0
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %6, align 8
  %127 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i64, i64* %9, align 8
  %130 = load %struct.rcar_dmac_chan_map*, %struct.rcar_dmac_chan_map** %7, align 8
  %131 = getelementptr inbounds %struct.rcar_dmac_chan_map, %struct.rcar_dmac_chan_map* %130, i32 0, i32 2
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* @DMA_TO_DEVICE, align 4
  %134 = icmp eq i32 %132, %133
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)
  %137 = call i32 @dev_dbg(i32 %125, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %128, i64 %129, i64* %8, i32* %131, i8* %136)
  %138 = load i64, i64* %8, align 8
  %139 = load %struct.rcar_dmac_chan_map*, %struct.rcar_dmac_chan_map** %7, align 8
  %140 = getelementptr inbounds %struct.rcar_dmac_chan_map, %struct.rcar_dmac_chan_map* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  store i64 %138, i64* %141, align 8
  %142 = load i64, i64* %9, align 8
  %143 = load %struct.rcar_dmac_chan_map*, %struct.rcar_dmac_chan_map** %7, align 8
  %144 = getelementptr inbounds %struct.rcar_dmac_chan_map, %struct.rcar_dmac_chan_map* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  store i64 %142, i64* %145, align 8
  %146 = load i32, i32* %10, align 4
  %147 = load %struct.rcar_dmac_chan_map*, %struct.rcar_dmac_chan_map** %7, align 8
  %148 = getelementptr inbounds %struct.rcar_dmac_chan_map, %struct.rcar_dmac_chan_map* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  store i32 0, i32* %3, align 4
  br label %149

149:                                              ; preds = %120, %107, %58
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local %struct.rcar_dmac_chan* @to_rcar_dmac_chan(%struct.dma_chan*) #1

declare dso_local i32 @dma_unmap_resource(i32, i32, i64, i32, i32) #1

declare dso_local i32 @dma_map_resource(i32, i64, i64, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i64, i64*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64, i64*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
