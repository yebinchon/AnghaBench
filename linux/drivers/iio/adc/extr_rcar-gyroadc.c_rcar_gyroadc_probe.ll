; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_rcar-gyroadc.c_rcar_gyroadc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_rcar-gyroadc.c_rcar_gyroadc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.rcar_gyroadc = type { i32, i32, i32, %struct.device* }
%struct.iio_dev = type { i32, i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.device* }
%struct.resource = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"fck\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to get IF clock (ret=%i)\0A\00", align 1
@DRIVER_NAME = common dso_local global i32 0, align 4
@rcar_gyroadc_iio_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Could not prepare or enable the IF clock.\0A\00", align 1
@RCAR_GYROADC_RUNTIME_PM_DELAY_MS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Couldn't register IIO device.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rcar_gyroadc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_gyroadc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rcar_gyroadc*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %11, i32 24)
  store %struct.iio_dev* %12, %struct.iio_dev** %6, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %14 = icmp ne %struct.iio_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %160

18:                                               ; preds = %1
  %19 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %20 = call %struct.rcar_gyroadc* @iio_priv(%struct.iio_dev* %19)
  store %struct.rcar_gyroadc* %20, %struct.rcar_gyroadc** %5, align 8
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load %struct.rcar_gyroadc*, %struct.rcar_gyroadc** %5, align 8
  %23 = getelementptr inbounds %struct.rcar_gyroadc, %struct.rcar_gyroadc* %22, i32 0, i32 3
  store %struct.device* %21, %struct.device** %23, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load i32, i32* @IORESOURCE_MEM, align 4
  %26 = call %struct.resource* @platform_get_resource(%struct.platform_device* %24, i32 %25, i32 0)
  store %struct.resource* %26, %struct.resource** %7, align 8
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = load %struct.resource*, %struct.resource** %7, align 8
  %29 = call i32 @devm_ioremap_resource(%struct.device* %27, %struct.resource* %28)
  %30 = load %struct.rcar_gyroadc*, %struct.rcar_gyroadc** %5, align 8
  %31 = getelementptr inbounds %struct.rcar_gyroadc, %struct.rcar_gyroadc* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.rcar_gyroadc*, %struct.rcar_gyroadc** %5, align 8
  %33 = getelementptr inbounds %struct.rcar_gyroadc, %struct.rcar_gyroadc* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @IS_ERR(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %18
  %38 = load %struct.rcar_gyroadc*, %struct.rcar_gyroadc** %5, align 8
  %39 = getelementptr inbounds %struct.rcar_gyroadc, %struct.rcar_gyroadc* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @PTR_ERR(i32 %40)
  store i32 %41, i32* %2, align 4
  br label %160

42:                                               ; preds = %18
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = call i32 @devm_clk_get(%struct.device* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.rcar_gyroadc*, %struct.rcar_gyroadc** %5, align 8
  %46 = getelementptr inbounds %struct.rcar_gyroadc, %struct.rcar_gyroadc* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.rcar_gyroadc*, %struct.rcar_gyroadc** %5, align 8
  %48 = getelementptr inbounds %struct.rcar_gyroadc, %struct.rcar_gyroadc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @IS_ERR(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %42
  %53 = load %struct.rcar_gyroadc*, %struct.rcar_gyroadc** %5, align 8
  %54 = getelementptr inbounds %struct.rcar_gyroadc, %struct.rcar_gyroadc* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @PTR_ERR(i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @EPROBE_DEFER, align 4
  %59 = sub nsw i32 0, %58
  %60 = icmp ne i32 %57, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %52
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %62, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %61, %52
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %2, align 4
  br label %160

67:                                               ; preds = %42
  %68 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %69 = call i32 @rcar_gyroadc_parse_subdevs(%struct.iio_dev* %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %2, align 4
  br label %160

74:                                               ; preds = %67
  %75 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %76 = call i32 @rcar_gyroadc_init_supplies(%struct.iio_dev* %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %2, align 4
  br label %160

81:                                               ; preds = %74
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = call i64 @of_device_get_match_data(%struct.device* %83)
  %85 = trunc i64 %84 to i32
  %86 = load %struct.rcar_gyroadc*, %struct.rcar_gyroadc** %5, align 8
  %87 = getelementptr inbounds %struct.rcar_gyroadc, %struct.rcar_gyroadc* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %90 = call i32 @platform_set_drvdata(%struct.platform_device* %88, %struct.iio_dev* %89)
  %91 = load i32, i32* @DRIVER_NAME, align 4
  %92 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %93 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 8
  %94 = load %struct.device*, %struct.device** %4, align 8
  %95 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %96 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  store %struct.device* %94, %struct.device** %97, align 8
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.device, %struct.device* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %103 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  store i32 %101, i32* %104, align 8
  %105 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %106 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %105, i32 0, i32 1
  store i32* @rcar_gyroadc_iio_info, i32** %106, align 8
  %107 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %108 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %109 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load %struct.rcar_gyroadc*, %struct.rcar_gyroadc** %5, align 8
  %111 = getelementptr inbounds %struct.rcar_gyroadc, %struct.rcar_gyroadc* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @clk_prepare_enable(i32 %112)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %81
  %117 = load %struct.device*, %struct.device** %4, align 8
  %118 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %117, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %156

119:                                              ; preds = %81
  %120 = load %struct.device*, %struct.device** %4, align 8
  %121 = load i32, i32* @RCAR_GYROADC_RUNTIME_PM_DELAY_MS, align 4
  %122 = call i32 @pm_runtime_set_autosuspend_delay(%struct.device* %120, i32 %121)
  %123 = load %struct.device*, %struct.device** %4, align 8
  %124 = call i32 @pm_runtime_use_autosuspend(%struct.device* %123)
  %125 = load %struct.device*, %struct.device** %4, align 8
  %126 = call i32 @pm_runtime_enable(%struct.device* %125)
  %127 = load %struct.device*, %struct.device** %4, align 8
  %128 = call i32 @pm_runtime_get_sync(%struct.device* %127)
  %129 = load %struct.rcar_gyroadc*, %struct.rcar_gyroadc** %5, align 8
  %130 = call i32 @rcar_gyroadc_hw_init(%struct.rcar_gyroadc* %129)
  %131 = load %struct.rcar_gyroadc*, %struct.rcar_gyroadc** %5, align 8
  %132 = call i32 @rcar_gyroadc_hw_start(%struct.rcar_gyroadc* %131)
  %133 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %134 = call i32 @iio_device_register(%struct.iio_dev* %133)
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %119
  %138 = load %struct.device*, %struct.device** %4, align 8
  %139 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %138, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %143

140:                                              ; preds = %119
  %141 = load %struct.device*, %struct.device** %4, align 8
  %142 = call i32 @pm_runtime_put_sync(%struct.device* %141)
  store i32 0, i32* %2, align 4
  br label %160

143:                                              ; preds = %137
  %144 = load %struct.rcar_gyroadc*, %struct.rcar_gyroadc** %5, align 8
  %145 = call i32 @rcar_gyroadc_hw_stop(%struct.rcar_gyroadc* %144)
  %146 = load %struct.device*, %struct.device** %4, align 8
  %147 = call i32 @pm_runtime_put_sync(%struct.device* %146)
  %148 = load %struct.device*, %struct.device** %4, align 8
  %149 = call i32 @pm_runtime_disable(%struct.device* %148)
  %150 = load %struct.device*, %struct.device** %4, align 8
  %151 = call i32 @pm_runtime_set_suspended(%struct.device* %150)
  %152 = load %struct.rcar_gyroadc*, %struct.rcar_gyroadc** %5, align 8
  %153 = getelementptr inbounds %struct.rcar_gyroadc, %struct.rcar_gyroadc* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @clk_disable_unprepare(i32 %154)
  br label %156

156:                                              ; preds = %143, %116
  %157 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %158 = call i32 @rcar_gyroadc_deinit_supplies(%struct.iio_dev* %157)
  %159 = load i32, i32* %8, align 4
  store i32 %159, i32* %2, align 4
  br label %160

160:                                              ; preds = %156, %140, %79, %72, %65, %37, %15
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local %struct.rcar_gyroadc* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @rcar_gyroadc_parse_subdevs(%struct.iio_dev*) #1

declare dso_local i32 @rcar_gyroadc_init_supplies(%struct.iio_dev*) #1

declare dso_local i64 @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.iio_dev*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @rcar_gyroadc_hw_init(%struct.rcar_gyroadc*) #1

declare dso_local i32 @rcar_gyroadc_hw_start(%struct.rcar_gyroadc*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @rcar_gyroadc_hw_stop(%struct.rcar_gyroadc*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_suspended(%struct.device*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @rcar_gyroadc_deinit_supplies(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
