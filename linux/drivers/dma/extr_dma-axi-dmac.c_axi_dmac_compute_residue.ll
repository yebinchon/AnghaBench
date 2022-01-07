; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_dma-axi-dmac.c_axi_dmac_compute_residue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_dma-axi-dmac.c_axi_dmac_compute_residue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axi_dmac_chan = type { i32 }
%struct.axi_dmac_desc = type { i32, i32, %struct.axi_dmac_sg*, %struct.TYPE_2__ }
%struct.axi_dmac_sg = type { i32 }
%struct.TYPE_2__ = type { %struct.dmaengine_result }
%struct.dmaengine_result = type { i32, i32 }

@DMA_TRANS_NOERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.axi_dmac_chan*, %struct.axi_dmac_desc*)* @axi_dmac_compute_residue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axi_dmac_compute_residue(%struct.axi_dmac_chan* %0, %struct.axi_dmac_desc* %1) #0 {
  %3 = alloca %struct.axi_dmac_chan*, align 8
  %4 = alloca %struct.axi_dmac_desc*, align 8
  %5 = alloca %struct.dmaengine_result*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.axi_dmac_sg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.axi_dmac_chan* %0, %struct.axi_dmac_chan** %3, align 8
  store %struct.axi_dmac_desc* %1, %struct.axi_dmac_desc** %4, align 8
  %10 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %4, align 8
  %11 = getelementptr inbounds %struct.axi_dmac_desc, %struct.axi_dmac_desc* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.dmaengine_result* %12, %struct.dmaengine_result** %5, align 8
  %13 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %4, align 8
  %14 = getelementptr inbounds %struct.axi_dmac_desc, %struct.axi_dmac_desc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @DMA_TRANS_NOERROR, align 4
  %18 = load %struct.dmaengine_result*, %struct.dmaengine_result** %5, align 8
  %19 = getelementptr inbounds %struct.dmaengine_result, %struct.dmaengine_result* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.dmaengine_result*, %struct.dmaengine_result** %5, align 8
  %21 = getelementptr inbounds %struct.dmaengine_result, %struct.dmaengine_result* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %48, %2
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %4, align 8
  %26 = getelementptr inbounds %struct.axi_dmac_desc, %struct.axi_dmac_desc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %23
  %30 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %4, align 8
  %31 = getelementptr inbounds %struct.axi_dmac_desc, %struct.axi_dmac_desc* %30, i32 0, i32 2
  %32 = load %struct.axi_dmac_sg*, %struct.axi_dmac_sg** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.axi_dmac_sg, %struct.axi_dmac_sg* %32, i64 %34
  store %struct.axi_dmac_sg* %35, %struct.axi_dmac_sg** %7, align 8
  %36 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %3, align 8
  %37 = load %struct.axi_dmac_sg*, %struct.axi_dmac_sg** %7, align 8
  %38 = call i32 @axi_dmac_total_sg_bytes(%struct.axi_dmac_chan* %36, %struct.axi_dmac_sg* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.axi_dmac_sg*, %struct.axi_dmac_sg** %7, align 8
  %41 = getelementptr inbounds %struct.axi_dmac_sg, %struct.axi_dmac_sg* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sub i32 %39, %42
  %44 = load %struct.dmaengine_result*, %struct.dmaengine_result** %5, align 8
  %45 = getelementptr inbounds %struct.dmaengine_result, %struct.dmaengine_result* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %29
  %49 = load i32, i32* %8, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %23

51:                                               ; preds = %23
  ret void
}

declare dso_local i32 @axi_dmac_total_sg_bytes(%struct.axi_dmac_chan*, %struct.axi_dmac_sg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
