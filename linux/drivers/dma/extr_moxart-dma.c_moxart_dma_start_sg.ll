; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_moxart-dma.c_moxart_dma_start_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_moxart-dma.c_moxart_dma_start_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.moxart_chan = type { %struct.moxart_desc* }
%struct.moxart_desc = type { i64, i32, %struct.moxart_sg* }
%struct.moxart_sg = type { i32, i32 }

@DMA_MEM_TO_DEV = common dso_local global i64 0, align 8
@DMA_DEV_TO_MEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.moxart_chan*, i32)* @moxart_dma_start_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @moxart_dma_start_sg(%struct.moxart_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.moxart_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.moxart_desc*, align 8
  %6 = alloca %struct.moxart_sg*, align 8
  store %struct.moxart_chan* %0, %struct.moxart_chan** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.moxart_chan*, %struct.moxart_chan** %3, align 8
  %8 = getelementptr inbounds %struct.moxart_chan, %struct.moxart_chan* %7, i32 0, i32 0
  %9 = load %struct.moxart_desc*, %struct.moxart_desc** %8, align 8
  store %struct.moxart_desc* %9, %struct.moxart_desc** %5, align 8
  %10 = load %struct.moxart_chan*, %struct.moxart_chan** %3, align 8
  %11 = getelementptr inbounds %struct.moxart_chan, %struct.moxart_chan* %10, i32 0, i32 0
  %12 = load %struct.moxart_desc*, %struct.moxart_desc** %11, align 8
  %13 = getelementptr inbounds %struct.moxart_desc, %struct.moxart_desc* %12, i32 0, i32 2
  %14 = load %struct.moxart_sg*, %struct.moxart_sg** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.moxart_sg, %struct.moxart_sg* %14, i64 %16
  store %struct.moxart_sg* %17, %struct.moxart_sg** %6, align 8
  %18 = load %struct.moxart_chan*, %struct.moxart_chan** %3, align 8
  %19 = getelementptr inbounds %struct.moxart_chan, %struct.moxart_chan* %18, i32 0, i32 0
  %20 = load %struct.moxart_desc*, %struct.moxart_desc** %19, align 8
  %21 = getelementptr inbounds %struct.moxart_desc, %struct.moxart_desc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @DMA_MEM_TO_DEV, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %2
  %26 = load %struct.moxart_chan*, %struct.moxart_chan** %3, align 8
  %27 = load %struct.moxart_sg*, %struct.moxart_sg** %6, align 8
  %28 = getelementptr inbounds %struct.moxart_sg, %struct.moxart_sg* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.moxart_desc*, %struct.moxart_desc** %5, align 8
  %31 = getelementptr inbounds %struct.moxart_desc, %struct.moxart_desc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @moxart_dma_set_params(%struct.moxart_chan* %26, i32 %29, i32 %32)
  br label %52

34:                                               ; preds = %2
  %35 = load %struct.moxart_chan*, %struct.moxart_chan** %3, align 8
  %36 = getelementptr inbounds %struct.moxart_chan, %struct.moxart_chan* %35, i32 0, i32 0
  %37 = load %struct.moxart_desc*, %struct.moxart_desc** %36, align 8
  %38 = getelementptr inbounds %struct.moxart_desc, %struct.moxart_desc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @DMA_DEV_TO_MEM, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %34
  %43 = load %struct.moxart_chan*, %struct.moxart_chan** %3, align 8
  %44 = load %struct.moxart_desc*, %struct.moxart_desc** %5, align 8
  %45 = getelementptr inbounds %struct.moxart_desc, %struct.moxart_desc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.moxart_sg*, %struct.moxart_sg** %6, align 8
  %48 = getelementptr inbounds %struct.moxart_sg, %struct.moxart_sg* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @moxart_dma_set_params(%struct.moxart_chan* %43, i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %42, %34
  br label %52

52:                                               ; preds = %51, %25
  %53 = load %struct.moxart_chan*, %struct.moxart_chan** %3, align 8
  %54 = load %struct.moxart_sg*, %struct.moxart_sg** %6, align 8
  %55 = getelementptr inbounds %struct.moxart_sg, %struct.moxart_sg* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @moxart_set_transfer_params(%struct.moxart_chan* %53, i32 %56)
  %58 = load %struct.moxart_chan*, %struct.moxart_chan** %3, align 8
  %59 = call i32 @moxart_start_dma(%struct.moxart_chan* %58)
  ret void
}

declare dso_local i32 @moxart_dma_set_params(%struct.moxart_chan*, i32, i32) #1

declare dso_local i32 @moxart_set_transfer_params(%struct.moxart_chan*, i32) #1

declare dso_local i32 @moxart_start_dma(%struct.moxart_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
