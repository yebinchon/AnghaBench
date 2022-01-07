; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_start_next_txd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_start_next_txd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl08x_dma_chan = type { %struct.pl08x_txd*, i32, %struct.pl08x_phy_chan*, %struct.pl08x_driver_data* }
%struct.pl08x_txd = type { i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.pl08x_phy_chan = type { i64, i64, i64, i32 }
%struct.pl08x_driver_data = type { i64 }
%struct.virt_dma_desc = type { i32 }

@PL080_EN_CHAN = common dso_local global i64 0, align 8
@FTDMAC020_CH_CFG_BUSY = common dso_local global i32 0, align 4
@FTDMAC020_CH_CSR_EN = common dso_local global i32 0, align 4
@PL080_CONFIG_ACTIVE = common dso_local global i32 0, align 4
@PL080_CONFIG_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pl08x_dma_chan*)* @pl08x_start_next_txd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl08x_start_next_txd(%struct.pl08x_dma_chan* %0) #0 {
  %2 = alloca %struct.pl08x_dma_chan*, align 8
  %3 = alloca %struct.pl08x_driver_data*, align 8
  %4 = alloca %struct.pl08x_phy_chan*, align 8
  %5 = alloca %struct.virt_dma_desc*, align 8
  %6 = alloca %struct.pl08x_txd*, align 8
  %7 = alloca i32, align 4
  store %struct.pl08x_dma_chan* %0, %struct.pl08x_dma_chan** %2, align 8
  %8 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %2, align 8
  %9 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %8, i32 0, i32 3
  %10 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %9, align 8
  store %struct.pl08x_driver_data* %10, %struct.pl08x_driver_data** %3, align 8
  %11 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %2, align 8
  %12 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %11, i32 0, i32 2
  %13 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %12, align 8
  store %struct.pl08x_phy_chan* %13, %struct.pl08x_phy_chan** %4, align 8
  %14 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %2, align 8
  %15 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %14, i32 0, i32 1
  %16 = call %struct.virt_dma_desc* @vchan_next_desc(i32* %15)
  store %struct.virt_dma_desc* %16, %struct.virt_dma_desc** %5, align 8
  %17 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %5, align 8
  %18 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %17, i32 0, i32 0
  %19 = call %struct.pl08x_txd* @to_pl08x_txd(i32* %18)
  store %struct.pl08x_txd* %19, %struct.pl08x_txd** %6, align 8
  %20 = load %struct.pl08x_txd*, %struct.pl08x_txd** %6, align 8
  %21 = getelementptr inbounds %struct.pl08x_txd, %struct.pl08x_txd* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @list_del(i32* %22)
  %24 = load %struct.pl08x_txd*, %struct.pl08x_txd** %6, align 8
  %25 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %2, align 8
  %26 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %25, i32 0, i32 0
  store %struct.pl08x_txd* %24, %struct.pl08x_txd** %26, align 8
  br label %27

27:                                               ; preds = %31, %1
  %28 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %4, align 8
  %29 = call i64 @pl08x_phy_channel_busy(%struct.pl08x_phy_chan* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 (...) @cpu_relax()
  br label %27

33:                                               ; preds = %27
  %34 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %3, align 8
  %35 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %4, align 8
  %36 = load %struct.pl08x_txd*, %struct.pl08x_txd** %6, align 8
  %37 = getelementptr inbounds %struct.pl08x_txd, %struct.pl08x_txd* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load %struct.pl08x_txd*, %struct.pl08x_txd** %6, align 8
  %41 = getelementptr inbounds %struct.pl08x_txd, %struct.pl08x_txd* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @pl08x_write_lli(%struct.pl08x_driver_data* %34, %struct.pl08x_phy_chan* %35, i32* %39, i32 %42)
  br label %44

44:                                               ; preds = %57, %33
  %45 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %3, align 8
  %46 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PL080_EN_CHAN, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @readl(i64 %49)
  %51 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %4, align 8
  %52 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @BIT(i32 %53)
  %55 = and i32 %50, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %44
  %58 = call i32 (...) @cpu_relax()
  br label %44

59:                                               ; preds = %44
  %60 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %4, align 8
  %61 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %102

64:                                               ; preds = %59
  %65 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %4, align 8
  %66 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @readl(i64 %67)
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %74, %64
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @FTDMAC020_CH_CFG_BUSY, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %4, align 8
  %76 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @readl(i64 %77)
  store i32 %78, i32* %7, align 4
  br label %69

79:                                               ; preds = %69
  %80 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %4, align 8
  %81 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @readl(i64 %82)
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %89, %79
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @FTDMAC020_CH_CSR_EN, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %4, align 8
  %91 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @readl(i64 %92)
  store i32 %93, i32* %7, align 4
  br label %84

94:                                               ; preds = %84
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @FTDMAC020_CH_CSR_EN, align 4
  %97 = or i32 %95, %96
  %98 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %4, align 8
  %99 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @writel(i32 %97, i64 %100)
  br label %132

102:                                              ; preds = %59
  %103 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %4, align 8
  %104 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @readl(i64 %105)
  store i32 %106, i32* %7, align 4
  br label %107

107:                                              ; preds = %119, %102
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @PL080_CONFIG_ACTIVE, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %107
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @PL080_CONFIG_ENABLE, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br label %117

117:                                              ; preds = %112, %107
  %118 = phi i1 [ true, %107 ], [ %116, %112 ]
  br i1 %118, label %119, label %124

119:                                              ; preds = %117
  %120 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %4, align 8
  %121 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @readl(i64 %122)
  store i32 %123, i32* %7, align 4
  br label %107

124:                                              ; preds = %117
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @PL080_CONFIG_ENABLE, align 4
  %127 = or i32 %125, %126
  %128 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %4, align 8
  %129 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @writel(i32 %127, i64 %130)
  br label %132

132:                                              ; preds = %124, %94
  ret void
}

declare dso_local %struct.virt_dma_desc* @vchan_next_desc(i32*) #1

declare dso_local %struct.pl08x_txd* @to_pl08x_txd(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i64 @pl08x_phy_channel_busy(%struct.pl08x_phy_chan*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @pl08x_write_lli(%struct.pl08x_driver_data*, %struct.pl08x_phy_chan*, i32*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
