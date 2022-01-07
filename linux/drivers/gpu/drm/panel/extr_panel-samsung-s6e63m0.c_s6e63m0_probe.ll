; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e63m0.c_s6e63m0_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e63m0.c_s6e63m0_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.s6e63m0 = type { i32, i32, %struct.TYPE_5__, i32, %struct.TYPE_6__*, %struct.device* }
%struct.TYPE_5__ = type { i32*, %struct.device* }
%struct.TYPE_6__ = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"vdd3\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"vci\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to get regulators: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"cannot get reset-gpios %ld\0A\00", align 1
@SPI_MODE_3 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"spi setup failed.\0A\00", align 1
@s6e63m0_drm_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @s6e63m0_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s6e63m0_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.s6e63m0*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 2
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.s6e63m0* @devm_kzalloc(%struct.device* %9, i32 48, i32 %10)
  store %struct.s6e63m0* %11, %struct.s6e63m0** %5, align 8
  %12 = load %struct.s6e63m0*, %struct.s6e63m0** %5, align 8
  %13 = icmp ne %struct.s6e63m0* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %111

17:                                               ; preds = %1
  %18 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %19 = load %struct.s6e63m0*, %struct.s6e63m0** %5, align 8
  %20 = call i32 @spi_set_drvdata(%struct.spi_device* %18, %struct.s6e63m0* %19)
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load %struct.s6e63m0*, %struct.s6e63m0** %5, align 8
  %23 = getelementptr inbounds %struct.s6e63m0, %struct.s6e63m0* %22, i32 0, i32 5
  store %struct.device* %21, %struct.device** %23, align 8
  %24 = load %struct.s6e63m0*, %struct.s6e63m0** %5, align 8
  %25 = getelementptr inbounds %struct.s6e63m0, %struct.s6e63m0* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load %struct.s6e63m0*, %struct.s6e63m0** %5, align 8
  %27 = getelementptr inbounds %struct.s6e63m0, %struct.s6e63m0* %26, i32 0, i32 1
  store i32 0, i32* %27, align 4
  %28 = load %struct.s6e63m0*, %struct.s6e63m0** %5, align 8
  %29 = getelementptr inbounds %struct.s6e63m0, %struct.s6e63m0* %28, i32 0, i32 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %32, align 8
  %33 = load %struct.s6e63m0*, %struct.s6e63m0** %5, align 8
  %34 = getelementptr inbounds %struct.s6e63m0, %struct.s6e63m0* %33, i32 0, i32 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %37, align 8
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = load %struct.s6e63m0*, %struct.s6e63m0** %5, align 8
  %40 = getelementptr inbounds %struct.s6e63m0, %struct.s6e63m0* %39, i32 0, i32 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %41)
  %43 = load %struct.s6e63m0*, %struct.s6e63m0** %5, align 8
  %44 = getelementptr inbounds %struct.s6e63m0, %struct.s6e63m0* %43, i32 0, i32 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = call i32 @devm_regulator_bulk_get(%struct.device* %38, i32 %42, %struct.TYPE_6__* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %17
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %2, align 4
  br label %111

54:                                               ; preds = %17
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %57 = call i32 @devm_gpiod_get(%struct.device* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  %58 = load %struct.s6e63m0*, %struct.s6e63m0** %5, align 8
  %59 = getelementptr inbounds %struct.s6e63m0, %struct.s6e63m0* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 8
  %60 = load %struct.s6e63m0*, %struct.s6e63m0** %5, align 8
  %61 = getelementptr inbounds %struct.s6e63m0, %struct.s6e63m0* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @IS_ERR(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %54
  %66 = load %struct.device*, %struct.device** %4, align 8
  %67 = load %struct.s6e63m0*, %struct.s6e63m0** %5, align 8
  %68 = getelementptr inbounds %struct.s6e63m0, %struct.s6e63m0* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @PTR_ERR(i32 %69)
  %71 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %66, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %70)
  %72 = load %struct.s6e63m0*, %struct.s6e63m0** %5, align 8
  %73 = getelementptr inbounds %struct.s6e63m0, %struct.s6e63m0* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @PTR_ERR(i32 %74)
  store i32 %75, i32* %2, align 4
  br label %111

76:                                               ; preds = %54
  %77 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %78 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %77, i32 0, i32 0
  store i32 9, i32* %78, align 4
  %79 = load i32, i32* @SPI_MODE_3, align 4
  %80 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %81 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %83 = call i32 @spi_setup(%struct.spi_device* %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %76
  %87 = load %struct.device*, %struct.device** %4, align 8
  %88 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %87, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %2, align 4
  br label %111

90:                                               ; preds = %76
  %91 = load %struct.s6e63m0*, %struct.s6e63m0** %5, align 8
  %92 = getelementptr inbounds %struct.s6e63m0, %struct.s6e63m0* %91, i32 0, i32 2
  %93 = call i32 @drm_panel_init(%struct.TYPE_5__* %92)
  %94 = load %struct.device*, %struct.device** %4, align 8
  %95 = load %struct.s6e63m0*, %struct.s6e63m0** %5, align 8
  %96 = getelementptr inbounds %struct.s6e63m0, %struct.s6e63m0* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  store %struct.device* %94, %struct.device** %97, align 8
  %98 = load %struct.s6e63m0*, %struct.s6e63m0** %5, align 8
  %99 = getelementptr inbounds %struct.s6e63m0, %struct.s6e63m0* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  store i32* @s6e63m0_drm_funcs, i32** %100, align 8
  %101 = load %struct.s6e63m0*, %struct.s6e63m0** %5, align 8
  %102 = call i32 @s6e63m0_backlight_register(%struct.s6e63m0* %101)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %90
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %2, align 4
  br label %111

107:                                              ; preds = %90
  %108 = load %struct.s6e63m0*, %struct.s6e63m0** %5, align 8
  %109 = getelementptr inbounds %struct.s6e63m0, %struct.s6e63m0* %108, i32 0, i32 2
  %110 = call i32 @drm_panel_add(%struct.TYPE_5__* %109)
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %107, %105, %86, %65, %49, %14
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.s6e63m0* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.s6e63m0*) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.device*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*, ...) #1

declare dso_local i32 @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @drm_panel_init(%struct.TYPE_5__*) #1

declare dso_local i32 @s6e63m0_backlight_register(%struct.s6e63m0*) #1

declare dso_local i32 @drm_panel_add(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
