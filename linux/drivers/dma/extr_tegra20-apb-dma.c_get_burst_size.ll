; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_tegra20-apb-dma.c_get_burst_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_tegra20-apb-dma.c_get_burst_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dma_channel = type { i32 }

@TEGRA_APBDMA_AHBSEQ_BURST_1 = common dso_local global i32 0, align 4
@TEGRA_APBDMA_AHBSEQ_BURST_4 = common dso_local global i32 0, align 4
@TEGRA_APBDMA_AHBSEQ_BURST_8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_dma_channel*, i32, i32, i32)* @get_burst_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_burst_size(%struct.tegra_dma_channel* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tegra_dma_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tegra_dma_channel* %0, %struct.tegra_dma_channel** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = mul i32 %12, %13
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = sdiv i32 %15, 4
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %9, align 4
  %21 = and i32 %20, 15
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @TEGRA_APBDMA_AHBSEQ_BURST_1, align 4
  store i32 %24, i32* %5, align 4
  br label %46

25:                                               ; preds = %19
  %26 = load i32, i32* %9, align 4
  %27 = ashr i32 %26, 4
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @TEGRA_APBDMA_AHBSEQ_BURST_4, align 4
  store i32 %31, i32* %5, align 4
  br label %46

32:                                               ; preds = %25
  %33 = load i32, i32* @TEGRA_APBDMA_AHBSEQ_BURST_8, align 4
  store i32 %33, i32* %5, align 4
  br label %46

34:                                               ; preds = %4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 4
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @TEGRA_APBDMA_AHBSEQ_BURST_1, align 4
  store i32 %38, i32* %5, align 4
  br label %46

39:                                               ; preds = %34
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %40, 8
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @TEGRA_APBDMA_AHBSEQ_BURST_4, align 4
  store i32 %43, i32* %5, align 4
  br label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @TEGRA_APBDMA_AHBSEQ_BURST_8, align 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %44, %42, %37, %32, %30, %23
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
