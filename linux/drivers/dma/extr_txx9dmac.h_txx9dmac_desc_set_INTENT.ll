; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_txx9dmac.h_txx9dmac_desc_set_INTENT.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_txx9dmac.h_txx9dmac_desc_set_INTENT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.txx9dmac_dev = type { i32 }
%struct.txx9dmac_desc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@TXX9_DMA_CCR_INTENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.txx9dmac_dev*, %struct.txx9dmac_desc*)* @txx9dmac_desc_set_INTENT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @txx9dmac_desc_set_INTENT(%struct.txx9dmac_dev* %0, %struct.txx9dmac_desc* %1) #0 {
  %3 = alloca %struct.txx9dmac_dev*, align 8
  %4 = alloca %struct.txx9dmac_desc*, align 8
  store %struct.txx9dmac_dev* %0, %struct.txx9dmac_dev** %3, align 8
  store %struct.txx9dmac_desc* %1, %struct.txx9dmac_desc** %4, align 8
  %5 = load %struct.txx9dmac_dev*, %struct.txx9dmac_dev** %3, align 8
  %6 = call i64 @__is_dmac64(%struct.txx9dmac_dev* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load i32, i32* @TXX9_DMA_CCR_INTENT, align 4
  %10 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %4, align 8
  %11 = getelementptr inbounds %struct.txx9dmac_desc, %struct.txx9dmac_desc* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %9
  store i32 %14, i32* %12, align 4
  br label %22

15:                                               ; preds = %2
  %16 = load i32, i32* @TXX9_DMA_CCR_INTENT, align 4
  %17 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %4, align 8
  %18 = getelementptr inbounds %struct.txx9dmac_desc, %struct.txx9dmac_desc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %16
  store i32 %21, i32* %19, align 4
  br label %22

22:                                               ; preds = %15, %8
  ret void
}

declare dso_local i64 @__is_dmac64(%struct.txx9dmac_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
