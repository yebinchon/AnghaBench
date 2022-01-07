; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-novatek-nt39016.c_nt39016_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-novatek-nt39016.c_nt39016_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.nt39016 = type { %struct.TYPE_3__, i32, i32, i32, i32, i32, %struct.device* }
%struct.TYPE_3__ = type { i32*, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"power\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to get power supply\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Failed to get reset GPIO\00", align 1
@SPI_MODE_3 = common dso_local global i32 0, align 4
@SPI_3WIRE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"Failed to setup SPI\00", align 1
@nt39016_regmap_config = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"Failed to init regmap\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"Failed to get backlight handle\00", align 1
@nt39016_funcs = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"Failed to register panel\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @nt39016_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nt39016_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.nt39016*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 2
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.nt39016* @devm_kzalloc(%struct.device* %9, i32 48, i32 %10)
  store %struct.nt39016* %11, %struct.nt39016** %5, align 8
  %12 = load %struct.nt39016*, %struct.nt39016** %5, align 8
  %13 = icmp ne %struct.nt39016* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %148

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load %struct.nt39016*, %struct.nt39016** %5, align 8
  %20 = getelementptr inbounds %struct.nt39016, %struct.nt39016* %19, i32 0, i32 6
  store %struct.device* %18, %struct.device** %20, align 8
  %21 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %22 = load %struct.nt39016*, %struct.nt39016** %5, align 8
  %23 = call i32 @spi_set_drvdata(%struct.spi_device* %21, %struct.nt39016* %22)
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call i32 @of_device_get_match_data(%struct.device* %24)
  %26 = load %struct.nt39016*, %struct.nt39016** %5, align 8
  %27 = getelementptr inbounds %struct.nt39016, %struct.nt39016* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 8
  %28 = load %struct.nt39016*, %struct.nt39016** %5, align 8
  %29 = getelementptr inbounds %struct.nt39016, %struct.nt39016* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %17
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %148

35:                                               ; preds = %17
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = call i32 @devm_regulator_get(%struct.device* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.nt39016*, %struct.nt39016** %5, align 8
  %39 = getelementptr inbounds %struct.nt39016, %struct.nt39016* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load %struct.nt39016*, %struct.nt39016** %5, align 8
  %41 = getelementptr inbounds %struct.nt39016, %struct.nt39016* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @IS_ERR(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %35
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = call i32 @dev_err(%struct.device* %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.nt39016*, %struct.nt39016** %5, align 8
  %49 = getelementptr inbounds %struct.nt39016, %struct.nt39016* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @PTR_ERR(i32 %50)
  store i32 %51, i32* %2, align 4
  br label %148

52:                                               ; preds = %35
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %55 = call i32 @devm_gpiod_get(%struct.device* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = load %struct.nt39016*, %struct.nt39016** %5, align 8
  %57 = getelementptr inbounds %struct.nt39016, %struct.nt39016* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load %struct.nt39016*, %struct.nt39016** %5, align 8
  %59 = getelementptr inbounds %struct.nt39016, %struct.nt39016* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @IS_ERR(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %52
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %66 = load %struct.nt39016*, %struct.nt39016** %5, align 8
  %67 = getelementptr inbounds %struct.nt39016, %struct.nt39016* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @PTR_ERR(i32 %68)
  store i32 %69, i32* %2, align 4
  br label %148

70:                                               ; preds = %52
  %71 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %72 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %71, i32 0, i32 0
  store i32 8, i32* %72, align 4
  %73 = load i32, i32* @SPI_MODE_3, align 4
  %74 = load i32, i32* @SPI_3WIRE, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %77 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %79 = call i32 @spi_setup(%struct.spi_device* %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %70
  %83 = load %struct.device*, %struct.device** %4, align 8
  %84 = call i32 @dev_err(%struct.device* %83, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %2, align 4
  br label %148

86:                                               ; preds = %70
  %87 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %88 = call i32 @devm_regmap_init_spi(%struct.spi_device* %87, i32* @nt39016_regmap_config)
  %89 = load %struct.nt39016*, %struct.nt39016** %5, align 8
  %90 = getelementptr inbounds %struct.nt39016, %struct.nt39016* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  %91 = load %struct.nt39016*, %struct.nt39016** %5, align 8
  %92 = getelementptr inbounds %struct.nt39016, %struct.nt39016* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @IS_ERR(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %86
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = call i32 @dev_err(%struct.device* %97, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %99 = load %struct.nt39016*, %struct.nt39016** %5, align 8
  %100 = getelementptr inbounds %struct.nt39016, %struct.nt39016* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @PTR_ERR(i32 %101)
  store i32 %102, i32* %2, align 4
  br label %148

103:                                              ; preds = %86
  %104 = load %struct.device*, %struct.device** %4, align 8
  %105 = call i32 @devm_of_find_backlight(%struct.device* %104)
  %106 = load %struct.nt39016*, %struct.nt39016** %5, align 8
  %107 = getelementptr inbounds %struct.nt39016, %struct.nt39016* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 8
  %108 = load %struct.nt39016*, %struct.nt39016** %5, align 8
  %109 = getelementptr inbounds %struct.nt39016, %struct.nt39016* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i64 @IS_ERR(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %127

113:                                              ; preds = %103
  %114 = load %struct.nt39016*, %struct.nt39016** %5, align 8
  %115 = getelementptr inbounds %struct.nt39016, %struct.nt39016* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @PTR_ERR(i32 %116)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @EPROBE_DEFER, align 4
  %120 = sub nsw i32 0, %119
  %121 = icmp ne i32 %118, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %113
  %123 = load %struct.device*, %struct.device** %4, align 8
  %124 = call i32 @dev_err(%struct.device* %123, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %125

125:                                              ; preds = %122, %113
  %126 = load i32, i32* %6, align 4
  store i32 %126, i32* %2, align 4
  br label %148

127:                                              ; preds = %103
  %128 = load %struct.nt39016*, %struct.nt39016** %5, align 8
  %129 = getelementptr inbounds %struct.nt39016, %struct.nt39016* %128, i32 0, i32 0
  %130 = call i32 @drm_panel_init(%struct.TYPE_3__* %129)
  %131 = load %struct.device*, %struct.device** %4, align 8
  %132 = load %struct.nt39016*, %struct.nt39016** %5, align 8
  %133 = getelementptr inbounds %struct.nt39016, %struct.nt39016* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  store %struct.device* %131, %struct.device** %134, align 8
  %135 = load %struct.nt39016*, %struct.nt39016** %5, align 8
  %136 = getelementptr inbounds %struct.nt39016, %struct.nt39016* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  store i32* @nt39016_funcs, i32** %137, align 8
  %138 = load %struct.nt39016*, %struct.nt39016** %5, align 8
  %139 = getelementptr inbounds %struct.nt39016, %struct.nt39016* %138, i32 0, i32 0
  %140 = call i32 @drm_panel_add(%struct.TYPE_3__* %139)
  store i32 %140, i32* %6, align 4
  %141 = load i32, i32* %6, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %127
  %144 = load %struct.device*, %struct.device** %4, align 8
  %145 = call i32 @dev_err(%struct.device* %144, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %146 = load i32, i32* %6, align 4
  store i32 %146, i32* %2, align 4
  br label %148

147:                                              ; preds = %127
  store i32 0, i32* %2, align 4
  br label %148

148:                                              ; preds = %147, %143, %125, %96, %82, %63, %45, %32, %14
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local %struct.nt39016* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.nt39016*) #1

declare dso_local i32 @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @devm_regmap_init_spi(%struct.spi_device*, i32*) #1

declare dso_local i32 @devm_of_find_backlight(%struct.device*) #1

declare dso_local i32 @drm_panel_init(%struct.TYPE_3__*) #1

declare dso_local i32 @drm_panel_add(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
