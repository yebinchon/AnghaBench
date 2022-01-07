; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw/extr_idma32.c_idma32_initialize_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw/extr_idma32.c_idma32_initialize_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_dma_chan = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@IDMA32C_CFGL_DST_BURST_ALIGN = common dso_local global i32 0, align 4
@IDMA32C_CFGL_SRC_BURST_ALIGN = common dso_local global i32 0, align 4
@CFG_LO = common dso_local global i32 0, align 4
@CFG_HI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_dma_chan*)* @idma32_initialize_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idma32_initialize_chan(%struct.dw_dma_chan* %0) #0 {
  %2 = alloca %struct.dw_dma_chan*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.dw_dma_chan* %0, %struct.dw_dma_chan** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @IDMA32C_CFGL_DST_BURST_ALIGN, align 4
  %6 = load i32, i32* @IDMA32C_CFGL_SRC_BURST_ALIGN, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* %4, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %4, align 4
  %10 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %2, align 8
  %11 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 15
  %15 = call i32 @IDMA32C_CFGH_DST_PER(i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %2, align 8
  %19 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 15
  %23 = call i32 @IDMA32C_CFGH_SRC_PER(i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %2, align 8
  %27 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %29, 4
  %31 = and i32 %30, 3
  %32 = call i32 @IDMA32C_CFGH_DST_PER_EXT(i32 %31)
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  %35 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %2, align 8
  %36 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %38, 4
  %40 = and i32 %39, 3
  %41 = call i32 @IDMA32C_CFGH_SRC_PER_EXT(i32 %40)
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %3, align 4
  %44 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %2, align 8
  %45 = load i32, i32* @CFG_LO, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @channel_writel(%struct.dw_dma_chan* %44, i32 %45, i32 %46)
  %48 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %2, align 8
  %49 = load i32, i32* @CFG_HI, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @channel_writel(%struct.dw_dma_chan* %48, i32 %49, i32 %50)
  ret void
}

declare dso_local i32 @IDMA32C_CFGH_DST_PER(i32) #1

declare dso_local i32 @IDMA32C_CFGH_SRC_PER(i32) #1

declare dso_local i32 @IDMA32C_CFGH_DST_PER_EXT(i32) #1

declare dso_local i32 @IDMA32C_CFGH_SRC_PER_EXT(i32) #1

declare dso_local i32 @channel_writel(%struct.dw_dma_chan*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
