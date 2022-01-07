; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_omap-dma.c_omap_dma_start_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_omap-dma.c_omap_dma_start_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_chan = type { i32 }
%struct.omap_desc = type { i64, %struct.omap_sg* }
%struct.omap_sg = type { i32, i32, i32, i32, i32 }

@DMA_DEV_TO_MEM = common dso_local global i64 0, align 8
@DMA_MEM_TO_MEM = common dso_local global i64 0, align 8
@CDSA = common dso_local global i32 0, align 4
@CDEI = common dso_local global i32 0, align 4
@CDFI = common dso_local global i32 0, align 4
@CSSA = common dso_local global i32 0, align 4
@CSEI = common dso_local global i32 0, align 4
@CSFI = common dso_local global i32 0, align 4
@CEN = common dso_local global i32 0, align 4
@CFN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_chan*, %struct.omap_desc*)* @omap_dma_start_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_dma_start_sg(%struct.omap_chan* %0, %struct.omap_desc* %1) #0 {
  %3 = alloca %struct.omap_chan*, align 8
  %4 = alloca %struct.omap_desc*, align 8
  %5 = alloca %struct.omap_sg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.omap_chan* %0, %struct.omap_chan** %3, align 8
  store %struct.omap_desc* %1, %struct.omap_desc** %4, align 8
  %9 = load %struct.omap_desc*, %struct.omap_desc** %4, align 8
  %10 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %9, i32 0, i32 1
  %11 = load %struct.omap_sg*, %struct.omap_sg** %10, align 8
  %12 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %13 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.omap_sg, %struct.omap_sg* %11, i64 %15
  store %struct.omap_sg* %16, %struct.omap_sg** %5, align 8
  %17 = load %struct.omap_desc*, %struct.omap_desc** %4, align 8
  %18 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DMA_DEV_TO_MEM, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load %struct.omap_desc*, %struct.omap_desc** %4, align 8
  %24 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DMA_MEM_TO_MEM, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22, %2
  %29 = load i32, i32* @CDSA, align 4
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* @CDEI, align 4
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* @CDFI, align 4
  store i32 %31, i32* %8, align 4
  br label %36

32:                                               ; preds = %22
  %33 = load i32, i32* @CSSA, align 4
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* @CSEI, align 4
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* @CSFI, align 4
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %32, %28
  %37 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.omap_sg*, %struct.omap_sg** %5, align 8
  %40 = getelementptr inbounds %struct.omap_sg, %struct.omap_sg* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @omap_dma_chan_write(%struct.omap_chan* %37, i32 %38, i32 %41)
  %43 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.omap_sg*, %struct.omap_sg** %5, align 8
  %46 = getelementptr inbounds %struct.omap_sg, %struct.omap_sg* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @omap_dma_chan_write(%struct.omap_chan* %43, i32 %44, i32 %47)
  %49 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.omap_sg*, %struct.omap_sg** %5, align 8
  %52 = getelementptr inbounds %struct.omap_sg, %struct.omap_sg* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @omap_dma_chan_write(%struct.omap_chan* %49, i32 %50, i32 %53)
  %55 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %56 = load i32, i32* @CEN, align 4
  %57 = load %struct.omap_sg*, %struct.omap_sg** %5, align 8
  %58 = getelementptr inbounds %struct.omap_sg, %struct.omap_sg* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @omap_dma_chan_write(%struct.omap_chan* %55, i32 %56, i32 %59)
  %61 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %62 = load i32, i32* @CFN, align 4
  %63 = load %struct.omap_sg*, %struct.omap_sg** %5, align 8
  %64 = getelementptr inbounds %struct.omap_sg, %struct.omap_sg* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @omap_dma_chan_write(%struct.omap_chan* %61, i32 %62, i32 %65)
  %67 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %68 = load %struct.omap_desc*, %struct.omap_desc** %4, align 8
  %69 = call i32 @omap_dma_start(%struct.omap_chan* %67, %struct.omap_desc* %68)
  %70 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %71 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  ret void
}

declare dso_local i32 @omap_dma_chan_write(%struct.omap_chan*, i32, i32) #1

declare dso_local i32 @omap_dma_start(%struct.omap_chan*, %struct.omap_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
