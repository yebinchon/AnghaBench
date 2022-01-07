; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_s3c24xx-dma.c_s3c24xx_dma_desc_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_s3c24xx-dma.c_s3c24xx_dma_desc_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virt_dma_desc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.s3c24xx_txd = type { i32 }
%struct.s3c24xx_dma_chan = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virt_dma_desc*)* @s3c24xx_dma_desc_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c24xx_dma_desc_free(%struct.virt_dma_desc* %0) #0 {
  %2 = alloca %struct.virt_dma_desc*, align 8
  %3 = alloca %struct.s3c24xx_txd*, align 8
  %4 = alloca %struct.s3c24xx_dma_chan*, align 8
  store %struct.virt_dma_desc* %0, %struct.virt_dma_desc** %2, align 8
  %5 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %2, align 8
  %6 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %5, i32 0, i32 0
  %7 = call %struct.s3c24xx_txd* @to_s3c24xx_txd(%struct.TYPE_3__* %6)
  store %struct.s3c24xx_txd* %7, %struct.s3c24xx_txd** %3, align 8
  %8 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %2, align 8
  %9 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.s3c24xx_dma_chan* @to_s3c24xx_dma_chan(i32 %11)
  store %struct.s3c24xx_dma_chan* %12, %struct.s3c24xx_dma_chan** %4, align 8
  %13 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %4, align 8
  %14 = getelementptr inbounds %struct.s3c24xx_dma_chan, %struct.s3c24xx_dma_chan* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %2, align 8
  %19 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %18, i32 0, i32 0
  %20 = call i32 @dma_descriptor_unmap(%struct.TYPE_3__* %19)
  br label %21

21:                                               ; preds = %17, %1
  %22 = load %struct.s3c24xx_txd*, %struct.s3c24xx_txd** %3, align 8
  %23 = call i32 @s3c24xx_dma_free_txd(%struct.s3c24xx_txd* %22)
  ret void
}

declare dso_local %struct.s3c24xx_txd* @to_s3c24xx_txd(%struct.TYPE_3__*) #1

declare dso_local %struct.s3c24xx_dma_chan* @to_s3c24xx_dma_chan(i32) #1

declare dso_local i32 @dma_descriptor_unmap(%struct.TYPE_3__*) #1

declare dso_local i32 @s3c24xx_dma_free_txd(%struct.s3c24xx_txd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
