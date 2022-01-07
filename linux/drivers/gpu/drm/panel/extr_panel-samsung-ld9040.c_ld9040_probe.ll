; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-ld9040.c_ld9040_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-ld9040.c_ld9040_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }
%struct.spi_device = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.ld9040 = type { %struct.TYPE_7__, i32, %struct.TYPE_6__*, i64, %struct.device* }
%struct.TYPE_7__ = type { i32*, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ld9040_gammas = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"vdd3\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"vci\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"cannot get reset-gpios %ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"spi setup failed.\0A\00", align 1
@ld9040_drm_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ld9040_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ld9040_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ld9040*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 1
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ld9040* @devm_kzalloc(%struct.device* %9, i32 48, i32 %10)
  store %struct.ld9040* %11, %struct.ld9040** %5, align 8
  %12 = load %struct.ld9040*, %struct.ld9040** %5, align 8
  %13 = icmp ne %struct.ld9040* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %107

17:                                               ; preds = %1
  %18 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %19 = load %struct.ld9040*, %struct.ld9040** %5, align 8
  %20 = call i32 @spi_set_drvdata(%struct.spi_device* %18, %struct.ld9040* %19)
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load %struct.ld9040*, %struct.ld9040** %5, align 8
  %23 = getelementptr inbounds %struct.ld9040, %struct.ld9040* %22, i32 0, i32 4
  store %struct.device* %21, %struct.device** %23, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ld9040_gammas, align 8
  %25 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %24)
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = load %struct.ld9040*, %struct.ld9040** %5, align 8
  %29 = getelementptr inbounds %struct.ld9040, %struct.ld9040* %28, i32 0, i32 3
  store i64 %27, i64* %29, align 8
  %30 = load %struct.ld9040*, %struct.ld9040** %5, align 8
  %31 = call i32 @ld9040_parse_dt(%struct.ld9040* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %17
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %107

36:                                               ; preds = %17
  %37 = load %struct.ld9040*, %struct.ld9040** %5, align 8
  %38 = getelementptr inbounds %struct.ld9040, %struct.ld9040* %37, i32 0, i32 2
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %41, align 8
  %42 = load %struct.ld9040*, %struct.ld9040** %5, align 8
  %43 = getelementptr inbounds %struct.ld9040, %struct.ld9040* %42, i32 0, i32 2
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %46, align 8
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = load %struct.ld9040*, %struct.ld9040** %5, align 8
  %49 = getelementptr inbounds %struct.ld9040, %struct.ld9040* %48, i32 0, i32 2
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %50)
  %52 = load %struct.ld9040*, %struct.ld9040** %5, align 8
  %53 = getelementptr inbounds %struct.ld9040, %struct.ld9040* %52, i32 0, i32 2
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = call i32 @devm_regulator_bulk_get(%struct.device* %47, i32 %51, %struct.TYPE_6__* %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %36
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %2, align 4
  br label %107

60:                                               ; preds = %36
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %63 = call i32 @devm_gpiod_get(%struct.device* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load %struct.ld9040*, %struct.ld9040** %5, align 8
  %65 = getelementptr inbounds %struct.ld9040, %struct.ld9040* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load %struct.ld9040*, %struct.ld9040** %5, align 8
  %67 = getelementptr inbounds %struct.ld9040, %struct.ld9040* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @IS_ERR(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %60
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = load %struct.ld9040*, %struct.ld9040** %5, align 8
  %74 = getelementptr inbounds %struct.ld9040, %struct.ld9040* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @PTR_ERR(i32 %75)
  %77 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %72, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  %78 = load %struct.ld9040*, %struct.ld9040** %5, align 8
  %79 = getelementptr inbounds %struct.ld9040, %struct.ld9040* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @PTR_ERR(i32 %80)
  store i32 %81, i32* %2, align 4
  br label %107

82:                                               ; preds = %60
  %83 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %84 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %83, i32 0, i32 0
  store i32 9, i32* %84, align 4
  %85 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %86 = call i32 @spi_setup(%struct.spi_device* %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = load %struct.device*, %struct.device** %4, align 8
  %91 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %90, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %2, align 4
  br label %107

93:                                               ; preds = %82
  %94 = load %struct.ld9040*, %struct.ld9040** %5, align 8
  %95 = getelementptr inbounds %struct.ld9040, %struct.ld9040* %94, i32 0, i32 0
  %96 = call i32 @drm_panel_init(%struct.TYPE_7__* %95)
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = load %struct.ld9040*, %struct.ld9040** %5, align 8
  %99 = getelementptr inbounds %struct.ld9040, %struct.ld9040* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  store %struct.device* %97, %struct.device** %100, align 8
  %101 = load %struct.ld9040*, %struct.ld9040** %5, align 8
  %102 = getelementptr inbounds %struct.ld9040, %struct.ld9040* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  store i32* @ld9040_drm_funcs, i32** %103, align 8
  %104 = load %struct.ld9040*, %struct.ld9040** %5, align 8
  %105 = getelementptr inbounds %struct.ld9040, %struct.ld9040* %104, i32 0, i32 0
  %106 = call i32 @drm_panel_add(%struct.TYPE_7__* %105)
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %93, %89, %71, %58, %34, %14
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local %struct.ld9040* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.ld9040*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local i32 @ld9040_parse_dt(%struct.ld9040*) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.device*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @drm_panel_init(%struct.TYPE_7__*) #1

declare dso_local i32 @drm_panel_add(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
