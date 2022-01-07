; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pxa_dma.c_pxad_desc_chain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pxa_dma.c_pxad_desc_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virt_dma_desc = type { i32 }
%struct.pxad_desc_sw = type { i32, %struct.TYPE_2__**, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virt_dma_desc*, %struct.virt_dma_desc*)* @pxad_desc_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxad_desc_chain(%struct.virt_dma_desc* %0, %struct.virt_dma_desc* %1) #0 {
  %3 = alloca %struct.virt_dma_desc*, align 8
  %4 = alloca %struct.virt_dma_desc*, align 8
  %5 = alloca %struct.pxad_desc_sw*, align 8
  %6 = alloca %struct.pxad_desc_sw*, align 8
  %7 = alloca i32, align 4
  store %struct.virt_dma_desc* %0, %struct.virt_dma_desc** %3, align 8
  store %struct.virt_dma_desc* %1, %struct.virt_dma_desc** %4, align 8
  %8 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %3, align 8
  %9 = call %struct.pxad_desc_sw* @to_pxad_sw_desc(%struct.virt_dma_desc* %8)
  store %struct.pxad_desc_sw* %9, %struct.pxad_desc_sw** %5, align 8
  %10 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %4, align 8
  %11 = call %struct.pxad_desc_sw* @to_pxad_sw_desc(%struct.virt_dma_desc* %10)
  store %struct.pxad_desc_sw* %11, %struct.pxad_desc_sw** %6, align 8
  %12 = load %struct.pxad_desc_sw*, %struct.pxad_desc_sw** %6, align 8
  %13 = getelementptr inbounds %struct.pxad_desc_sw, %struct.pxad_desc_sw* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.pxad_desc_sw*, %struct.pxad_desc_sw** %5, align 8
  %17 = getelementptr inbounds %struct.pxad_desc_sw, %struct.pxad_desc_sw* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %17, align 8
  %19 = load %struct.pxad_desc_sw*, %struct.pxad_desc_sw** %5, align 8
  %20 = getelementptr inbounds %struct.pxad_desc_sw, %struct.pxad_desc_sw* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %18, i64 %23
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %15, i32* %26, align 4
  ret void
}

declare dso_local %struct.pxad_desc_sw* @to_pxad_sw_desc(%struct.virt_dma_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
