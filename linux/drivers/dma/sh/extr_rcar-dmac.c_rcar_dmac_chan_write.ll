; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/sh/extr_rcar-dmac.c_rcar_dmac_chan_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/sh/extr_rcar-dmac.c_rcar_dmac_chan_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_dmac_chan = type { i64 }

@RCAR_DMARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_dmac_chan*, i64, i64)* @rcar_dmac_chan_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_dmac_chan_write(%struct.rcar_dmac_chan* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.rcar_dmac_chan*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.rcar_dmac_chan* %0, %struct.rcar_dmac_chan** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @RCAR_DMARS, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %4, align 8
  %13 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writew(i64 %11, i64 %16)
  br label %26

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %4, align 8
  %21 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i64 %19, i64 %24)
  br label %26

26:                                               ; preds = %18, %10
  ret void
}

declare dso_local i32 @writew(i64, i64) #1

declare dso_local i32 @writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
