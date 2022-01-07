; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_hx8357d.c_hx8357d_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_hx8357d.c_hx8357d_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.device }
%struct.device = type { i32 }
%struct.mipi_dbi_dev = type { i32, %struct.gpio_desc*, %struct.drm_device }
%struct.gpio_desc = type { i32 }
%struct.drm_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hx8357d_driver = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"dc\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to get gpio 'dc'\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"rotation\00", align 1
@hx8357d_pipe_funcs = common dso_local global i32 0, align 4
@yx350hv15_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @hx8357d_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hx8357d_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.mipi_dbi_dev*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.gpio_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %11 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.mipi_dbi_dev* @kzalloc(i32 24, i32 %12)
  store %struct.mipi_dbi_dev* %13, %struct.mipi_dbi_dev** %5, align 8
  %14 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %5, align 8
  %15 = icmp ne %struct.mipi_dbi_dev* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %95

19:                                               ; preds = %1
  %20 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %5, align 8
  %21 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %20, i32 0, i32 2
  store %struct.drm_device* %21, %struct.drm_device** %6, align 8
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %24 = call i32 @devm_drm_dev_init(%struct.device* %22, %struct.drm_device* %23, i32* @hx8357d_driver)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %5, align 8
  %29 = call i32 @kfree(%struct.mipi_dbi_dev* %28)
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %2, align 4
  br label %95

31:                                               ; preds = %19
  %32 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %33 = call i32 @drm_mode_config_init(%struct.drm_device* %32)
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %36 = call %struct.gpio_desc* @devm_gpiod_get(%struct.device* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %35)
  store %struct.gpio_desc* %36, %struct.gpio_desc** %7, align 8
  %37 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %38 = call i64 @IS_ERR(%struct.gpio_desc* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %31
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = call i32 @DRM_DEV_ERROR(%struct.device* %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %44 = call i32 @PTR_ERR(%struct.gpio_desc* %43)
  store i32 %44, i32* %2, align 4
  br label %95

45:                                               ; preds = %31
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = call %struct.gpio_desc* @devm_of_find_backlight(%struct.device* %46)
  %48 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %5, align 8
  %49 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %48, i32 0, i32 1
  store %struct.gpio_desc* %47, %struct.gpio_desc** %49, align 8
  %50 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %5, align 8
  %51 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %50, i32 0, i32 1
  %52 = load %struct.gpio_desc*, %struct.gpio_desc** %51, align 8
  %53 = call i64 @IS_ERR(%struct.gpio_desc* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %45
  %56 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %5, align 8
  %57 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %56, i32 0, i32 1
  %58 = load %struct.gpio_desc*, %struct.gpio_desc** %57, align 8
  %59 = call i32 @PTR_ERR(%struct.gpio_desc* %58)
  store i32 %59, i32* %2, align 4
  br label %95

60:                                               ; preds = %45
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = call i32 @device_property_read_u32(%struct.device* %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %8)
  %63 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %64 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %5, align 8
  %65 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %64, i32 0, i32 0
  %66 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %67 = call i32 @mipi_dbi_spi_init(%struct.spi_device* %63, i32* %65, %struct.gpio_desc* %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %60
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %2, align 4
  br label %95

72:                                               ; preds = %60
  %73 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %5, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @mipi_dbi_dev_init(%struct.mipi_dbi_dev* %73, i32* @hx8357d_pipe_funcs, i32* @yx350hv15_mode, i32 %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %2, align 4
  br label %95

80:                                               ; preds = %72
  %81 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %82 = call i32 @drm_mode_config_reset(%struct.drm_device* %81)
  %83 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %84 = call i32 @drm_dev_register(%struct.drm_device* %83, i32 0)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %2, align 4
  br label %95

89:                                               ; preds = %80
  %90 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %91 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %92 = call i32 @spi_set_drvdata(%struct.spi_device* %90, %struct.drm_device* %91)
  %93 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %94 = call i32 @drm_fbdev_generic_setup(%struct.drm_device* %93, i32 0)
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %89, %87, %78, %70, %55, %40, %27, %16
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.mipi_dbi_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @devm_drm_dev_init(%struct.device*, %struct.drm_device*, i32*) #1

declare dso_local i32 @kfree(%struct.mipi_dbi_dev*) #1

declare dso_local i32 @drm_mode_config_init(%struct.drm_device*) #1

declare dso_local %struct.gpio_desc* @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local %struct.gpio_desc* @devm_of_find_backlight(%struct.device*) #1

declare dso_local i32 @device_property_read_u32(%struct.device*, i8*, i32*) #1

declare dso_local i32 @mipi_dbi_spi_init(%struct.spi_device*, i32*, %struct.gpio_desc*) #1

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
