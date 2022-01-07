; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi_ddc.c_mtk_hdmi_ddc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi_ddc.c_mtk_hdmi_ddc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.mtk_hdmi_ddc = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, %struct.mtk_hdmi_ddc*, i32*, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.device*, i32 }
%struct.resource = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ddc-i2c\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"get ddc_clk failed: %p ,\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"enable ddc clk failed!\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"mediatek-hdmi-ddc\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@I2C_CLASS_DDC = common dso_local global i32 0, align 4
@mtk_hdmi_ddc_algorithm = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"failed to add bus to i2c core\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"ddc->adap: %p\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"ddc->clk: %p\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"physical adr: %pa, end: %pa\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mtk_hdmi_ddc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_hdmi_ddc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.mtk_hdmi_ddc*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.mtk_hdmi_ddc* @devm_kzalloc(%struct.device* %10, i32 72, i32 %11)
  store %struct.mtk_hdmi_ddc* %12, %struct.mtk_hdmi_ddc** %5, align 8
  %13 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %5, align 8
  %14 = icmp ne %struct.mtk_hdmi_ddc* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %142

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call i32 @devm_clk_get(%struct.device* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %5, align 8
  %22 = getelementptr inbounds %struct.mtk_hdmi_ddc, %struct.mtk_hdmi_ddc* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %5, align 8
  %24 = getelementptr inbounds %struct.mtk_hdmi_ddc, %struct.mtk_hdmi_ddc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @IS_ERR(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %18
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %5, align 8
  %31 = getelementptr inbounds %struct.mtk_hdmi_ddc, %struct.mtk_hdmi_ddc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %5, align 8
  %35 = getelementptr inbounds %struct.mtk_hdmi_ddc, %struct.mtk_hdmi_ddc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @PTR_ERR(i32 %36)
  store i32 %37, i32* %2, align 4
  br label %142

38:                                               ; preds = %18
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = load i32, i32* @IORESOURCE_MEM, align 4
  %41 = call %struct.resource* @platform_get_resource(%struct.platform_device* %39, i32 %40, i32 0)
  store %struct.resource* %41, %struct.resource** %6, align 8
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load %struct.resource*, %struct.resource** %6, align 8
  %45 = call i32 @devm_ioremap_resource(%struct.device* %43, %struct.resource* %44)
  %46 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %5, align 8
  %47 = getelementptr inbounds %struct.mtk_hdmi_ddc, %struct.mtk_hdmi_ddc* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %5, align 8
  %49 = getelementptr inbounds %struct.mtk_hdmi_ddc, %struct.mtk_hdmi_ddc* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @IS_ERR(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %38
  %54 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %5, align 8
  %55 = getelementptr inbounds %struct.mtk_hdmi_ddc, %struct.mtk_hdmi_ddc* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @PTR_ERR(i32 %56)
  store i32 %57, i32* %2, align 4
  br label %142

58:                                               ; preds = %38
  %59 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %5, align 8
  %60 = getelementptr inbounds %struct.mtk_hdmi_ddc, %struct.mtk_hdmi_ddc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @clk_prepare_enable(i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load %struct.device*, %struct.device** %4, align 8
  %67 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %66, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %2, align 4
  br label %142

69:                                               ; preds = %58
  %70 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %5, align 8
  %71 = getelementptr inbounds %struct.mtk_hdmi_ddc, %struct.mtk_hdmi_ddc* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @strlcpy(i32 %73, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %75 = load i32, i32* @THIS_MODULE, align 4
  %76 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %5, align 8
  %77 = getelementptr inbounds %struct.mtk_hdmi_ddc, %struct.mtk_hdmi_ddc* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 5
  store i32 %75, i32* %78, align 4
  %79 = load i32, i32* @I2C_CLASS_DDC, align 4
  %80 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %5, align 8
  %81 = getelementptr inbounds %struct.mtk_hdmi_ddc, %struct.mtk_hdmi_ddc* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 4
  store i32 %79, i32* %82, align 8
  %83 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %5, align 8
  %84 = getelementptr inbounds %struct.mtk_hdmi_ddc, %struct.mtk_hdmi_ddc* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 3
  store i32* @mtk_hdmi_ddc_algorithm, i32** %85, align 8
  %86 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %5, align 8
  %87 = getelementptr inbounds %struct.mtk_hdmi_ddc, %struct.mtk_hdmi_ddc* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  store i32 3, i32* %88, align 8
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = getelementptr inbounds %struct.device, %struct.device* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %5, align 8
  %93 = getelementptr inbounds %struct.mtk_hdmi_ddc, %struct.mtk_hdmi_ddc* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  store i32 %91, i32* %95, align 8
  %96 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %5, align 8
  %97 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %5, align 8
  %98 = getelementptr inbounds %struct.mtk_hdmi_ddc, %struct.mtk_hdmi_ddc* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 2
  store %struct.mtk_hdmi_ddc* %96, %struct.mtk_hdmi_ddc** %99, align 8
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %5, align 8
  %103 = getelementptr inbounds %struct.mtk_hdmi_ddc, %struct.mtk_hdmi_ddc* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  store %struct.device* %101, %struct.device** %105, align 8
  %106 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %5, align 8
  %107 = getelementptr inbounds %struct.mtk_hdmi_ddc, %struct.mtk_hdmi_ddc* %106, i32 0, i32 1
  %108 = call i32 @i2c_add_adapter(%struct.TYPE_5__* %107)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %69
  %112 = load %struct.device*, %struct.device** %4, align 8
  %113 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %136

114:                                              ; preds = %69
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %5, align 8
  %117 = call i32 @platform_set_drvdata(%struct.platform_device* %115, %struct.mtk_hdmi_ddc* %116)
  %118 = load %struct.device*, %struct.device** %4, align 8
  %119 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %5, align 8
  %120 = getelementptr inbounds %struct.mtk_hdmi_ddc, %struct.mtk_hdmi_ddc* %119, i32 0, i32 1
  %121 = call i32 (%struct.device*, i8*, %struct.TYPE_5__*, ...) @dev_dbg(%struct.device* %118, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_5__* %120)
  %122 = load %struct.device*, %struct.device** %4, align 8
  %123 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %5, align 8
  %124 = getelementptr inbounds %struct.mtk_hdmi_ddc, %struct.mtk_hdmi_ddc* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  %127 = inttoptr i64 %126 to %struct.TYPE_5__*
  %128 = call i32 (%struct.device*, i8*, %struct.TYPE_5__*, ...) @dev_dbg(%struct.device* %122, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_5__* %127)
  %129 = load %struct.device*, %struct.device** %4, align 8
  %130 = load %struct.resource*, %struct.resource** %6, align 8
  %131 = getelementptr inbounds %struct.resource, %struct.resource* %130, i32 0, i32 1
  %132 = bitcast i32* %131 to %struct.TYPE_5__*
  %133 = load %struct.resource*, %struct.resource** %6, align 8
  %134 = getelementptr inbounds %struct.resource, %struct.resource* %133, i32 0, i32 0
  %135 = call i32 (%struct.device*, i8*, %struct.TYPE_5__*, ...) @dev_dbg(%struct.device* %129, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_5__* %132, i32* %134)
  store i32 0, i32* %2, align 4
  br label %142

136:                                              ; preds = %111
  %137 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %5, align 8
  %138 = getelementptr inbounds %struct.mtk_hdmi_ddc, %struct.mtk_hdmi_ddc* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @clk_disable_unprepare(i32 %139)
  %141 = load i32, i32* %7, align 4
  store i32 %141, i32* %2, align 4
  br label %142

142:                                              ; preds = %136, %114, %65, %53, %28, %15
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local %struct.mtk_hdmi_ddc* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_5__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mtk_hdmi_ddc*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, %struct.TYPE_5__*, ...) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
