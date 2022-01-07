; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/sh/extr_rcar-dmac.c_rcar_dmac_chan_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/sh/extr_rcar-dmac.c_rcar_dmac_chan_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_dmac_chan = type { i64 }

@RCAR_DMARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.rcar_dmac_chan*, i64)* @rcar_dmac_chan_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rcar_dmac_chan_read(%struct.rcar_dmac_chan* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.rcar_dmac_chan*, align 8
  %5 = alloca i64, align 8
  store %struct.rcar_dmac_chan* %0, %struct.rcar_dmac_chan** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @RCAR_DMARS, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %4, align 8
  %11 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %5, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i64 @readw(i64 %14)
  store i64 %15, i64* %3, align 8
  br label %23

16:                                               ; preds = %2
  %17 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %4, align 8
  %18 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i64 @readl(i64 %21)
  store i64 %22, i64* %3, align 8
  br label %23

23:                                               ; preds = %16, %9
  %24 = load i64, i64* %3, align 8
  ret i64 %24
}

declare dso_local i64 @readw(i64) #1

declare dso_local i64 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
