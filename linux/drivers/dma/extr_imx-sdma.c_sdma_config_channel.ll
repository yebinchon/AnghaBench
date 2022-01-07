; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_config_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_config_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.sdma_channel = type { i32, i64, i64, i64, i64, i64, i64*, i32, i64 }

@IMX_DMATYPE_ASRC_SP = common dso_local global i64 0, align 8
@IMX_DMATYPE_ASRC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @sdma_config_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_config_channel(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.sdma_channel*, align 8
  %4 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %5 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %6 = call %struct.sdma_channel* @to_sdma_chan(%struct.dma_chan* %5)
  store %struct.sdma_channel* %6, %struct.sdma_channel** %3, align 8
  %7 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %8 = call i32 @sdma_disable_channel(%struct.dma_chan* %7)
  %9 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %10 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %9, i32 0, i32 6
  %11 = load i64*, i64** %10, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  store i64 0, i64* %12, align 8
  %13 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %14 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %13, i32 0, i32 6
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %18 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %17, i32 0, i32 5
  store i64 0, i64* %18, align 8
  %19 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %20 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %22 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %30 [
    i32 129, label %24
    i32 128, label %27
  ]

24:                                               ; preds = %1
  %25 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %26 = call i32 @sdma_config_ownership(%struct.sdma_channel* %25, i32 0, i32 1, i32 1)
  br label %33

27:                                               ; preds = %1
  %28 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %29 = call i32 @sdma_config_ownership(%struct.sdma_channel* %28, i32 0, i32 1, i32 0)
  br label %33

30:                                               ; preds = %1
  %31 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %32 = call i32 @sdma_config_ownership(%struct.sdma_channel* %31, i32 1, i32 1, i32 0)
  br label %33

33:                                               ; preds = %30, %27, %24
  %34 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %35 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %36 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @sdma_get_pc(%struct.sdma_channel* %34, i32 %37)
  %39 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %40 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 128
  br i1 %42, label %43, label %90

43:                                               ; preds = %33
  %44 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %45 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 129
  br i1 %47, label %48, label %90

48:                                               ; preds = %43
  %49 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %50 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %49, i32 0, i32 8
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %48
  %54 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %55 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* @IMX_DMATYPE_ASRC_SP, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %67, label %60

60:                                               ; preds = %53
  %61 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %62 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* @IMX_DMATYPE_ASRC, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %60, %53
  %68 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %69 = call i32 @sdma_set_watermarklevel_for_p2p(%struct.sdma_channel* %68)
  br label %70

70:                                               ; preds = %67, %60
  br label %79

71:                                               ; preds = %48
  %72 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %73 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %76 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %75, i32 0, i32 6
  %77 = load i64*, i64** %76, align 8
  %78 = call i32 @__set_bit(i32 %74, i64* %77)
  br label %79

79:                                               ; preds = %71, %70
  %80 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %81 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %84 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %83, i32 0, i32 5
  store i64 %82, i64* %84, align 8
  %85 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %86 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %89 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %88, i32 0, i32 3
  store i64 %87, i64* %89, align 8
  br label %93

90:                                               ; preds = %43, %33
  %91 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %92 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %91, i32 0, i32 1
  store i64 0, i64* %92, align 8
  br label %93

93:                                               ; preds = %90, %79
  %94 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %95 = call i32 @sdma_load_context(%struct.sdma_channel* %94)
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local %struct.sdma_channel* @to_sdma_chan(%struct.dma_chan*) #1

declare dso_local i32 @sdma_disable_channel(%struct.dma_chan*) #1

declare dso_local i32 @sdma_config_ownership(%struct.sdma_channel*, i32, i32, i32) #1

declare dso_local i32 @sdma_get_pc(%struct.sdma_channel*, i32) #1

declare dso_local i32 @sdma_set_watermarklevel_for_p2p(%struct.sdma_channel*) #1

declare dso_local i32 @__set_bit(i32, i64*) #1

declare dso_local i32 @sdma_load_context(%struct.sdma_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
