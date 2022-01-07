; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_k3dma.c_k3_dma_get_curr_cnt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_k3dma.c_k3_dma_get_curr_cnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.k3_dma_dev = type { i64 }
%struct.k3_dma_phy = type { i32 }

@CX_CUR_CNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.k3_dma_dev*, %struct.k3_dma_phy*)* @k3_dma_get_curr_cnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @k3_dma_get_curr_cnt(%struct.k3_dma_dev* %0, %struct.k3_dma_phy* %1) #0 {
  %3 = alloca %struct.k3_dma_dev*, align 8
  %4 = alloca %struct.k3_dma_phy*, align 8
  %5 = alloca i32, align 4
  store %struct.k3_dma_dev* %0, %struct.k3_dma_dev** %3, align 8
  store %struct.k3_dma_phy* %1, %struct.k3_dma_phy** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %3, align 8
  %7 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @CX_CUR_CNT, align 8
  %10 = add nsw i64 %8, %9
  %11 = load %struct.k3_dma_phy*, %struct.k3_dma_phy** %4, align 8
  %12 = getelementptr inbounds %struct.k3_dma_phy, %struct.k3_dma_phy* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = mul nsw i32 %13, 16
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %10, %15
  %17 = call i32 @readl_relaxed(i64 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 65535
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  ret i32 %20
}

declare dso_local i32 @readl_relaxed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
