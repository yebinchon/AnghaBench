; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw/extr_core.c_dwc_dump_lli.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw/extr_core.c_dwc_dump_lli.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_dma_chan = type { i32 }
%struct.dw_desc = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"  desc: s0x%x d0x%x l0x%x c0x%x:%x\0A\00", align 1
@sar = common dso_local global i32 0, align 4
@dar = common dso_local global i32 0, align 4
@llp = common dso_local global i32 0, align 4
@ctlhi = common dso_local global i32 0, align 4
@ctllo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_dma_chan*, %struct.dw_desc*)* @dwc_dump_lli to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc_dump_lli(%struct.dw_dma_chan* %0, %struct.dw_desc* %1) #0 {
  %3 = alloca %struct.dw_dma_chan*, align 8
  %4 = alloca %struct.dw_desc*, align 8
  store %struct.dw_dma_chan* %0, %struct.dw_dma_chan** %3, align 8
  store %struct.dw_desc* %1, %struct.dw_desc** %4, align 8
  %5 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %3, align 8
  %6 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %5, i32 0, i32 0
  %7 = call i32 @chan2dev(i32* %6)
  %8 = load %struct.dw_desc*, %struct.dw_desc** %4, align 8
  %9 = load i32, i32* @sar, align 4
  %10 = call i32 @lli_read(%struct.dw_desc* %8, i32 %9)
  %11 = load %struct.dw_desc*, %struct.dw_desc** %4, align 8
  %12 = load i32, i32* @dar, align 4
  %13 = call i32 @lli_read(%struct.dw_desc* %11, i32 %12)
  %14 = load %struct.dw_desc*, %struct.dw_desc** %4, align 8
  %15 = load i32, i32* @llp, align 4
  %16 = call i32 @lli_read(%struct.dw_desc* %14, i32 %15)
  %17 = load %struct.dw_desc*, %struct.dw_desc** %4, align 8
  %18 = load i32, i32* @ctlhi, align 4
  %19 = call i32 @lli_read(%struct.dw_desc* %17, i32 %18)
  %20 = load %struct.dw_desc*, %struct.dw_desc** %4, align 8
  %21 = load i32, i32* @ctllo, align 4
  %22 = call i32 @lli_read(%struct.dw_desc* %20, i32 %21)
  %23 = call i32 @dev_crit(i32 %7, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13, i32 %16, i32 %19, i32 %22)
  ret void
}

declare dso_local i32 @dev_crit(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @chan2dev(i32*) #1

declare dso_local i32 @lli_read(%struct.dw_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
