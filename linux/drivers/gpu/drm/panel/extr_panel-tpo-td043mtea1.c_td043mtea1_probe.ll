; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-tpo-td043mtea1.c_td043mtea1_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-tpo-td043mtea1.c_td043mtea1_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.td043mtea1_panel = type { %struct.TYPE_7__, %struct.spi_device*, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32*, %struct.TYPE_8__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TPO_R02_MODE_800x480 = common dso_local global i32 0, align 4
@td043mtea1_def_gamma = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"vcc\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to get VCC regulator\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"failed to get reset GPIO\0A\00", align 1
@SPI_MODE_0 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"failed to setup SPI: %d\0A\00", align 1
@td043mtea1_attr_group = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"failed to create sysfs files\0A\00", align 1
@td043mtea1_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @td043mtea1_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @td043mtea1_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.td043mtea1_panel*, align 8
  %5 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 1
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.td043mtea1_panel* @devm_kzalloc(%struct.TYPE_8__* %7, i32 40, i32 %8)
  store %struct.td043mtea1_panel* %9, %struct.td043mtea1_panel** %4, align 8
  %10 = load %struct.td043mtea1_panel*, %struct.td043mtea1_panel** %4, align 8
  %11 = icmp eq %struct.td043mtea1_panel* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %122

15:                                               ; preds = %1
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = load %struct.td043mtea1_panel*, %struct.td043mtea1_panel** %4, align 8
  %18 = call i32 @spi_set_drvdata(%struct.spi_device* %16, %struct.td043mtea1_panel* %17)
  %19 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %20 = load %struct.td043mtea1_panel*, %struct.td043mtea1_panel** %4, align 8
  %21 = getelementptr inbounds %struct.td043mtea1_panel, %struct.td043mtea1_panel* %20, i32 0, i32 1
  store %struct.spi_device* %19, %struct.spi_device** %21, align 8
  %22 = load i32, i32* @TPO_R02_MODE_800x480, align 4
  %23 = load %struct.td043mtea1_panel*, %struct.td043mtea1_panel** %4, align 8
  %24 = getelementptr inbounds %struct.td043mtea1_panel, %struct.td043mtea1_panel* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 4
  %25 = load %struct.td043mtea1_panel*, %struct.td043mtea1_panel** %4, align 8
  %26 = getelementptr inbounds %struct.td043mtea1_panel, %struct.td043mtea1_panel* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @td043mtea1_def_gamma, align 4
  %29 = call i32 @memcpy(i32 %27, i32 %28, i32 4)
  %30 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %31 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %30, i32 0, i32 1
  %32 = call i32 @devm_regulator_get(%struct.TYPE_8__* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.td043mtea1_panel*, %struct.td043mtea1_panel** %4, align 8
  %34 = getelementptr inbounds %struct.td043mtea1_panel, %struct.td043mtea1_panel* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.td043mtea1_panel*, %struct.td043mtea1_panel** %4, align 8
  %36 = getelementptr inbounds %struct.td043mtea1_panel, %struct.td043mtea1_panel* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @IS_ERR(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %15
  %41 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %42 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %41, i32 0, i32 1
  %43 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.td043mtea1_panel*, %struct.td043mtea1_panel** %4, align 8
  %45 = getelementptr inbounds %struct.td043mtea1_panel, %struct.td043mtea1_panel* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @PTR_ERR(i32 %46)
  store i32 %47, i32* %2, align 4
  br label %122

48:                                               ; preds = %15
  %49 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %50 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %49, i32 0, i32 1
  %51 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %52 = call i32 @devm_gpiod_get(%struct.TYPE_8__* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load %struct.td043mtea1_panel*, %struct.td043mtea1_panel** %4, align 8
  %54 = getelementptr inbounds %struct.td043mtea1_panel, %struct.td043mtea1_panel* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.td043mtea1_panel*, %struct.td043mtea1_panel** %4, align 8
  %56 = getelementptr inbounds %struct.td043mtea1_panel, %struct.td043mtea1_panel* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @IS_ERR(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %48
  %61 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %62 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %61, i32 0, i32 1
  %63 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %64 = load %struct.td043mtea1_panel*, %struct.td043mtea1_panel** %4, align 8
  %65 = getelementptr inbounds %struct.td043mtea1_panel, %struct.td043mtea1_panel* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @PTR_ERR(i32 %66)
  store i32 %67, i32* %2, align 4
  br label %122

68:                                               ; preds = %48
  %69 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %70 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %69, i32 0, i32 0
  store i32 16, i32* %70, align 4
  %71 = load i32, i32* @SPI_MODE_0, align 4
  %72 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %73 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  %74 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %75 = call i32 @spi_setup(%struct.spi_device* %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %68
  %79 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %80 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %79, i32 0, i32 1
  %81 = load i32, i32* %5, align 4
  %82 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %80, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* %2, align 4
  br label %122

84:                                               ; preds = %68
  %85 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %86 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = call i32 @sysfs_create_group(i32* %87, i32* @td043mtea1_attr_group)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %93 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %92, i32 0, i32 1
  %94 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %93, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %95 = load i32, i32* %5, align 4
  store i32 %95, i32* %2, align 4
  br label %122

96:                                               ; preds = %84
  %97 = load %struct.td043mtea1_panel*, %struct.td043mtea1_panel** %4, align 8
  %98 = getelementptr inbounds %struct.td043mtea1_panel, %struct.td043mtea1_panel* %97, i32 0, i32 0
  %99 = call i32 @drm_panel_init(%struct.TYPE_7__* %98)
  %100 = load %struct.td043mtea1_panel*, %struct.td043mtea1_panel** %4, align 8
  %101 = getelementptr inbounds %struct.td043mtea1_panel, %struct.td043mtea1_panel* %100, i32 0, i32 1
  %102 = load %struct.spi_device*, %struct.spi_device** %101, align 8
  %103 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %102, i32 0, i32 1
  %104 = load %struct.td043mtea1_panel*, %struct.td043mtea1_panel** %4, align 8
  %105 = getelementptr inbounds %struct.td043mtea1_panel, %struct.td043mtea1_panel* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  store %struct.TYPE_8__* %103, %struct.TYPE_8__** %106, align 8
  %107 = load %struct.td043mtea1_panel*, %struct.td043mtea1_panel** %4, align 8
  %108 = getelementptr inbounds %struct.td043mtea1_panel, %struct.td043mtea1_panel* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  store i32* @td043mtea1_funcs, i32** %109, align 8
  %110 = load %struct.td043mtea1_panel*, %struct.td043mtea1_panel** %4, align 8
  %111 = getelementptr inbounds %struct.td043mtea1_panel, %struct.td043mtea1_panel* %110, i32 0, i32 0
  %112 = call i32 @drm_panel_add(%struct.TYPE_7__* %111)
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %5, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %96
  %116 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %117 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = call i32 @sysfs_remove_group(i32* %118, i32* @td043mtea1_attr_group)
  %120 = load i32, i32* %5, align 4
  store i32 %120, i32* %2, align 4
  br label %122

121:                                              ; preds = %96
  store i32 0, i32* %2, align 4
  br label %122

122:                                              ; preds = %121, %115, %91, %78, %60, %40, %12
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local %struct.td043mtea1_panel* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.td043mtea1_panel*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @devm_regulator_get(%struct.TYPE_8__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_gpiod_get(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @drm_panel_init(%struct.TYPE_7__*) #1

declare dso_local i32 @drm_panel_add(%struct.TYPE_7__*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
