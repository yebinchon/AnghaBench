; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_zx_dma.c_zx_dma_terminate_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_zx_dma.c_zx_dma_terminate_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zx_dma_phy = type { i32, i64 }
%struct.zx_dma_dev = type { i64 }

@REG_ZX_CTRL = common dso_local global i64 0, align 8
@ZX_CH_ENABLE = common dso_local global i32 0, align 4
@ZX_FORCE_CLOSE = common dso_local global i32 0, align 4
@REG_ZX_TC_IRQ_RAW = common dso_local global i64 0, align 8
@REG_ZX_SRC_ERR_IRQ_RAW = common dso_local global i64 0, align 8
@REG_ZX_DST_ERR_IRQ_RAW = common dso_local global i64 0, align 8
@REG_ZX_CFG_ERR_IRQ_RAW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zx_dma_phy*, %struct.zx_dma_dev*)* @zx_dma_terminate_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zx_dma_terminate_chan(%struct.zx_dma_phy* %0, %struct.zx_dma_dev* %1) #0 {
  %3 = alloca %struct.zx_dma_phy*, align 8
  %4 = alloca %struct.zx_dma_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.zx_dma_phy* %0, %struct.zx_dma_phy** %3, align 8
  store %struct.zx_dma_dev* %1, %struct.zx_dma_dev** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.zx_dma_phy*, %struct.zx_dma_phy** %3, align 8
  %7 = getelementptr inbounds %struct.zx_dma_phy, %struct.zx_dma_phy* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @REG_ZX_CTRL, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl_relaxed(i64 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @ZX_CH_ENABLE, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @ZX_FORCE_CLOSE, align 4
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.zx_dma_phy*, %struct.zx_dma_phy** %3, align 8
  %21 = getelementptr inbounds %struct.zx_dma_phy, %struct.zx_dma_phy* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @REG_ZX_CTRL, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel_relaxed(i32 %19, i64 %24)
  %26 = load %struct.zx_dma_phy*, %struct.zx_dma_phy** %3, align 8
  %27 = getelementptr inbounds %struct.zx_dma_phy, %struct.zx_dma_phy* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = shl i32 1, %28
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %32 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @REG_ZX_TC_IRQ_RAW, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel_relaxed(i32 %30, i64 %35)
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %39 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @REG_ZX_SRC_ERR_IRQ_RAW, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel_relaxed(i32 %37, i64 %42)
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %46 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @REG_ZX_DST_ERR_IRQ_RAW, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel_relaxed(i32 %44, i64 %49)
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %53 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @REG_ZX_CFG_ERR_IRQ_RAW, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writel_relaxed(i32 %51, i64 %56)
  ret void
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
