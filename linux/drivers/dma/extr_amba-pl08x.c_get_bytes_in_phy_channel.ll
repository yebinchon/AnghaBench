; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_get_bytes_in_phy_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_get_bytes_in_phy_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl08x_phy_chan = type { i64, i64, i64, i64 }

@FTDMAC020_CH_SIZE = common dso_local global i64 0, align 8
@FTDMAC020_CH_CSR_SRC_WIDTH_MSK = common dso_local global i32 0, align 4
@FTDMAC020_CH_CSR_SRC_WIDTH_SHIFT = common dso_local global i32 0, align 4
@PL080S_CH_CONTROL2 = common dso_local global i64 0, align 8
@PL080S_CONTROL_TRANSFER_SIZE_MASK = common dso_local global i32 0, align 4
@PL080_CONTROL_SWIDTH_MASK = common dso_local global i32 0, align 4
@PL080_CONTROL_SWIDTH_SHIFT = common dso_local global i32 0, align 4
@PL080_CONTROL_TRANSFER_SIZE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pl08x_phy_chan*)* @get_bytes_in_phy_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_bytes_in_phy_channel(%struct.pl08x_phy_chan* %0) #0 {
  %2 = alloca %struct.pl08x_phy_chan*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.pl08x_phy_chan* %0, %struct.pl08x_phy_chan** %2, align 8
  %5 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %2, align 8
  %6 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %1
  %10 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %2, align 8
  %11 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @FTDMAC020_CH_SIZE, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %2, align 8
  %17 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* @FTDMAC020_CH_CSR_SRC_WIDTH_MSK, align 4
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* @FTDMAC020_CH_CSR_SRC_WIDTH_SHIFT, align 4
  %24 = load i32, i32* %3, align 4
  %25 = ashr i32 %24, %23
  store i32 %25, i32* %3, align 4
  br label %66

26:                                               ; preds = %1
  %27 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %2, align 8
  %28 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %26
  %32 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %2, align 8
  %33 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PL080S_CH_CONTROL2, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @readl(i64 %36)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @PL080S_CONTROL_TRANSFER_SIZE_MASK, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %4, align 4
  %41 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %2, align 8
  %42 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @readl(i64 %43)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* @PL080_CONTROL_SWIDTH_MASK, align 4
  %46 = load i32, i32* %3, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* @PL080_CONTROL_SWIDTH_SHIFT, align 4
  %49 = load i32, i32* %3, align 4
  %50 = ashr i32 %49, %48
  store i32 %50, i32* %3, align 4
  br label %65

51:                                               ; preds = %26
  %52 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %2, align 8
  %53 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @readl(i64 %54)
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @PL080_CONTROL_TRANSFER_SIZE_MASK, align 4
  %58 = and i32 %56, %57
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* @PL080_CONTROL_SWIDTH_MASK, align 4
  %60 = load i32, i32* %3, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* @PL080_CONTROL_SWIDTH_SHIFT, align 4
  %63 = load i32, i32* %3, align 4
  %64 = ashr i32 %63, %62
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %51, %31
  br label %66

66:                                               ; preds = %65, %9
  %67 = load i32, i32* %3, align 4
  switch i32 %67, label %75 [
    i32 128, label %68
    i32 130, label %69
    i32 129, label %72
  ]

68:                                               ; preds = %66
  br label %75

69:                                               ; preds = %66
  %70 = load i32, i32* %4, align 4
  %71 = mul nsw i32 %70, 2
  store i32 %71, i32* %4, align 4
  br label %75

72:                                               ; preds = %66
  %73 = load i32, i32* %4, align 4
  %74 = mul nsw i32 %73, 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %66, %72, %69, %68
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
