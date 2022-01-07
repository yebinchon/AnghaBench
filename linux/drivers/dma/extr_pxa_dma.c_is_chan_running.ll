; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pxa_dma.c_is_chan_running.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pxa_dma.c_is_chan_running.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxad_chan = type { %struct.pxad_phy* }
%struct.pxad_phy = type { i32 }

@DCSR = common dso_local global i32 0, align 4
@PXA_DCSR_RUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxad_chan*)* @is_chan_running to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_chan_running(%struct.pxad_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pxad_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pxad_phy*, align 8
  store %struct.pxad_chan* %0, %struct.pxad_chan** %3, align 8
  %6 = load %struct.pxad_chan*, %struct.pxad_chan** %3, align 8
  %7 = getelementptr inbounds %struct.pxad_chan, %struct.pxad_chan* %6, i32 0, i32 0
  %8 = load %struct.pxad_phy*, %struct.pxad_phy** %7, align 8
  store %struct.pxad_phy* %8, %struct.pxad_phy** %5, align 8
  %9 = load %struct.pxad_phy*, %struct.pxad_phy** %5, align 8
  %10 = icmp ne %struct.pxad_phy* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %19

12:                                               ; preds = %1
  %13 = load %struct.pxad_phy*, %struct.pxad_phy** %5, align 8
  %14 = load i32, i32* @DCSR, align 4
  %15 = call i32 @phy_readl_relaxed(%struct.pxad_phy* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @PXA_DCSR_RUN, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %12, %11
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @phy_readl_relaxed(%struct.pxad_phy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
