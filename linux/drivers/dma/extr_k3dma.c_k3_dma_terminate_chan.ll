; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_k3dma.c_k3_dma_terminate_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_k3dma.c_k3_dma_terminate_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.k3_dma_phy = type { i32 }
%struct.k3_dma_dev = type { i64 }

@INT_TC1_RAW = common dso_local global i64 0, align 8
@INT_TC2_RAW = common dso_local global i64 0, align 8
@INT_ERR1_RAW = common dso_local global i64 0, align 8
@INT_ERR2_RAW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.k3_dma_phy*, %struct.k3_dma_dev*)* @k3_dma_terminate_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @k3_dma_terminate_chan(%struct.k3_dma_phy* %0, %struct.k3_dma_dev* %1) #0 {
  %3 = alloca %struct.k3_dma_phy*, align 8
  %4 = alloca %struct.k3_dma_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.k3_dma_phy* %0, %struct.k3_dma_phy** %3, align 8
  store %struct.k3_dma_dev* %1, %struct.k3_dma_dev** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.k3_dma_phy*, %struct.k3_dma_phy** %3, align 8
  %7 = call i32 @k3_dma_pause_dma(%struct.k3_dma_phy* %6, i32 0)
  %8 = load %struct.k3_dma_phy*, %struct.k3_dma_phy** %3, align 8
  %9 = getelementptr inbounds %struct.k3_dma_phy, %struct.k3_dma_phy* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = shl i32 1, %10
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %4, align 8
  %14 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @INT_TC1_RAW, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel_relaxed(i32 %12, i64 %17)
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %4, align 8
  %21 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @INT_TC2_RAW, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel_relaxed(i32 %19, i64 %24)
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %4, align 8
  %28 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @INT_ERR1_RAW, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel_relaxed(i32 %26, i64 %31)
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %4, align 8
  %35 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @INT_ERR2_RAW, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel_relaxed(i32 %33, i64 %38)
  ret void
}

declare dso_local i32 @k3_dma_pause_dma(%struct.k3_dma_phy*, i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
