; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw/extr_platform.c_dw_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw/extr_platform.c_dw_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device, i32 }
%struct.device = type { i32 }
%struct.dw_dma_chip_pdata = type { i32 (%struct.dw_dma_chip*)*, %struct.dw_dma_chip.0*, i64 }
%struct.dw_dma_chip = type opaque
%struct.dw_dma_chip.0 = type { i64, i32, i32, %struct.device*, i64, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"hclk\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dw_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.dw_dma_chip_pdata*, align 8
  %5 = alloca %struct.dw_dma_chip_pdata*, align 8
  %6 = alloca %struct.dw_dma_chip.0*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %7, align 8
  %11 = load %struct.device*, %struct.device** %7, align 8
  %12 = call %struct.dw_dma_chip_pdata* @device_get_match_data(%struct.device* %11)
  store %struct.dw_dma_chip_pdata* %12, %struct.dw_dma_chip_pdata** %4, align 8
  %13 = load %struct.dw_dma_chip_pdata*, %struct.dw_dma_chip_pdata** %4, align 8
  %14 = icmp ne %struct.dw_dma_chip_pdata* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %172

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load %struct.dw_dma_chip_pdata*, %struct.dw_dma_chip_pdata** %4, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.dw_dma_chip_pdata* @devm_kmemdup(%struct.device* %20, %struct.dw_dma_chip_pdata* %21, i32 24, i32 %22)
  store %struct.dw_dma_chip_pdata* %23, %struct.dw_dma_chip_pdata** %5, align 8
  %24 = load %struct.dw_dma_chip_pdata*, %struct.dw_dma_chip_pdata** %5, align 8
  %25 = icmp ne %struct.dw_dma_chip_pdata* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %18
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %172

29:                                               ; preds = %18
  %30 = load %struct.device*, %struct.device** %7, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.dw_dma_chip.0* @devm_kzalloc(%struct.device* %30, i32 40, i32 %31)
  store %struct.dw_dma_chip.0* %32, %struct.dw_dma_chip.0** %6, align 8
  %33 = load %struct.dw_dma_chip.0*, %struct.dw_dma_chip.0** %6, align 8
  %34 = icmp ne %struct.dw_dma_chip.0* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %172

38:                                               ; preds = %29
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = call i64 @platform_get_irq(%struct.platform_device* %39, i32 0)
  %41 = load %struct.dw_dma_chip.0*, %struct.dw_dma_chip.0** %6, align 8
  %42 = getelementptr inbounds %struct.dw_dma_chip.0, %struct.dw_dma_chip.0* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.dw_dma_chip.0*, %struct.dw_dma_chip.0** %6, align 8
  %44 = getelementptr inbounds %struct.dw_dma_chip.0, %struct.dw_dma_chip.0* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %38
  %48 = load %struct.dw_dma_chip.0*, %struct.dw_dma_chip.0** %6, align 8
  %49 = getelementptr inbounds %struct.dw_dma_chip.0, %struct.dw_dma_chip.0* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %2, align 4
  br label %172

52:                                               ; preds = %38
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %53, i32 0)
  %55 = load %struct.dw_dma_chip.0*, %struct.dw_dma_chip.0** %6, align 8
  %56 = getelementptr inbounds %struct.dw_dma_chip.0, %struct.dw_dma_chip.0* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 4
  %57 = load %struct.dw_dma_chip.0*, %struct.dw_dma_chip.0** %6, align 8
  %58 = getelementptr inbounds %struct.dw_dma_chip.0, %struct.dw_dma_chip.0* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @IS_ERR(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %52
  %63 = load %struct.dw_dma_chip.0*, %struct.dw_dma_chip.0** %6, align 8
  %64 = getelementptr inbounds %struct.dw_dma_chip.0, %struct.dw_dma_chip.0* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @PTR_ERR(i32 %65)
  store i32 %66, i32* %2, align 4
  br label %172

67:                                               ; preds = %52
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = call i32 @DMA_BIT_MASK(i32 32)
  %71 = call i32 @dma_coerce_mask_and_coherent(%struct.device* %69, i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %2, align 4
  br label %172

76:                                               ; preds = %67
  %77 = load %struct.dw_dma_chip_pdata*, %struct.dw_dma_chip_pdata** %5, align 8
  %78 = getelementptr inbounds %struct.dw_dma_chip_pdata, %struct.dw_dma_chip_pdata* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load %struct.device*, %struct.device** %7, align 8
  %83 = call i64 @dev_get_platdata(%struct.device* %82)
  %84 = load %struct.dw_dma_chip_pdata*, %struct.dw_dma_chip_pdata** %5, align 8
  %85 = getelementptr inbounds %struct.dw_dma_chip_pdata, %struct.dw_dma_chip_pdata* %84, i32 0, i32 2
  store i64 %83, i64* %85, align 8
  br label %86

86:                                               ; preds = %81, %76
  %87 = load %struct.dw_dma_chip_pdata*, %struct.dw_dma_chip_pdata** %5, align 8
  %88 = getelementptr inbounds %struct.dw_dma_chip_pdata, %struct.dw_dma_chip_pdata* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %86
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = call i64 @dw_dma_parse_dt(%struct.platform_device* %92)
  %94 = load %struct.dw_dma_chip_pdata*, %struct.dw_dma_chip_pdata** %5, align 8
  %95 = getelementptr inbounds %struct.dw_dma_chip_pdata, %struct.dw_dma_chip_pdata* %94, i32 0, i32 2
  store i64 %93, i64* %95, align 8
  br label %96

96:                                               ; preds = %91, %86
  %97 = load %struct.device*, %struct.device** %7, align 8
  %98 = load %struct.dw_dma_chip.0*, %struct.dw_dma_chip.0** %6, align 8
  %99 = getelementptr inbounds %struct.dw_dma_chip.0, %struct.dw_dma_chip.0* %98, i32 0, i32 3
  store %struct.device* %97, %struct.device** %99, align 8
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.dw_dma_chip.0*, %struct.dw_dma_chip.0** %6, align 8
  %104 = getelementptr inbounds %struct.dw_dma_chip.0, %struct.dw_dma_chip.0* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 8
  %105 = load %struct.dw_dma_chip_pdata*, %struct.dw_dma_chip_pdata** %5, align 8
  %106 = getelementptr inbounds %struct.dw_dma_chip_pdata, %struct.dw_dma_chip_pdata* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.dw_dma_chip.0*, %struct.dw_dma_chip.0** %6, align 8
  %109 = getelementptr inbounds %struct.dw_dma_chip.0, %struct.dw_dma_chip.0* %108, i32 0, i32 4
  store i64 %107, i64* %109, align 8
  %110 = load %struct.dw_dma_chip.0*, %struct.dw_dma_chip.0** %6, align 8
  %111 = load %struct.dw_dma_chip_pdata*, %struct.dw_dma_chip_pdata** %5, align 8
  %112 = getelementptr inbounds %struct.dw_dma_chip_pdata, %struct.dw_dma_chip_pdata* %111, i32 0, i32 1
  store %struct.dw_dma_chip.0* %110, %struct.dw_dma_chip.0** %112, align 8
  %113 = load %struct.dw_dma_chip.0*, %struct.dw_dma_chip.0** %6, align 8
  %114 = getelementptr inbounds %struct.dw_dma_chip.0, %struct.dw_dma_chip.0* %113, i32 0, i32 3
  %115 = load %struct.device*, %struct.device** %114, align 8
  %116 = call i32 @devm_clk_get(%struct.device* %115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %117 = load %struct.dw_dma_chip.0*, %struct.dw_dma_chip.0** %6, align 8
  %118 = getelementptr inbounds %struct.dw_dma_chip.0, %struct.dw_dma_chip.0* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 8
  %119 = load %struct.dw_dma_chip.0*, %struct.dw_dma_chip.0** %6, align 8
  %120 = getelementptr inbounds %struct.dw_dma_chip.0, %struct.dw_dma_chip.0* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i64 @IS_ERR(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %96
  %125 = load %struct.dw_dma_chip.0*, %struct.dw_dma_chip.0** %6, align 8
  %126 = getelementptr inbounds %struct.dw_dma_chip.0, %struct.dw_dma_chip.0* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @PTR_ERR(i32 %127)
  store i32 %128, i32* %2, align 4
  br label %172

129:                                              ; preds = %96
  %130 = load %struct.dw_dma_chip.0*, %struct.dw_dma_chip.0** %6, align 8
  %131 = getelementptr inbounds %struct.dw_dma_chip.0, %struct.dw_dma_chip.0* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @clk_prepare_enable(i32 %132)
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %8, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %129
  %137 = load i32, i32* %8, align 4
  store i32 %137, i32* %2, align 4
  br label %172

138:                                              ; preds = %129
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %139, i32 0, i32 0
  %141 = call i32 @pm_runtime_enable(%struct.device* %140)
  %142 = load %struct.dw_dma_chip_pdata*, %struct.dw_dma_chip_pdata** %5, align 8
  %143 = getelementptr inbounds %struct.dw_dma_chip_pdata, %struct.dw_dma_chip_pdata* %142, i32 0, i32 0
  %144 = load i32 (%struct.dw_dma_chip*)*, i32 (%struct.dw_dma_chip*)** %143, align 8
  %145 = load %struct.dw_dma_chip.0*, %struct.dw_dma_chip.0** %6, align 8
  %146 = bitcast %struct.dw_dma_chip.0* %145 to %struct.dw_dma_chip*
  %147 = call i32 %144(%struct.dw_dma_chip* %146)
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %8, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %138
  br label %163

151:                                              ; preds = %138
  %152 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %153 = load %struct.dw_dma_chip_pdata*, %struct.dw_dma_chip_pdata** %5, align 8
  %154 = call i32 @platform_set_drvdata(%struct.platform_device* %152, %struct.dw_dma_chip_pdata* %153)
  %155 = load %struct.dw_dma_chip.0*, %struct.dw_dma_chip.0** %6, align 8
  %156 = getelementptr inbounds %struct.dw_dma_chip.0, %struct.dw_dma_chip.0* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @dw_dma_of_controller_register(i32 %157)
  %159 = load %struct.dw_dma_chip.0*, %struct.dw_dma_chip.0** %6, align 8
  %160 = getelementptr inbounds %struct.dw_dma_chip.0, %struct.dw_dma_chip.0* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @dw_dma_acpi_controller_register(i32 %161)
  store i32 0, i32* %2, align 4
  br label %172

163:                                              ; preds = %150
  %164 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %165 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %164, i32 0, i32 0
  %166 = call i32 @pm_runtime_disable(%struct.device* %165)
  %167 = load %struct.dw_dma_chip.0*, %struct.dw_dma_chip.0** %6, align 8
  %168 = getelementptr inbounds %struct.dw_dma_chip.0, %struct.dw_dma_chip.0* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @clk_disable_unprepare(i32 %169)
  %171 = load i32, i32* %8, align 4
  store i32 %171, i32* %2, align 4
  br label %172

172:                                              ; preds = %163, %151, %136, %124, %74, %62, %47, %35, %26, %15
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local %struct.dw_dma_chip_pdata* @device_get_match_data(%struct.device*) #1

declare dso_local %struct.dw_dma_chip_pdata* @devm_kmemdup(%struct.device*, %struct.dw_dma_chip_pdata*, i32, i32) #1

declare dso_local %struct.dw_dma_chip.0* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dma_coerce_mask_and_coherent(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i64 @dev_get_platdata(%struct.device*) #1

declare dso_local i64 @dw_dma_parse_dt(%struct.platform_device*) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.dw_dma_chip_pdata*) #1

declare dso_local i32 @dw_dma_of_controller_register(i32) #1

declare dso_local i32 @dw_dma_acpi_controller_register(i32) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
