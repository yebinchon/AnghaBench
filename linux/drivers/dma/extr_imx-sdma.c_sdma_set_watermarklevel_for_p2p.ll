; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_set_watermarklevel_for_p2p.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_set_watermarklevel_for_p2p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_channel = type { i32, i32, i32, i64, i64, i32*, %struct.sdma_engine* }
%struct.sdma_engine = type { i64, i64 }

@SDMA_WATERMARK_LEVEL_LWML = common dso_local global i32 0, align 4
@SDMA_WATERMARK_LEVEL_HWML = common dso_local global i32 0, align 4
@SDMA_WATERMARK_LEVEL_LWE = common dso_local global i32 0, align 4
@SDMA_WATERMARK_LEVEL_HWE = common dso_local global i32 0, align 4
@SDMA_WATERMARK_LEVEL_SP = common dso_local global i32 0, align 4
@SDMA_WATERMARK_LEVEL_DP = common dso_local global i32 0, align 4
@SDMA_WATERMARK_LEVEL_CONT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdma_channel*)* @sdma_set_watermarklevel_for_p2p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_set_watermarklevel_for_p2p(%struct.sdma_channel* %0) #0 {
  %2 = alloca %struct.sdma_channel*, align 8
  %3 = alloca %struct.sdma_engine*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sdma_channel* %0, %struct.sdma_channel** %2, align 8
  %6 = load %struct.sdma_channel*, %struct.sdma_channel** %2, align 8
  %7 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %6, i32 0, i32 6
  %8 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  store %struct.sdma_engine* %8, %struct.sdma_engine** %3, align 8
  %9 = load %struct.sdma_channel*, %struct.sdma_channel** %2, align 8
  %10 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @SDMA_WATERMARK_LEVEL_LWML, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load %struct.sdma_channel*, %struct.sdma_channel** %2, align 8
  %15 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @SDMA_WATERMARK_LEVEL_HWML, align 4
  %18 = and i32 %16, %17
  %19 = ashr i32 %18, 16
  store i32 %19, i32* %5, align 4
  %20 = load %struct.sdma_channel*, %struct.sdma_channel** %2, align 8
  %21 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = srem i32 %22, 32
  %24 = load %struct.sdma_channel*, %struct.sdma_channel** %2, align 8
  %25 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %24, i32 0, i32 5
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = call i32 @set_bit(i32 %23, i32* %27)
  %29 = load %struct.sdma_channel*, %struct.sdma_channel** %2, align 8
  %30 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = srem i32 %31, 32
  %33 = load %struct.sdma_channel*, %struct.sdma_channel** %2, align 8
  %34 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %33, i32 0, i32 5
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = call i32 @set_bit(i32 %32, i32* %36)
  %38 = load %struct.sdma_channel*, %struct.sdma_channel** %2, align 8
  %39 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %40, 31
  br i1 %41, label %42, label %48

42:                                               ; preds = %1
  %43 = load i32, i32* @SDMA_WATERMARK_LEVEL_LWE, align 4
  %44 = load %struct.sdma_channel*, %struct.sdma_channel** %2, align 8
  %45 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %42, %1
  %49 = load %struct.sdma_channel*, %struct.sdma_channel** %2, align 8
  %50 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp sgt i32 %51, 31
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load i32, i32* @SDMA_WATERMARK_LEVEL_HWE, align 4
  %55 = load %struct.sdma_channel*, %struct.sdma_channel** %2, align 8
  %56 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %53, %48
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %94

63:                                               ; preds = %59
  %64 = load i32, i32* @SDMA_WATERMARK_LEVEL_LWML, align 4
  %65 = load i32, i32* @SDMA_WATERMARK_LEVEL_HWML, align 4
  %66 = or i32 %64, %65
  %67 = xor i32 %66, -1
  %68 = load %struct.sdma_channel*, %struct.sdma_channel** %2, align 8
  %69 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.sdma_channel*, %struct.sdma_channel** %2, align 8
  %74 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  %77 = load i32, i32* %4, align 4
  %78 = shl i32 %77, 16
  %79 = load %struct.sdma_channel*, %struct.sdma_channel** %2, align 8
  %80 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  %83 = load %struct.sdma_channel*, %struct.sdma_channel** %2, align 8
  %84 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %83, i32 0, i32 5
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.sdma_channel*, %struct.sdma_channel** %2, align 8
  %89 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %88, i32 0, i32 5
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @swap(i32 %87, i32 %92)
  br label %94

94:                                               ; preds = %63, %59
  %95 = load %struct.sdma_channel*, %struct.sdma_channel** %2, align 8
  %96 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %99 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp sge i64 %97, %100
  br i1 %101, label %102, label %116

102:                                              ; preds = %94
  %103 = load %struct.sdma_channel*, %struct.sdma_channel** %2, align 8
  %104 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %107 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp sle i64 %105, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %102
  %111 = load i32, i32* @SDMA_WATERMARK_LEVEL_SP, align 4
  %112 = load %struct.sdma_channel*, %struct.sdma_channel** %2, align 8
  %113 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 8
  br label %116

116:                                              ; preds = %110, %102, %94
  %117 = load %struct.sdma_channel*, %struct.sdma_channel** %2, align 8
  %118 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %121 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp sge i64 %119, %122
  br i1 %123, label %124, label %138

124:                                              ; preds = %116
  %125 = load %struct.sdma_channel*, %struct.sdma_channel** %2, align 8
  %126 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %129 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp sle i64 %127, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %124
  %133 = load i32, i32* @SDMA_WATERMARK_LEVEL_DP, align 4
  %134 = load %struct.sdma_channel*, %struct.sdma_channel** %2, align 8
  %135 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 8
  br label %138

138:                                              ; preds = %132, %124, %116
  %139 = load i32, i32* @SDMA_WATERMARK_LEVEL_CONT, align 4
  %140 = load %struct.sdma_channel*, %struct.sdma_channel** %2, align 8
  %141 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 8
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @swap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
