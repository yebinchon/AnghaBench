; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_dma-axi-dmac.c_axi_dmac_total_sg_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_dma-axi-dmac.c_axi_dmac_total_sg_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axi_dmac_chan = type { i64 }
%struct.axi_dmac_sg = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.axi_dmac_chan*, %struct.axi_dmac_sg*)* @axi_dmac_total_sg_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axi_dmac_total_sg_bytes(%struct.axi_dmac_chan* %0, %struct.axi_dmac_sg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.axi_dmac_chan*, align 8
  %5 = alloca %struct.axi_dmac_sg*, align 8
  store %struct.axi_dmac_chan* %0, %struct.axi_dmac_chan** %4, align 8
  store %struct.axi_dmac_sg* %1, %struct.axi_dmac_sg** %5, align 8
  %6 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %4, align 8
  %7 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.axi_dmac_sg*, %struct.axi_dmac_sg** %5, align 8
  %12 = getelementptr inbounds %struct.axi_dmac_sg, %struct.axi_dmac_sg* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.axi_dmac_sg*, %struct.axi_dmac_sg** %5, align 8
  %15 = getelementptr inbounds %struct.axi_dmac_sg, %struct.axi_dmac_sg* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = mul i32 %13, %16
  store i32 %17, i32* %3, align 4
  br label %22

18:                                               ; preds = %2
  %19 = load %struct.axi_dmac_sg*, %struct.axi_dmac_sg** %5, align 8
  %20 = getelementptr inbounds %struct.axi_dmac_sg, %struct.axi_dmac_sg* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %18, %10
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
