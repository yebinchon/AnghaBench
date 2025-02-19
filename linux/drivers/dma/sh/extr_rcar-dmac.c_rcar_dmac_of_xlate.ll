; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/sh/extr_rcar-dmac.c_rcar_dmac_of_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/sh/extr_rcar-dmac.c_rcar_dmac_of_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.of_phandle_args = type { i32, i32* }
%struct.of_dma = type { i32 }
%struct.rcar_dmac_chan = type { i32 }

@DMA_SLAVE = common dso_local global i32 0, align 4
@rcar_dmac_chan_filter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_chan* (%struct.of_phandle_args*, %struct.of_dma*)* @rcar_dmac_of_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_chan* @rcar_dmac_of_xlate(%struct.of_phandle_args* %0, %struct.of_dma* %1) #0 {
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.of_phandle_args*, align 8
  %5 = alloca %struct.of_dma*, align 8
  %6 = alloca %struct.rcar_dmac_chan*, align 8
  %7 = alloca %struct.dma_chan*, align 8
  %8 = alloca i32, align 4
  store %struct.of_phandle_args* %0, %struct.of_phandle_args** %4, align 8
  store %struct.of_dma* %1, %struct.of_dma** %5, align 8
  %9 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %10 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.dma_chan* null, %struct.dma_chan** %3, align 8
  br label %40

14:                                               ; preds = %2
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @dma_cap_zero(i32 %15)
  %17 = load i32, i32* @DMA_SLAVE, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @dma_cap_set(i32 %17, i32 %18)
  %20 = load i32, i32* @rcar_dmac_chan_filter, align 4
  %21 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %22 = load %struct.of_dma*, %struct.of_dma** %5, align 8
  %23 = getelementptr inbounds %struct.of_dma, %struct.of_dma* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.dma_chan* @__dma_request_channel(i32* %8, i32 %20, %struct.of_phandle_args* %21, i32 %24)
  store %struct.dma_chan* %25, %struct.dma_chan** %7, align 8
  %26 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %27 = icmp ne %struct.dma_chan* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %14
  store %struct.dma_chan* null, %struct.dma_chan** %3, align 8
  br label %40

29:                                               ; preds = %14
  %30 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %31 = call %struct.rcar_dmac_chan* @to_rcar_dmac_chan(%struct.dma_chan* %30)
  store %struct.rcar_dmac_chan* %31, %struct.rcar_dmac_chan** %6, align 8
  %32 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %33 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %6, align 8
  %38 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  store %struct.dma_chan* %39, %struct.dma_chan** %3, align 8
  br label %40

40:                                               ; preds = %29, %28, %13
  %41 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  ret %struct.dma_chan* %41
}

declare dso_local i32 @dma_cap_zero(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local %struct.dma_chan* @__dma_request_channel(i32*, i32, %struct.of_phandle_args*, i32) #1

declare dso_local %struct.rcar_dmac_chan* @to_rcar_dmac_chan(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
