; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sony-acx565akm.c_acx565akm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sony-acx565akm.c_acx565akm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.acx565akm_panel = type { i64, %struct.TYPE_3__, %struct.spi_device*, i32, i32 }
%struct.TYPE_3__ = type { i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SPI_MODE_3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to get reset GPIO\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"panel detection failed\0A\00", align 1
@acx565akm_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @acx565akm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acx565akm_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.acx565akm_panel*, align 8
  %5 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.acx565akm_panel* @devm_kzalloc(i32* %7, i32 40, i32 %8)
  store %struct.acx565akm_panel* %9, %struct.acx565akm_panel** %4, align 8
  %10 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %4, align 8
  %11 = icmp ne %struct.acx565akm_panel* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %100

15:                                               ; preds = %1
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %4, align 8
  %18 = call i32 @spi_set_drvdata(%struct.spi_device* %16, %struct.acx565akm_panel* %17)
  %19 = load i32, i32* @SPI_MODE_3, align 4
  %20 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %21 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %23 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %4, align 8
  %24 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %23, i32 0, i32 2
  store %struct.spi_device* %22, %struct.spi_device** %24, align 8
  %25 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %4, align 8
  %26 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %25, i32 0, i32 4
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %29 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %28, i32 0, i32 0
  %30 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %31 = call i32 @devm_gpiod_get(i32* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %4, align 8
  %33 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %4, align 8
  %35 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @IS_ERR(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %15
  %40 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %41 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %40, i32 0, i32 0
  %42 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %4, align 8
  %44 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @PTR_ERR(i32 %45)
  store i32 %46, i32* %2, align 4
  br label %100

47:                                               ; preds = %15
  %48 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %4, align 8
  %49 = call i32 @acx565akm_detect(%struct.acx565akm_panel* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %54 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %53, i32 0, i32 0
  %55 = call i32 @dev_err(i32* %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %100

57:                                               ; preds = %47
  %58 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %4, align 8
  %59 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %4, align 8
  %64 = call i32 @acx565akm_backlight_init(%struct.acx565akm_panel* %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %2, align 4
  br label %100

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69, %57
  %71 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %4, align 8
  %72 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %71, i32 0, i32 1
  %73 = call i32 @drm_panel_init(%struct.TYPE_3__* %72)
  %74 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %4, align 8
  %75 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %74, i32 0, i32 2
  %76 = load %struct.spi_device*, %struct.spi_device** %75, align 8
  %77 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %76, i32 0, i32 0
  %78 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %4, align 8
  %79 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  store i32* %77, i32** %80, align 8
  %81 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %4, align 8
  %82 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  store i32* @acx565akm_funcs, i32** %83, align 8
  %84 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %4, align 8
  %85 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %84, i32 0, i32 1
  %86 = call i32 @drm_panel_add(%struct.TYPE_3__* %85)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %70
  %90 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %4, align 8
  %91 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %4, align 8
  %96 = call i32 @acx565akm_backlight_cleanup(%struct.acx565akm_panel* %95)
  br label %97

97:                                               ; preds = %94, %89
  %98 = load i32, i32* %5, align 4
  store i32 %98, i32* %2, align 4
  br label %100

99:                                               ; preds = %70
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %99, %97, %67, %52, %39, %12
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local %struct.acx565akm_panel* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.acx565akm_panel*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_gpiod_get(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @acx565akm_detect(%struct.acx565akm_panel*) #1

declare dso_local i32 @acx565akm_backlight_init(%struct.acx565akm_panel*) #1

declare dso_local i32 @drm_panel_init(%struct.TYPE_3__*) #1

declare dso_local i32 @drm_panel_add(%struct.TYPE_3__*) #1

declare dso_local i32 @acx565akm_backlight_cleanup(%struct.acx565akm_panel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
