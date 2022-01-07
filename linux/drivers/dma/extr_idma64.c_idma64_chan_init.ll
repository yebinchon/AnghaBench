; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_idma64.c_idma64_chan_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_idma64.c_idma64_chan_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idma64 = type { i32 }
%struct.idma64_chan = type { i32 }

@IDMA64C_CFGL_DST_BURST_ALIGN = common dso_local global i32 0, align 4
@IDMA64C_CFGL_SRC_BURST_ALIGN = common dso_local global i32 0, align 4
@CFG_LO = common dso_local global i32 0, align 4
@CFG_HI = common dso_local global i32 0, align 4
@XFER = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.idma64*, %struct.idma64_chan*)* @idma64_chan_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idma64_chan_init(%struct.idma64* %0, %struct.idma64_chan* %1) #0 {
  %3 = alloca %struct.idma64*, align 8
  %4 = alloca %struct.idma64_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.idma64* %0, %struct.idma64** %3, align 8
  store %struct.idma64_chan* %1, %struct.idma64_chan** %4, align 8
  %7 = call i32 @IDMA64C_CFGH_SRC_PER(i32 1)
  %8 = call i32 @IDMA64C_CFGH_DST_PER(i32 0)
  %9 = or i32 %7, %8
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* @IDMA64C_CFGL_DST_BURST_ALIGN, align 4
  %11 = load i32, i32* @IDMA64C_CFGL_SRC_BURST_ALIGN, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* %6, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %6, align 4
  %15 = load %struct.idma64_chan*, %struct.idma64_chan** %4, align 8
  %16 = load i32, i32* @CFG_LO, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @channel_writel(%struct.idma64_chan* %15, i32 %16, i32 %17)
  %19 = load %struct.idma64_chan*, %struct.idma64_chan** %4, align 8
  %20 = load i32, i32* @CFG_HI, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @channel_writel(%struct.idma64_chan* %19, i32 %20, i32 %21)
  %23 = load %struct.idma64*, %struct.idma64** %3, align 8
  %24 = load i32, i32* @XFER, align 4
  %25 = call i32 @MASK(i32 %24)
  %26 = load %struct.idma64_chan*, %struct.idma64_chan** %4, align 8
  %27 = getelementptr inbounds %struct.idma64_chan, %struct.idma64_chan* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @channel_set_bit(%struct.idma64* %23, i32 %25, i32 %28)
  %30 = load %struct.idma64*, %struct.idma64** %3, align 8
  %31 = load i32, i32* @ERROR, align 4
  %32 = call i32 @MASK(i32 %31)
  %33 = load %struct.idma64_chan*, %struct.idma64_chan** %4, align 8
  %34 = getelementptr inbounds %struct.idma64_chan, %struct.idma64_chan* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @channel_set_bit(%struct.idma64* %30, i32 %32, i32 %35)
  %37 = load %struct.idma64*, %struct.idma64** %3, align 8
  %38 = call i32 @idma64_on(%struct.idma64* %37)
  ret void
}

declare dso_local i32 @IDMA64C_CFGH_SRC_PER(i32) #1

declare dso_local i32 @IDMA64C_CFGH_DST_PER(i32) #1

declare dso_local i32 @channel_writel(%struct.idma64_chan*, i32, i32) #1

declare dso_local i32 @channel_set_bit(%struct.idma64*, i32, i32) #1

declare dso_local i32 @MASK(i32) #1

declare dso_local i32 @idma64_on(%struct.idma64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
