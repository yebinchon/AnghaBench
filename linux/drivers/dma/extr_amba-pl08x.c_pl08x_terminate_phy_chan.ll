; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_terminate_phy_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_terminate_phy_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl08x_driver_data = type { i64 }
%struct.pl08x_phy_chan = type { i64, i64, i64, i64 }

@FTDMAC020_CH_CFG_INT_ABT_MASK = common dso_local global i32 0, align 4
@FTDMAC020_CH_CFG_INT_ERR_MASK = common dso_local global i32 0, align 4
@FTDMAC020_CH_CFG_INT_TC_MASK = common dso_local global i32 0, align 4
@FTDMAC020_CH_CSR_EN = common dso_local global i32 0, align 4
@FTDMAC020_CH_CSR_ABT = common dso_local global i32 0, align 4
@PL080_ERR_CLEAR = common dso_local global i64 0, align 8
@PL080_TC_CLEAR = common dso_local global i64 0, align 8
@PL080_CONFIG_ENABLE = common dso_local global i32 0, align 4
@PL080_CONFIG_ERR_IRQ_MASK = common dso_local global i32 0, align 4
@PL080_CONFIG_TC_IRQ_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pl08x_driver_data*, %struct.pl08x_phy_chan*)* @pl08x_terminate_phy_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl08x_terminate_phy_chan(%struct.pl08x_driver_data* %0, %struct.pl08x_phy_chan* %1) #0 {
  %3 = alloca %struct.pl08x_driver_data*, align 8
  %4 = alloca %struct.pl08x_phy_chan*, align 8
  %5 = alloca i32, align 4
  store %struct.pl08x_driver_data* %0, %struct.pl08x_driver_data** %3, align 8
  store %struct.pl08x_phy_chan* %1, %struct.pl08x_phy_chan** %4, align 8
  %6 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %4, align 8
  %7 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %69

10:                                               ; preds = %2
  %11 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %4, align 8
  %12 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @readl(i64 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @FTDMAC020_CH_CFG_INT_ABT_MASK, align 4
  %16 = load i32, i32* @FTDMAC020_CH_CFG_INT_ERR_MASK, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @FTDMAC020_CH_CFG_INT_TC_MASK, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %4, align 8
  %24 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @writel(i32 %22, i64 %25)
  %27 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %4, align 8
  %28 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @readl(i64 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* @FTDMAC020_CH_CSR_EN, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* @FTDMAC020_CH_CSR_ABT, align 4
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %4, align 8
  %40 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @writel(i32 %38, i64 %41)
  %43 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %4, align 8
  %44 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @BIT(i64 %45)
  %47 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %4, align 8
  %48 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 16
  %51 = call i32 @BIT(i64 %50)
  %52 = or i32 %46, %51
  %53 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %3, align 8
  %54 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @PL080_ERR_CLEAR, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i32 %52, i64 %57)
  %59 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %4, align 8
  %60 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @BIT(i64 %61)
  %63 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %3, align 8
  %64 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @PL080_TC_CLEAR, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @writel(i32 %62, i64 %67)
  br label %107

69:                                               ; preds = %2
  %70 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %4, align 8
  %71 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @readl(i64 %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* @PL080_CONFIG_ENABLE, align 4
  %75 = load i32, i32* @PL080_CONFIG_ERR_IRQ_MASK, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @PL080_CONFIG_TC_IRQ_MASK, align 4
  %78 = or i32 %76, %77
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %5, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %4, align 8
  %84 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @writel(i32 %82, i64 %85)
  %87 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %4, align 8
  %88 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @BIT(i64 %89)
  %91 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %3, align 8
  %92 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @PL080_ERR_CLEAR, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @writel(i32 %90, i64 %95)
  %97 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %4, align 8
  %98 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @BIT(i64 %99)
  %101 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %3, align 8
  %102 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @PL080_TC_CLEAR, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @writel(i32 %100, i64 %105)
  br label %107

107:                                              ; preds = %69, %10
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @BIT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
