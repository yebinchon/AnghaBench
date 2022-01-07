; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.xgene_dma = type { i32, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Failed to get clk\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to enable clk %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"No usable DMA configuration\0A\00", align 1
@XGENE_DMA_MAX_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xgene_dma_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_dma_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.xgene_dma*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.xgene_dma* @devm_kzalloc(i32* %8, i32 24, i32 %9)
  store %struct.xgene_dma* %10, %struct.xgene_dma** %4, align 8
  %11 = load %struct.xgene_dma*, %struct.xgene_dma** %4, align 8
  %12 = icmp ne %struct.xgene_dma* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %149

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load %struct.xgene_dma*, %struct.xgene_dma** %4, align 8
  %20 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %19, i32 0, i32 2
  store i32* %18, i32** %20, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = load %struct.xgene_dma*, %struct.xgene_dma** %4, align 8
  %23 = call i32 @platform_set_drvdata(%struct.platform_device* %21, %struct.xgene_dma* %22)
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load %struct.xgene_dma*, %struct.xgene_dma** %4, align 8
  %26 = call i32 @xgene_dma_get_resources(%struct.platform_device* %24, %struct.xgene_dma* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %16
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %149

31:                                               ; preds = %16
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = call i32 @devm_clk_get(i32* %33, i32* null)
  %35 = load %struct.xgene_dma*, %struct.xgene_dma** %4, align 8
  %36 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.xgene_dma*, %struct.xgene_dma** %4, align 8
  %38 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @IS_ERR(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %31
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = call i32 @ACPI_COMPANION(i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %42
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = call i32 (i32*, i8*, ...) @dev_err(i32* %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.xgene_dma*, %struct.xgene_dma** %4, align 8
  %52 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @PTR_ERR(i32 %53)
  store i32 %54, i32* %2, align 4
  br label %149

55:                                               ; preds = %42, %31
  %56 = load %struct.xgene_dma*, %struct.xgene_dma** %4, align 8
  %57 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @IS_ERR(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %75, label %61

61:                                               ; preds = %55
  %62 = load %struct.xgene_dma*, %struct.xgene_dma** %4, align 8
  %63 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @clk_prepare_enable(i32 %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = load i32, i32* %5, align 4
  %72 = call i32 (i32*, i8*, ...) @dev_err(i32* %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %5, align 4
  store i32 %73, i32* %2, align 4
  br label %149

74:                                               ; preds = %61
  br label %75

75:                                               ; preds = %74, %55
  %76 = load %struct.xgene_dma*, %struct.xgene_dma** %4, align 8
  %77 = call i32 @xgene_dma_init_mem(%struct.xgene_dma* %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %136

81:                                               ; preds = %75
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = call i32 @DMA_BIT_MASK(i32 42)
  %85 = call i32 @dma_set_mask_and_coherent(i32* %83, i32 %84)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %81
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = call i32 (i32*, i8*, ...) @dev_err(i32* %90, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %135

92:                                               ; preds = %81
  %93 = load %struct.xgene_dma*, %struct.xgene_dma** %4, align 8
  %94 = call i32 @xgene_dma_init_channels(%struct.xgene_dma* %93)
  %95 = load %struct.xgene_dma*, %struct.xgene_dma** %4, align 8
  %96 = call i32 @xgene_dma_init_rings(%struct.xgene_dma* %95)
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %136

100:                                              ; preds = %92
  %101 = load %struct.xgene_dma*, %struct.xgene_dma** %4, align 8
  %102 = call i32 @xgene_dma_request_irqs(%struct.xgene_dma* %101)
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* %5, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %118

106:                                              ; preds = %100
  %107 = load %struct.xgene_dma*, %struct.xgene_dma** %4, align 8
  %108 = call i32 @xgene_dma_init_hw(%struct.xgene_dma* %107)
  %109 = load %struct.xgene_dma*, %struct.xgene_dma** %4, align 8
  %110 = call i32 @xgene_dma_init_async(%struct.xgene_dma* %109)
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* %5, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  br label %115

114:                                              ; preds = %106
  store i32 0, i32* %2, align 4
  br label %149

115:                                              ; preds = %113
  %116 = load %struct.xgene_dma*, %struct.xgene_dma** %4, align 8
  %117 = call i32 @xgene_dma_free_irqs(%struct.xgene_dma* %116)
  br label %118

118:                                              ; preds = %115, %105
  store i32 0, i32* %6, align 4
  br label %119

119:                                              ; preds = %131, %118
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @XGENE_DMA_MAX_CHANNEL, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %134

123:                                              ; preds = %119
  %124 = load %struct.xgene_dma*, %struct.xgene_dma** %4, align 8
  %125 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = call i32 @xgene_dma_delete_chan_rings(i32* %129)
  br label %131

131:                                              ; preds = %123
  %132 = load i32, i32* %6, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %6, align 4
  br label %119

134:                                              ; preds = %119
  br label %135

135:                                              ; preds = %134, %88
  br label %136

136:                                              ; preds = %135, %99, %80
  %137 = load %struct.xgene_dma*, %struct.xgene_dma** %4, align 8
  %138 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i64 @IS_ERR(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %136
  %143 = load %struct.xgene_dma*, %struct.xgene_dma** %4, align 8
  %144 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @clk_disable_unprepare(i32 %145)
  br label %147

147:                                              ; preds = %142, %136
  %148 = load i32, i32* %5, align 4
  store i32 %148, i32* %2, align 4
  br label %149

149:                                              ; preds = %147, %114, %68, %47, %29, %13
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local %struct.xgene_dma* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.xgene_dma*) #1

declare dso_local i32 @xgene_dma_get_resources(%struct.platform_device*, %struct.xgene_dma*) #1

declare dso_local i32 @devm_clk_get(i32*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @ACPI_COMPANION(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @xgene_dma_init_mem(%struct.xgene_dma*) #1

declare dso_local i32 @dma_set_mask_and_coherent(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @xgene_dma_init_channels(%struct.xgene_dma*) #1

declare dso_local i32 @xgene_dma_init_rings(%struct.xgene_dma*) #1

declare dso_local i32 @xgene_dma_request_irqs(%struct.xgene_dma*) #1

declare dso_local i32 @xgene_dma_init_hw(%struct.xgene_dma*) #1

declare dso_local i32 @xgene_dma_init_async(%struct.xgene_dma*) #1

declare dso_local i32 @xgene_dma_free_irqs(%struct.xgene_dma*) #1

declare dso_local i32 @xgene_dma_delete_chan_rings(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
