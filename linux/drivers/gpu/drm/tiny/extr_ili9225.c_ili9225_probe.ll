; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_ili9225.c_ili9225_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_ili9225.c_ili9225_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.device }
%struct.device = type { i32 }
%struct.mipi_dbi_dev = type { %struct.drm_device, %struct.mipi_dbi }
%struct.drm_device = type { i32 }
%struct.mipi_dbi = type { i32, %struct.gpio_desc* }
%struct.gpio_desc = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ili9225_driver = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to get gpio 'reset'\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rs\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Failed to get gpio 'rs'\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"rotation\00", align 1
@ili9225_dbi_command = common dso_local global i32 0, align 4
@ili9225_pipe_funcs = common dso_local global i32 0, align 4
@ili9225_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ili9225_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ili9225_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.mipi_dbi_dev*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.mipi_dbi*, align 8
  %8 = alloca %struct.gpio_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %11 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.mipi_dbi_dev* @kzalloc(i32 24, i32 %13)
  store %struct.mipi_dbi_dev* %14, %struct.mipi_dbi_dev** %5, align 8
  %15 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %5, align 8
  %16 = icmp ne %struct.mipi_dbi_dev* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %105

20:                                               ; preds = %1
  %21 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %5, align 8
  %22 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %21, i32 0, i32 1
  store %struct.mipi_dbi* %22, %struct.mipi_dbi** %7, align 8
  %23 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %5, align 8
  %24 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %23, i32 0, i32 0
  store %struct.drm_device* %24, %struct.drm_device** %6, align 8
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %27 = call i32 @devm_drm_dev_init(%struct.device* %25, %struct.drm_device* %26, i32* @ili9225_driver)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  %31 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %5, align 8
  %32 = call i32 @kfree(%struct.mipi_dbi_dev* %31)
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %2, align 4
  br label %105

34:                                               ; preds = %20
  %35 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %36 = call i32 @drm_mode_config_init(%struct.drm_device* %35)
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %39 = call i8* @devm_gpiod_get(%struct.device* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = bitcast i8* %39 to %struct.gpio_desc*
  %41 = load %struct.mipi_dbi*, %struct.mipi_dbi** %7, align 8
  %42 = getelementptr inbounds %struct.mipi_dbi, %struct.mipi_dbi* %41, i32 0, i32 1
  store %struct.gpio_desc* %40, %struct.gpio_desc** %42, align 8
  %43 = load %struct.mipi_dbi*, %struct.mipi_dbi** %7, align 8
  %44 = getelementptr inbounds %struct.mipi_dbi, %struct.mipi_dbi* %43, i32 0, i32 1
  %45 = load %struct.gpio_desc*, %struct.gpio_desc** %44, align 8
  %46 = call i64 @IS_ERR(%struct.gpio_desc* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %34
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = call i32 @DRM_DEV_ERROR(%struct.device* %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.mipi_dbi*, %struct.mipi_dbi** %7, align 8
  %52 = getelementptr inbounds %struct.mipi_dbi, %struct.mipi_dbi* %51, i32 0, i32 1
  %53 = load %struct.gpio_desc*, %struct.gpio_desc** %52, align 8
  %54 = call i32 @PTR_ERR(%struct.gpio_desc* %53)
  store i32 %54, i32* %2, align 4
  br label %105

55:                                               ; preds = %34
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %58 = call i8* @devm_gpiod_get(%struct.device* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = bitcast i8* %58 to %struct.gpio_desc*
  store %struct.gpio_desc* %59, %struct.gpio_desc** %8, align 8
  %60 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  %61 = call i64 @IS_ERR(%struct.gpio_desc* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %55
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = call i32 @DRM_DEV_ERROR(%struct.device* %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %66 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  %67 = call i32 @PTR_ERR(%struct.gpio_desc* %66)
  store i32 %67, i32* %2, align 4
  br label %105

68:                                               ; preds = %55
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = call i32 @device_property_read_u32(%struct.device* %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32* %9)
  %71 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %72 = load %struct.mipi_dbi*, %struct.mipi_dbi** %7, align 8
  %73 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  %74 = call i32 @mipi_dbi_spi_init(%struct.spi_device* %71, %struct.mipi_dbi* %72, %struct.gpio_desc* %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %2, align 4
  br label %105

79:                                               ; preds = %68
  %80 = load i32, i32* @ili9225_dbi_command, align 4
  %81 = load %struct.mipi_dbi*, %struct.mipi_dbi** %7, align 8
  %82 = getelementptr inbounds %struct.mipi_dbi, %struct.mipi_dbi* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %5, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @mipi_dbi_dev_init(%struct.mipi_dbi_dev* %83, i32* @ili9225_pipe_funcs, i32* @ili9225_mode, i32 %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %79
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %2, align 4
  br label %105

90:                                               ; preds = %79
  %91 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %92 = call i32 @drm_mode_config_reset(%struct.drm_device* %91)
  %93 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %94 = call i32 @drm_dev_register(%struct.drm_device* %93, i32 0)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %2, align 4
  br label %105

99:                                               ; preds = %90
  %100 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %101 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %102 = call i32 @spi_set_drvdata(%struct.spi_device* %100, %struct.drm_device* %101)
  %103 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %104 = call i32 @drm_fbdev_generic_setup(%struct.drm_device* %103, i32 0)
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %99, %97, %88, %77, %63, %48, %30, %17
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.mipi_dbi_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @devm_drm_dev_init(%struct.device*, %struct.drm_device*, i32*) #1

declare dso_local i32 @kfree(%struct.mipi_dbi_dev*) #1

declare dso_local i32 @drm_mode_config_init(%struct.drm_device*) #1

declare dso_local i8* @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @device_property_read_u32(%struct.device*, i8*, i32*) #1

declare dso_local i32 @mipi_dbi_spi_init(%struct.spi_device*, %struct.mipi_dbi*, %struct.gpio_desc*) #1

declare dso_local i32 @mipi_dbi_dev_init(%struct.mipi_dbi_dev*, i32*, i32*, i32) #1

declare dso_local i32 @drm_mode_config_reset(%struct.drm_device*) #1

declare dso_local i32 @drm_dev_register(%struct.drm_device*, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.drm_device*) #1

declare dso_local i32 @drm_fbdev_generic_setup(%struct.drm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
