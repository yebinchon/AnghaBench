; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_st7586.c_st7586_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_st7586.c_st7586_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.spi_device = type { %struct.device }
%struct.device = type { i32 }
%struct.mipi_dbi_dev = type { %struct.drm_device, %struct.mipi_dbi }
%struct.drm_device = type { i32 }
%struct.mipi_dbi = type { i32, i32*, %struct.gpio_desc* }
%struct.gpio_desc = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@st7586_driver = common dso_local global i32 0, align 4
@st7586_mode = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to get gpio 'reset'\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Failed to get gpio 'a0'\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"rotation\00", align 1
@st7586_pipe_funcs = common dso_local global i32 0, align 4
@st7586_formats = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @st7586_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st7586_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.mipi_dbi_dev*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.mipi_dbi*, align 8
  %8 = alloca %struct.gpio_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %12 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %13 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %4, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.mipi_dbi_dev* @kzalloc(i32 32, i32 %14)
  store %struct.mipi_dbi_dev* %15, %struct.mipi_dbi_dev** %5, align 8
  %16 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %5, align 8
  %17 = icmp ne %struct.mipi_dbi_dev* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %117

21:                                               ; preds = %1
  %22 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %5, align 8
  %23 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %22, i32 0, i32 1
  store %struct.mipi_dbi* %23, %struct.mipi_dbi** %7, align 8
  %24 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %5, align 8
  %25 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %24, i32 0, i32 0
  store %struct.drm_device* %25, %struct.drm_device** %6, align 8
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %28 = call i32 @devm_drm_dev_init(%struct.device* %26, %struct.drm_device* %27, i32* @st7586_driver)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %21
  %32 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %5, align 8
  %33 = call i32 @kfree(%struct.mipi_dbi_dev* %32)
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %2, align 4
  br label %117

35:                                               ; preds = %21
  %36 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %37 = call i32 @drm_mode_config_init(%struct.drm_device* %36)
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @st7586_mode, i32 0, i32 0), align 4
  %39 = add nsw i32 %38, 2
  %40 = sdiv i32 %39, 3
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @st7586_mode, i32 0, i32 1), align 4
  %42 = mul nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %10, align 8
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %46 = call i8* @devm_gpiod_get(%struct.device* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = bitcast i8* %46 to %struct.gpio_desc*
  %48 = load %struct.mipi_dbi*, %struct.mipi_dbi** %7, align 8
  %49 = getelementptr inbounds %struct.mipi_dbi, %struct.mipi_dbi* %48, i32 0, i32 2
  store %struct.gpio_desc* %47, %struct.gpio_desc** %49, align 8
  %50 = load %struct.mipi_dbi*, %struct.mipi_dbi** %7, align 8
  %51 = getelementptr inbounds %struct.mipi_dbi, %struct.mipi_dbi* %50, i32 0, i32 2
  %52 = load %struct.gpio_desc*, %struct.gpio_desc** %51, align 8
  %53 = call i64 @IS_ERR(%struct.gpio_desc* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %35
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = call i32 @DRM_DEV_ERROR(%struct.device* %56, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.mipi_dbi*, %struct.mipi_dbi** %7, align 8
  %59 = getelementptr inbounds %struct.mipi_dbi, %struct.mipi_dbi* %58, i32 0, i32 2
  %60 = load %struct.gpio_desc*, %struct.gpio_desc** %59, align 8
  %61 = call i32 @PTR_ERR(%struct.gpio_desc* %60)
  store i32 %61, i32* %2, align 4
  br label %117

62:                                               ; preds = %35
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %65 = call i8* @devm_gpiod_get(%struct.device* %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = bitcast i8* %65 to %struct.gpio_desc*
  store %struct.gpio_desc* %66, %struct.gpio_desc** %8, align 8
  %67 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  %68 = call i64 @IS_ERR(%struct.gpio_desc* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %62
  %71 = load %struct.device*, %struct.device** %4, align 8
  %72 = call i32 @DRM_DEV_ERROR(%struct.device* %71, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %73 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  %74 = call i32 @PTR_ERR(%struct.gpio_desc* %73)
  store i32 %74, i32* %2, align 4
  br label %117

75:                                               ; preds = %62
  %76 = load %struct.device*, %struct.device** %4, align 8
  %77 = call i32 @device_property_read_u32(%struct.device* %76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32* %9)
  %78 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %79 = load %struct.mipi_dbi*, %struct.mipi_dbi** %7, align 8
  %80 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  %81 = call i32 @mipi_dbi_spi_init(%struct.spi_device* %78, %struct.mipi_dbi* %79, %struct.gpio_desc* %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %75
  %85 = load i32, i32* %11, align 4
  store i32 %85, i32* %2, align 4
  br label %117

86:                                               ; preds = %75
  %87 = load %struct.mipi_dbi*, %struct.mipi_dbi** %7, align 8
  %88 = getelementptr inbounds %struct.mipi_dbi, %struct.mipi_dbi* %87, i32 0, i32 1
  store i32* null, i32** %88, align 8
  %89 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %5, align 8
  %90 = load i32, i32* @st7586_formats, align 4
  %91 = load i32, i32* @st7586_formats, align 4
  %92 = call i32 @ARRAY_SIZE(i32 %91)
  %93 = load i32, i32* %9, align 4
  %94 = load i64, i64* %10, align 8
  %95 = call i32 @mipi_dbi_dev_init_with_formats(%struct.mipi_dbi_dev* %89, i32* @st7586_pipe_funcs, i32 %90, i32 %92, %struct.TYPE_3__* @st7586_mode, i32 %93, i64 %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %86
  %99 = load i32, i32* %11, align 4
  store i32 %99, i32* %2, align 4
  br label %117

100:                                              ; preds = %86
  %101 = load %struct.mipi_dbi*, %struct.mipi_dbi** %7, align 8
  %102 = getelementptr inbounds %struct.mipi_dbi, %struct.mipi_dbi* %101, i32 0, i32 0
  store i32 1, i32* %102, align 8
  %103 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %104 = call i32 @drm_mode_config_reset(%struct.drm_device* %103)
  %105 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %106 = call i32 @drm_dev_register(%struct.drm_device* %105, i32 0)
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %100
  %110 = load i32, i32* %11, align 4
  store i32 %110, i32* %2, align 4
  br label %117

111:                                              ; preds = %100
  %112 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %113 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %114 = call i32 @spi_set_drvdata(%struct.spi_device* %112, %struct.drm_device* %113)
  %115 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %116 = call i32 @drm_fbdev_generic_setup(%struct.drm_device* %115, i32 0)
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %111, %109, %98, %84, %70, %55, %31, %18
  %118 = load i32, i32* %2, align 4
  ret i32 %118
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

declare dso_local i32 @mipi_dbi_dev_init_with_formats(%struct.mipi_dbi_dev*, i32*, i32, i32, %struct.TYPE_3__*, i32, i64) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

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
