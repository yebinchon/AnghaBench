; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_zx_dma.c_zx_dma_set_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_zx_dma.c_zx_dma_set_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zx_dma_phy = type { i64 }
%struct.zx_desc_hw = type { i32, i32, i32, i32, i32 }

@REG_ZX_SRC_ADDR = common dso_local global i64 0, align 8
@REG_ZX_DST_ADDR = common dso_local global i64 0, align 8
@REG_ZX_TX_X_COUNT = common dso_local global i64 0, align 8
@REG_ZX_TX_ZY_COUNT = common dso_local global i64 0, align 8
@REG_ZX_SRC_ZY_STEP = common dso_local global i64 0, align 8
@REG_ZX_DST_ZY_STEP = common dso_local global i64 0, align 8
@REG_ZX_LLI_ADDR = common dso_local global i64 0, align 8
@REG_ZX_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zx_dma_phy*, %struct.zx_desc_hw*)* @zx_dma_set_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zx_dma_set_desc(%struct.zx_dma_phy* %0, %struct.zx_desc_hw* %1) #0 {
  %3 = alloca %struct.zx_dma_phy*, align 8
  %4 = alloca %struct.zx_desc_hw*, align 8
  store %struct.zx_dma_phy* %0, %struct.zx_dma_phy** %3, align 8
  store %struct.zx_desc_hw* %1, %struct.zx_desc_hw** %4, align 8
  %5 = load %struct.zx_desc_hw*, %struct.zx_desc_hw** %4, align 8
  %6 = getelementptr inbounds %struct.zx_desc_hw, %struct.zx_desc_hw* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.zx_dma_phy*, %struct.zx_dma_phy** %3, align 8
  %9 = getelementptr inbounds %struct.zx_dma_phy, %struct.zx_dma_phy* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @REG_ZX_SRC_ADDR, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @writel_relaxed(i32 %7, i64 %12)
  %14 = load %struct.zx_desc_hw*, %struct.zx_desc_hw** %4, align 8
  %15 = getelementptr inbounds %struct.zx_desc_hw, %struct.zx_desc_hw* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.zx_dma_phy*, %struct.zx_dma_phy** %3, align 8
  %18 = getelementptr inbounds %struct.zx_dma_phy, %struct.zx_dma_phy* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @REG_ZX_DST_ADDR, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel_relaxed(i32 %16, i64 %21)
  %23 = load %struct.zx_desc_hw*, %struct.zx_desc_hw** %4, align 8
  %24 = getelementptr inbounds %struct.zx_desc_hw, %struct.zx_desc_hw* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.zx_dma_phy*, %struct.zx_dma_phy** %3, align 8
  %27 = getelementptr inbounds %struct.zx_dma_phy, %struct.zx_dma_phy* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @REG_ZX_TX_X_COUNT, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel_relaxed(i32 %25, i64 %30)
  %32 = load %struct.zx_dma_phy*, %struct.zx_dma_phy** %3, align 8
  %33 = getelementptr inbounds %struct.zx_dma_phy, %struct.zx_dma_phy* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @REG_ZX_TX_ZY_COUNT, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel_relaxed(i32 0, i64 %36)
  %38 = load %struct.zx_dma_phy*, %struct.zx_dma_phy** %3, align 8
  %39 = getelementptr inbounds %struct.zx_dma_phy, %struct.zx_dma_phy* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @REG_ZX_SRC_ZY_STEP, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel_relaxed(i32 0, i64 %42)
  %44 = load %struct.zx_dma_phy*, %struct.zx_dma_phy** %3, align 8
  %45 = getelementptr inbounds %struct.zx_dma_phy, %struct.zx_dma_phy* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @REG_ZX_DST_ZY_STEP, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writel_relaxed(i32 0, i64 %48)
  %50 = load %struct.zx_desc_hw*, %struct.zx_desc_hw** %4, align 8
  %51 = getelementptr inbounds %struct.zx_desc_hw, %struct.zx_desc_hw* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.zx_dma_phy*, %struct.zx_dma_phy** %3, align 8
  %54 = getelementptr inbounds %struct.zx_dma_phy, %struct.zx_dma_phy* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @REG_ZX_LLI_ADDR, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel_relaxed(i32 %52, i64 %57)
  %59 = load %struct.zx_desc_hw*, %struct.zx_desc_hw** %4, align 8
  %60 = getelementptr inbounds %struct.zx_desc_hw, %struct.zx_desc_hw* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.zx_dma_phy*, %struct.zx_dma_phy** %3, align 8
  %63 = getelementptr inbounds %struct.zx_dma_phy, %struct.zx_dma_phy* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @REG_ZX_CTRL, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel_relaxed(i32 %61, i64 %66)
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
