; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_getbytes_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_getbytes_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl08x_dma_chan = type { %struct.pl08x_txd*, %struct.pl08x_phy_chan*, %struct.pl08x_driver_data* }
%struct.pl08x_txd = type { i64*, i64 }
%struct.pl08x_phy_chan = type { i32 }
%struct.pl08x_driver_data = type { i64 }

@PL080_LLI_LM_AHB2 = common dso_local global i64 0, align 8
@MAX_NUM_TSFR_LLIS = common dso_local global i64 0, align 8
@PL080_LLI_LLI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pl08x_dma_chan*)* @pl08x_getbytes_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pl08x_getbytes_chan(%struct.pl08x_dma_chan* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.pl08x_dma_chan*, align 8
  %4 = alloca %struct.pl08x_driver_data*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.pl08x_phy_chan*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.pl08x_txd*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.pl08x_dma_chan* %0, %struct.pl08x_dma_chan** %3, align 8
  %13 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %3, align 8
  %14 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %13, i32 0, i32 2
  %15 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %14, align 8
  store %struct.pl08x_driver_data* %15, %struct.pl08x_driver_data** %4, align 8
  %16 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %3, align 8
  %17 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %16, i32 0, i32 1
  %18 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %17, align 8
  store %struct.pl08x_phy_chan* %18, %struct.pl08x_phy_chan** %7, align 8
  %19 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %3, align 8
  %20 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %19, i32 0, i32 0
  %21 = load %struct.pl08x_txd*, %struct.pl08x_txd** %20, align 8
  store %struct.pl08x_txd* %21, %struct.pl08x_txd** %9, align 8
  %22 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %7, align 8
  %23 = icmp ne %struct.pl08x_phy_chan* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load %struct.pl08x_txd*, %struct.pl08x_txd** %9, align 8
  %26 = icmp ne %struct.pl08x_txd* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24, %1
  store i64 0, i64* %2, align 8
  br label %103

28:                                               ; preds = %24
  %29 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %7, align 8
  %30 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @readl(i32 %31)
  %33 = load i64, i64* @PL080_LLI_LM_AHB2, align 8
  %34 = xor i64 %33, -1
  %35 = and i64 %32, %34
  store i64 %35, i64* %12, align 8
  %36 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %7, align 8
  %37 = call i64 @get_bytes_in_phy_channel(%struct.pl08x_phy_chan* %36)
  store i64 %37, i64* %11, align 8
  %38 = load i64, i64* %12, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %28
  %41 = load i64, i64* %11, align 8
  store i64 %41, i64* %2, align 8
  br label %103

42:                                               ; preds = %28
  %43 = load %struct.pl08x_txd*, %struct.pl08x_txd** %9, align 8
  %44 = getelementptr inbounds %struct.pl08x_txd, %struct.pl08x_txd* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  store i64* %45, i64** %5, align 8
  %46 = load %struct.pl08x_txd*, %struct.pl08x_txd** %9, align 8
  %47 = getelementptr inbounds %struct.pl08x_txd, %struct.pl08x_txd* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %8, align 8
  %49 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %4, align 8
  %50 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MAX_NUM_TSFR_LLIS, align 8
  %53 = mul i64 %51, %52
  store i64 %53, i64* %10, align 8
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* %8, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %64, label %57

57:                                               ; preds = %42
  %58 = load i64, i64* %12, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* %10, align 8
  %61 = mul i64 8, %60
  %62 = add i64 %59, %61
  %63 = icmp uge i64 %58, %62
  br label %64

64:                                               ; preds = %57, %42
  %65 = phi i1 [ true, %42 ], [ %63, %57 ]
  %66 = zext i1 %65 to i32
  %67 = call i32 @BUG_ON(i32 %66)
  %68 = load i64, i64* %12, align 8
  %69 = load i64, i64* %8, align 8
  %70 = sub i64 %68, %69
  %71 = udiv i64 %70, 8
  %72 = load i64*, i64** %5, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 %71
  store i64* %73, i64** %5, align 8
  %74 = load i64*, i64** %5, align 8
  %75 = load i64, i64* %10, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  store i64* %76, i64** %6, align 8
  br label %77

77:                                               ; preds = %95, %64
  %78 = load i64*, i64** %5, align 8
  %79 = load i64*, i64** %6, align 8
  %80 = icmp ult i64* %78, %79
  br i1 %80, label %81, label %101

81:                                               ; preds = %77
  %82 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %7, align 8
  %83 = load i64*, i64** %5, align 8
  %84 = call i64 @get_bytes_in_lli(%struct.pl08x_phy_chan* %82, i64* %83)
  %85 = load i64, i64* %11, align 8
  %86 = add i64 %85, %84
  store i64 %86, i64* %11, align 8
  %87 = load i64*, i64** %5, align 8
  %88 = load i64, i64* @PL080_LLI_LLI, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %12, align 8
  %92 = icmp ule i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %81
  br label %101

94:                                               ; preds = %81
  br label %95

95:                                               ; preds = %94
  %96 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %4, align 8
  %97 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64*, i64** %5, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 %98
  store i64* %100, i64** %5, align 8
  br label %77

101:                                              ; preds = %93, %77
  %102 = load i64, i64* %11, align 8
  store i64 %102, i64* %2, align 8
  br label %103

103:                                              ; preds = %101, %40, %27
  %104 = load i64, i64* %2, align 8
  ret i64 %104
}

declare dso_local i64 @readl(i32) #1

declare dso_local i64 @get_bytes_in_phy_channel(%struct.pl08x_phy_chan*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @get_bytes_in_lli(%struct.pl08x_phy_chan*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
