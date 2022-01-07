; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_idma64.c_idma64_chan_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_idma64.c_idma64_chan_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idma64 = type { i32 }
%struct.idma64_chan = type { i32, %struct.idma64_desc* }
%struct.idma64_desc = type { %struct.idma64_hw_desc* }
%struct.idma64_hw_desc = type { i32 }

@SAR = common dso_local global i32 0, align 4
@DAR = common dso_local global i32 0, align 4
@CTL_HI = common dso_local global i32 0, align 4
@CTL_LO = common dso_local global i32 0, align 4
@IDMA64C_CTLL_LLP_S_EN = common dso_local global i32 0, align 4
@IDMA64C_CTLL_LLP_D_EN = common dso_local global i32 0, align 4
@LLP = common dso_local global i32 0, align 4
@CH_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.idma64*, %struct.idma64_chan*)* @idma64_chan_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idma64_chan_start(%struct.idma64* %0, %struct.idma64_chan* %1) #0 {
  %3 = alloca %struct.idma64*, align 8
  %4 = alloca %struct.idma64_chan*, align 8
  %5 = alloca %struct.idma64_desc*, align 8
  %6 = alloca %struct.idma64_hw_desc*, align 8
  store %struct.idma64* %0, %struct.idma64** %3, align 8
  store %struct.idma64_chan* %1, %struct.idma64_chan** %4, align 8
  %7 = load %struct.idma64_chan*, %struct.idma64_chan** %4, align 8
  %8 = getelementptr inbounds %struct.idma64_chan, %struct.idma64_chan* %7, i32 0, i32 1
  %9 = load %struct.idma64_desc*, %struct.idma64_desc** %8, align 8
  store %struct.idma64_desc* %9, %struct.idma64_desc** %5, align 8
  %10 = load %struct.idma64_desc*, %struct.idma64_desc** %5, align 8
  %11 = getelementptr inbounds %struct.idma64_desc, %struct.idma64_desc* %10, i32 0, i32 0
  %12 = load %struct.idma64_hw_desc*, %struct.idma64_hw_desc** %11, align 8
  %13 = getelementptr inbounds %struct.idma64_hw_desc, %struct.idma64_hw_desc* %12, i64 0
  store %struct.idma64_hw_desc* %13, %struct.idma64_hw_desc** %6, align 8
  %14 = load %struct.idma64_chan*, %struct.idma64_chan** %4, align 8
  %15 = load i32, i32* @SAR, align 4
  %16 = call i32 @channel_writeq(%struct.idma64_chan* %14, i32 %15, i32 0)
  %17 = load %struct.idma64_chan*, %struct.idma64_chan** %4, align 8
  %18 = load i32, i32* @DAR, align 4
  %19 = call i32 @channel_writeq(%struct.idma64_chan* %17, i32 %18, i32 0)
  %20 = load %struct.idma64_chan*, %struct.idma64_chan** %4, align 8
  %21 = load i32, i32* @CTL_HI, align 4
  %22 = call i32 @IDMA64C_CTLH_BLOCK_TS(i64 -1)
  %23 = call i32 @channel_writel(%struct.idma64_chan* %20, i32 %21, i32 %22)
  %24 = load %struct.idma64_chan*, %struct.idma64_chan** %4, align 8
  %25 = load i32, i32* @CTL_LO, align 4
  %26 = load i32, i32* @IDMA64C_CTLL_LLP_S_EN, align 4
  %27 = load i32, i32* @IDMA64C_CTLL_LLP_D_EN, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @channel_writel(%struct.idma64_chan* %24, i32 %25, i32 %28)
  %30 = load %struct.idma64_chan*, %struct.idma64_chan** %4, align 8
  %31 = load i32, i32* @LLP, align 4
  %32 = load %struct.idma64_hw_desc*, %struct.idma64_hw_desc** %6, align 8
  %33 = getelementptr inbounds %struct.idma64_hw_desc, %struct.idma64_hw_desc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @channel_writeq(%struct.idma64_chan* %30, i32 %31, i32 %34)
  %36 = load %struct.idma64*, %struct.idma64** %3, align 8
  %37 = load i32, i32* @CH_EN, align 4
  %38 = load %struct.idma64_chan*, %struct.idma64_chan** %4, align 8
  %39 = getelementptr inbounds %struct.idma64_chan, %struct.idma64_chan* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @channel_set_bit(%struct.idma64* %36, i32 %37, i32 %40)
  ret void
}

declare dso_local i32 @channel_writeq(%struct.idma64_chan*, i32, i32) #1

declare dso_local i32 @channel_writel(%struct.idma64_chan*, i32, i32) #1

declare dso_local i32 @IDMA64C_CTLH_BLOCK_TS(i64) #1

declare dso_local i32 @channel_set_bit(%struct.idma64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
