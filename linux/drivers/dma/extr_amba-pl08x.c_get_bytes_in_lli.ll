; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_get_bytes_in_lli.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_get_bytes_in_lli.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl08x_phy_chan = type { i64, i64 }

@PL080_LLI_CCTL = common dso_local global i64 0, align 8
@FTDMAC020_LLI_TRANSFER_SIZE_MASK = common dso_local global i32 0, align 4
@FTDMAC020_LLI_SRC_WIDTH_MSK = common dso_local global i32 0, align 4
@FTDMAC020_LLI_SRC_WIDTH_SHIFT = common dso_local global i32 0, align 4
@PL080S_LLI_CCTL2 = common dso_local global i64 0, align 8
@PL080S_CONTROL_TRANSFER_SIZE_MASK = common dso_local global i32 0, align 4
@PL080_CONTROL_SWIDTH_MASK = common dso_local global i32 0, align 4
@PL080_CONTROL_SWIDTH_SHIFT = common dso_local global i32 0, align 4
@PL080_CONTROL_TRANSFER_SIZE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pl08x_phy_chan*, i32*)* @get_bytes_in_lli to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_bytes_in_lli(%struct.pl08x_phy_chan* %0, i32* %1) #0 {
  %3 = alloca %struct.pl08x_phy_chan*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pl08x_phy_chan* %0, %struct.pl08x_phy_chan** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %3, align 8
  %8 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = load i64, i64* @PL080_LLI_CCTL, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @FTDMAC020_LLI_TRANSFER_SIZE_MASK, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = load i64, i64* @PL080_LLI_CCTL, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @FTDMAC020_LLI_SRC_WIDTH_MSK, align 4
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @FTDMAC020_LLI_SRC_WIDTH_SHIFT, align 4
  %27 = load i32, i32* %5, align 4
  %28 = ashr i32 %27, %26
  store i32 %28, i32* %5, align 4
  br label %67

29:                                               ; preds = %2
  %30 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %3, align 8
  %31 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %29
  %35 = load i32*, i32** %4, align 8
  %36 = load i64, i64* @PL080S_LLI_CCTL2, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @PL080S_CONTROL_TRANSFER_SIZE_MASK, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %6, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = load i64, i64* @PL080_LLI_CCTL, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* @PL080_CONTROL_SWIDTH_MASK, align 4
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* @PL080_CONTROL_SWIDTH_SHIFT, align 4
  %50 = load i32, i32* %5, align 4
  %51 = ashr i32 %50, %49
  store i32 %51, i32* %5, align 4
  br label %66

52:                                               ; preds = %29
  %53 = load i32*, i32** %4, align 8
  %54 = load i64, i64* @PL080_LLI_CCTL, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @PL080_CONTROL_TRANSFER_SIZE_MASK, align 4
  %59 = and i32 %57, %58
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* @PL080_CONTROL_SWIDTH_MASK, align 4
  %61 = load i32, i32* %5, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* @PL080_CONTROL_SWIDTH_SHIFT, align 4
  %64 = load i32, i32* %5, align 4
  %65 = ashr i32 %64, %63
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %52, %34
  br label %67

67:                                               ; preds = %66, %11
  %68 = load i32, i32* %5, align 4
  switch i32 %68, label %76 [
    i32 128, label %69
    i32 130, label %70
    i32 129, label %73
  ]

69:                                               ; preds = %67
  br label %76

70:                                               ; preds = %67
  %71 = load i32, i32* %6, align 4
  %72 = mul nsw i32 %71, 2
  store i32 %72, i32* %6, align 4
  br label %76

73:                                               ; preds = %67
  %74 = load i32, i32* %6, align 4
  %75 = mul nsw i32 %74, 4
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %67, %73, %70, %69
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
