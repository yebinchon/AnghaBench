; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_idma64.c_idma64_chan_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_idma64.c_idma64_chan_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idma64_chan = type { i32 }

@CFG_LO = common dso_local global i32 0, align 4
@IDMA64C_CFGL_CH_SUSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.idma64_chan*)* @idma64_chan_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idma64_chan_activate(%struct.idma64_chan* %0) #0 {
  %2 = alloca %struct.idma64_chan*, align 8
  %3 = alloca i32, align 4
  store %struct.idma64_chan* %0, %struct.idma64_chan** %2, align 8
  %4 = load %struct.idma64_chan*, %struct.idma64_chan** %2, align 8
  %5 = load i32, i32* @CFG_LO, align 4
  %6 = call i32 @channel_readl(%struct.idma64_chan* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.idma64_chan*, %struct.idma64_chan** %2, align 8
  %8 = load i32, i32* @CFG_LO, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @IDMA64C_CFGL_CH_SUSP, align 4
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  %13 = call i32 @channel_writel(%struct.idma64_chan* %7, i32 %8, i32 %12)
  ret void
}

declare dso_local i32 @channel_readl(%struct.idma64_chan*, i32) #1

declare dso_local i32 @channel_writel(%struct.idma64_chan*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
