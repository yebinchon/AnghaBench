; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pxa_dma.c_is_running_chan_misaligned.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pxa_dma.c_is_running_chan_misaligned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxad_chan = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DALGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxad_chan*)* @is_running_chan_misaligned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_running_chan_misaligned(%struct.pxad_chan* %0) #0 {
  %2 = alloca %struct.pxad_chan*, align 8
  %3 = alloca i32, align 4
  store %struct.pxad_chan* %0, %struct.pxad_chan** %2, align 8
  %4 = load %struct.pxad_chan*, %struct.pxad_chan** %2, align 8
  %5 = getelementptr inbounds %struct.pxad_chan, %struct.pxad_chan* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.pxad_chan*, %struct.pxad_chan** %2, align 8
  %12 = getelementptr inbounds %struct.pxad_chan, %struct.pxad_chan* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i32, i32* @DALGN, align 4
  %15 = call i32 @phy_readl_relaxed(%struct.TYPE_2__* %13, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.pxad_chan*, %struct.pxad_chan** %2, align 8
  %18 = getelementptr inbounds %struct.pxad_chan, %struct.pxad_chan* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @BIT(i32 %21)
  %23 = and i32 %16, %22
  ret i32 %23
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @phy_readl_relaxed(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
