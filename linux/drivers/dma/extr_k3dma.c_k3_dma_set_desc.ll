; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_k3dma.c_k3_dma_set_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_k3dma.c_k3_dma_set_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.k3_dma_phy = type { i64 }
%struct.k3_desc_hw = type { i32, i32, i32, i32, i32 }

@CX_LLI = common dso_local global i64 0, align 8
@CX_CNT0 = common dso_local global i64 0, align 8
@CX_SRC = common dso_local global i64 0, align 8
@CX_DST = common dso_local global i64 0, align 8
@CX_CFG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.k3_dma_phy*, %struct.k3_desc_hw*)* @k3_dma_set_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @k3_dma_set_desc(%struct.k3_dma_phy* %0, %struct.k3_desc_hw* %1) #0 {
  %3 = alloca %struct.k3_dma_phy*, align 8
  %4 = alloca %struct.k3_desc_hw*, align 8
  store %struct.k3_dma_phy* %0, %struct.k3_dma_phy** %3, align 8
  store %struct.k3_desc_hw* %1, %struct.k3_desc_hw** %4, align 8
  %5 = load %struct.k3_desc_hw*, %struct.k3_desc_hw** %4, align 8
  %6 = getelementptr inbounds %struct.k3_desc_hw, %struct.k3_desc_hw* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.k3_dma_phy*, %struct.k3_dma_phy** %3, align 8
  %9 = getelementptr inbounds %struct.k3_dma_phy, %struct.k3_dma_phy* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CX_LLI, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @writel_relaxed(i32 %7, i64 %12)
  %14 = load %struct.k3_desc_hw*, %struct.k3_desc_hw** %4, align 8
  %15 = getelementptr inbounds %struct.k3_desc_hw, %struct.k3_desc_hw* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.k3_dma_phy*, %struct.k3_dma_phy** %3, align 8
  %18 = getelementptr inbounds %struct.k3_dma_phy, %struct.k3_dma_phy* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CX_CNT0, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel_relaxed(i32 %16, i64 %21)
  %23 = load %struct.k3_desc_hw*, %struct.k3_desc_hw** %4, align 8
  %24 = getelementptr inbounds %struct.k3_desc_hw, %struct.k3_desc_hw* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.k3_dma_phy*, %struct.k3_dma_phy** %3, align 8
  %27 = getelementptr inbounds %struct.k3_dma_phy, %struct.k3_dma_phy* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CX_SRC, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel_relaxed(i32 %25, i64 %30)
  %32 = load %struct.k3_desc_hw*, %struct.k3_desc_hw** %4, align 8
  %33 = getelementptr inbounds %struct.k3_desc_hw, %struct.k3_desc_hw* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.k3_dma_phy*, %struct.k3_dma_phy** %3, align 8
  %36 = getelementptr inbounds %struct.k3_dma_phy, %struct.k3_dma_phy* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CX_DST, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel_relaxed(i32 %34, i64 %39)
  %41 = load %struct.k3_desc_hw*, %struct.k3_desc_hw** %4, align 8
  %42 = getelementptr inbounds %struct.k3_desc_hw, %struct.k3_desc_hw* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.k3_dma_phy*, %struct.k3_dma_phy** %3, align 8
  %45 = getelementptr inbounds %struct.k3_dma_phy, %struct.k3_dma_phy* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @CX_CFG, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writel_relaxed(i32 %43, i64 %48)
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
