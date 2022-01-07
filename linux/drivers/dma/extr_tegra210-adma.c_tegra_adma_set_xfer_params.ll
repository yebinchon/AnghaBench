; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_tegra210-adma.c_tegra_adma_set_xfer_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_tegra210-adma.c_tegra_adma_set_xfer_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_adma_chan = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.tegra_adma_chip_data* }
%struct.tegra_adma_chip_data = type { i32, i64, i32 (i32)*, i32, i32, i32 }
%struct.tegra_adma_desc = type { i64, i32, %struct.tegra_adma_chan_regs }
%struct.tegra_adma_chan_regs = type { i32, i32, i32, i32, i8*, i8* }

@ADMA_CH_CONFIG_MAX_BUFS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ADMA_CH_CTRL_DIR_MEM2AHUB = common dso_local global i32 0, align 4
@ADMA_CH_CTRL_DIR_AHUB2MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"DMA direction is not supported\0A\00", align 1
@ADMA_CH_CTRL_MODE_CONTINUOUS = common dso_local global i32 0, align 4
@ADMA_CH_CTRL_FLOWCTRL_EN = common dso_local global i32 0, align 4
@ADMA_CH_TC_COUNT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_adma_chan*, %struct.tegra_adma_desc*, i8*, i32)* @tegra_adma_set_xfer_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_adma_set_xfer_params(%struct.tegra_adma_chan* %0, %struct.tegra_adma_desc* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tegra_adma_chan*, align 8
  %7 = alloca %struct.tegra_adma_desc*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tegra_adma_chan_regs*, align 8
  %11 = alloca %struct.tegra_adma_chip_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.tegra_adma_chan* %0, %struct.tegra_adma_chan** %6, align 8
  store %struct.tegra_adma_desc* %1, %struct.tegra_adma_desc** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.tegra_adma_desc*, %struct.tegra_adma_desc** %7, align 8
  %15 = getelementptr inbounds %struct.tegra_adma_desc, %struct.tegra_adma_desc* %14, i32 0, i32 2
  store %struct.tegra_adma_chan_regs* %15, %struct.tegra_adma_chan_regs** %10, align 8
  %16 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %6, align 8
  %17 = getelementptr inbounds %struct.tegra_adma_chan, %struct.tegra_adma_chan* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.tegra_adma_chip_data*, %struct.tegra_adma_chip_data** %19, align 8
  store %struct.tegra_adma_chip_data* %20, %struct.tegra_adma_chip_data** %11, align 8
  %21 = load %struct.tegra_adma_desc*, %struct.tegra_adma_desc** %7, align 8
  %22 = getelementptr inbounds %struct.tegra_adma_desc, %struct.tegra_adma_desc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ADMA_CH_CONFIG_MAX_BUFS, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %146

29:                                               ; preds = %4
  %30 = load i32, i32* %9, align 4
  switch i32 %30, label %89 [
    i32 128, label %31
    i32 129, label %60
  ]

31:                                               ; preds = %29
  %32 = load i32, i32* @ADMA_CH_CTRL_DIR_MEM2AHUB, align 4
  store i32 %32, i32* %13, align 4
  %33 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %6, align 8
  %34 = getelementptr inbounds %struct.tegra_adma_chan, %struct.tegra_adma_chan* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %12, align 4
  %37 = load %struct.tegra_adma_desc*, %struct.tegra_adma_desc** %7, align 8
  %38 = getelementptr inbounds %struct.tegra_adma_desc, %struct.tegra_adma_desc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %39, 1
  %41 = call i32 @ADMA_CH_CONFIG_SRC_BUF(i64 %40)
  %42 = load %struct.tegra_adma_chan_regs*, %struct.tegra_adma_chan_regs** %10, align 8
  %43 = getelementptr inbounds %struct.tegra_adma_chan_regs, %struct.tegra_adma_chan_regs* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %6, align 8
  %45 = getelementptr inbounds %struct.tegra_adma_chan, %struct.tegra_adma_chan* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.tegra_adma_chip_data*, %struct.tegra_adma_chip_data** %11, align 8
  %48 = getelementptr inbounds %struct.tegra_adma_chip_data, %struct.tegra_adma_chip_data* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.tegra_adma_chip_data*, %struct.tegra_adma_chip_data** %11, align 8
  %51 = getelementptr inbounds %struct.tegra_adma_chip_data, %struct.tegra_adma_chip_data* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = call i8* @ADMA_CH_REG_FIELD_VAL(i32 %46, i32 %49, i32 %52)
  %54 = ptrtoint i8* %53 to i32
  %55 = load %struct.tegra_adma_chan_regs*, %struct.tegra_adma_chan_regs** %10, align 8
  %56 = getelementptr inbounds %struct.tegra_adma_chan_regs, %struct.tegra_adma_chan_regs* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load %struct.tegra_adma_chan_regs*, %struct.tegra_adma_chan_regs** %10, align 8
  %59 = getelementptr inbounds %struct.tegra_adma_chan_regs, %struct.tegra_adma_chan_regs* %58, i32 0, i32 5
  store i8* %57, i8** %59, align 8
  br label %95

60:                                               ; preds = %29
  %61 = load i32, i32* @ADMA_CH_CTRL_DIR_AHUB2MEM, align 4
  store i32 %61, i32* %13, align 4
  %62 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %6, align 8
  %63 = getelementptr inbounds %struct.tegra_adma_chan, %struct.tegra_adma_chan* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %12, align 4
  %66 = load %struct.tegra_adma_desc*, %struct.tegra_adma_desc** %7, align 8
  %67 = getelementptr inbounds %struct.tegra_adma_desc, %struct.tegra_adma_desc* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %68, 1
  %70 = call i32 @ADMA_CH_CONFIG_TRG_BUF(i64 %69)
  %71 = load %struct.tegra_adma_chan_regs*, %struct.tegra_adma_chan_regs** %10, align 8
  %72 = getelementptr inbounds %struct.tegra_adma_chan_regs, %struct.tegra_adma_chan_regs* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %6, align 8
  %74 = getelementptr inbounds %struct.tegra_adma_chan, %struct.tegra_adma_chan* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.tegra_adma_chip_data*, %struct.tegra_adma_chip_data** %11, align 8
  %77 = getelementptr inbounds %struct.tegra_adma_chip_data, %struct.tegra_adma_chip_data* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.tegra_adma_chip_data*, %struct.tegra_adma_chip_data** %11, align 8
  %80 = getelementptr inbounds %struct.tegra_adma_chip_data, %struct.tegra_adma_chip_data* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = call i8* @ADMA_CH_REG_FIELD_VAL(i32 %75, i32 %78, i32 %81)
  %83 = ptrtoint i8* %82 to i32
  %84 = load %struct.tegra_adma_chan_regs*, %struct.tegra_adma_chan_regs** %10, align 8
  %85 = getelementptr inbounds %struct.tegra_adma_chan_regs, %struct.tegra_adma_chan_regs* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = load %struct.tegra_adma_chan_regs*, %struct.tegra_adma_chan_regs** %10, align 8
  %88 = getelementptr inbounds %struct.tegra_adma_chan_regs, %struct.tegra_adma_chan_regs* %87, i32 0, i32 4
  store i8* %86, i8** %88, align 8
  br label %95

89:                                               ; preds = %29
  %90 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %6, align 8
  %91 = call i32 @tdc2dev(%struct.tegra_adma_chan* %90)
  %92 = call i32 @dev_err(i32 %91, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %5, align 4
  br label %146

95:                                               ; preds = %60, %31
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @ADMA_CH_CTRL_DIR(i32 %96)
  %98 = load i32, i32* @ADMA_CH_CTRL_MODE_CONTINUOUS, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @ADMA_CH_CTRL_FLOWCTRL_EN, align 4
  %101 = or i32 %99, %100
  %102 = load %struct.tegra_adma_chan_regs*, %struct.tegra_adma_chan_regs** %10, align 8
  %103 = getelementptr inbounds %struct.tegra_adma_chan_regs, %struct.tegra_adma_chan_regs* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  %106 = load %struct.tegra_adma_chip_data*, %struct.tegra_adma_chip_data** %11, align 8
  %107 = getelementptr inbounds %struct.tegra_adma_chip_data, %struct.tegra_adma_chip_data* %106, i32 0, i32 2
  %108 = load i32 (i32)*, i32 (i32)** %107, align 8
  %109 = load i32, i32* %12, align 4
  %110 = call i32 %108(i32 %109)
  %111 = load %struct.tegra_adma_chan_regs*, %struct.tegra_adma_chan_regs** %10, align 8
  %112 = getelementptr inbounds %struct.tegra_adma_chan_regs, %struct.tegra_adma_chan_regs* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 4
  %115 = call i32 @ADMA_CH_CONFIG_WEIGHT_FOR_WRR(i32 1)
  %116 = load %struct.tegra_adma_chan_regs*, %struct.tegra_adma_chan_regs** %10, align 8
  %117 = getelementptr inbounds %struct.tegra_adma_chan_regs, %struct.tegra_adma_chan_regs* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 4
  %120 = load %struct.tegra_adma_chip_data*, %struct.tegra_adma_chip_data** %11, align 8
  %121 = getelementptr inbounds %struct.tegra_adma_chip_data, %struct.tegra_adma_chip_data* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %95
  %125 = call i32 @TEGRA186_ADMA_CH_CONFIG_OUTSTANDING_REQS(i32 8)
  %126 = load %struct.tegra_adma_chan_regs*, %struct.tegra_adma_chan_regs** %10, align 8
  %127 = getelementptr inbounds %struct.tegra_adma_chan_regs, %struct.tegra_adma_chan_regs* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %124, %95
  %131 = load %struct.tegra_adma_chip_data*, %struct.tegra_adma_chip_data** %11, align 8
  %132 = getelementptr inbounds %struct.tegra_adma_chip_data, %struct.tegra_adma_chip_data* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.tegra_adma_chan_regs*, %struct.tegra_adma_chan_regs** %10, align 8
  %135 = getelementptr inbounds %struct.tegra_adma_chan_regs, %struct.tegra_adma_chan_regs* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 8
  %136 = load %struct.tegra_adma_desc*, %struct.tegra_adma_desc** %7, align 8
  %137 = getelementptr inbounds %struct.tegra_adma_desc, %struct.tegra_adma_desc* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @ADMA_CH_TC_COUNT_MASK, align 4
  %140 = and i32 %138, %139
  %141 = load %struct.tegra_adma_chan_regs*, %struct.tegra_adma_chan_regs** %10, align 8
  %142 = getelementptr inbounds %struct.tegra_adma_chan_regs, %struct.tegra_adma_chan_regs* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  %143 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %6, align 8
  %144 = load i32, i32* %9, align 4
  %145 = call i32 @tegra_adma_request_alloc(%struct.tegra_adma_chan* %143, i32 %144)
  store i32 %145, i32* %5, align 4
  br label %146

146:                                              ; preds = %130, %89, %26
  %147 = load i32, i32* %5, align 4
  ret i32 %147
}

declare dso_local i32 @ADMA_CH_CONFIG_SRC_BUF(i64) #1

declare dso_local i8* @ADMA_CH_REG_FIELD_VAL(i32, i32, i32) #1

declare dso_local i32 @ADMA_CH_CONFIG_TRG_BUF(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @tdc2dev(%struct.tegra_adma_chan*) #1

declare dso_local i32 @ADMA_CH_CTRL_DIR(i32) #1

declare dso_local i32 @ADMA_CH_CONFIG_WEIGHT_FOR_WRR(i32) #1

declare dso_local i32 @TEGRA186_ADMA_CH_CONFIG_OUTSTANDING_REQS(i32) #1

declare dso_local i32 @tegra_adma_request_alloc(%struct.tegra_adma_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
