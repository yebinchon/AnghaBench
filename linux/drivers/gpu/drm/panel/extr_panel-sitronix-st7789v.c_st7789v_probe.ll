; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sitronix-st7789v.c_st7789v_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sitronix-st7789v.c_st7789v_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.device_node = type { i32 }
%struct.st7789v = type { %struct.TYPE_7__*, %struct.TYPE_8__, i32, i32, %struct.spi_device* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32*, %struct.TYPE_9__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@st7789v_drm_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"power\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Couldn't get our reset line\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"backlight\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @st7789v_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st7789v_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.st7789v*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.st7789v* @devm_kzalloc(%struct.TYPE_9__* %8, i32 40, i32 %9)
  store %struct.st7789v* %10, %struct.st7789v** %5, align 8
  %11 = load %struct.st7789v*, %struct.st7789v** %5, align 8
  %12 = icmp ne %struct.st7789v* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %110

16:                                               ; preds = %1
  %17 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %18 = load %struct.st7789v*, %struct.st7789v** %5, align 8
  %19 = call i32 @spi_set_drvdata(%struct.spi_device* %17, %struct.st7789v* %18)
  %20 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %21 = load %struct.st7789v*, %struct.st7789v** %5, align 8
  %22 = getelementptr inbounds %struct.st7789v, %struct.st7789v* %21, i32 0, i32 4
  store %struct.spi_device* %20, %struct.spi_device** %22, align 8
  %23 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %24 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %23, i32 0, i32 0
  %25 = load %struct.st7789v*, %struct.st7789v** %5, align 8
  %26 = getelementptr inbounds %struct.st7789v, %struct.st7789v* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %27, align 8
  %28 = load %struct.st7789v*, %struct.st7789v** %5, align 8
  %29 = getelementptr inbounds %struct.st7789v, %struct.st7789v* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store i32* @st7789v_drm_funcs, i32** %30, align 8
  %31 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %32 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %31, i32 0, i32 0
  %33 = call i32 @devm_regulator_get(%struct.TYPE_9__* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.st7789v*, %struct.st7789v** %5, align 8
  %35 = getelementptr inbounds %struct.st7789v, %struct.st7789v* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.st7789v*, %struct.st7789v** %5, align 8
  %37 = getelementptr inbounds %struct.st7789v, %struct.st7789v* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @IS_ERR(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %16
  %42 = load %struct.st7789v*, %struct.st7789v** %5, align 8
  %43 = getelementptr inbounds %struct.st7789v, %struct.st7789v* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @PTR_ERR(i32 %44)
  store i32 %45, i32* %2, align 4
  br label %110

46:                                               ; preds = %16
  %47 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %48 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %47, i32 0, i32 0
  %49 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %50 = call i32 @devm_gpiod_get(%struct.TYPE_9__* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load %struct.st7789v*, %struct.st7789v** %5, align 8
  %52 = getelementptr inbounds %struct.st7789v, %struct.st7789v* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.st7789v*, %struct.st7789v** %5, align 8
  %54 = getelementptr inbounds %struct.st7789v, %struct.st7789v* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @IS_ERR(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %46
  %59 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %60 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %59, i32 0, i32 0
  %61 = call i32 @dev_err(%struct.TYPE_9__* %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %62 = load %struct.st7789v*, %struct.st7789v** %5, align 8
  %63 = getelementptr inbounds %struct.st7789v, %struct.st7789v* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @PTR_ERR(i32 %64)
  store i32 %65, i32* %2, align 4
  br label %110

66:                                               ; preds = %46
  %67 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %68 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call %struct.device_node* @of_parse_phandle(i32 %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 0)
  store %struct.device_node* %71, %struct.device_node** %4, align 8
  %72 = load %struct.device_node*, %struct.device_node** %4, align 8
  %73 = icmp ne %struct.device_node* %72, null
  br i1 %73, label %74, label %89

74:                                               ; preds = %66
  %75 = load %struct.device_node*, %struct.device_node** %4, align 8
  %76 = call %struct.TYPE_7__* @of_find_backlight_by_node(%struct.device_node* %75)
  %77 = load %struct.st7789v*, %struct.st7789v** %5, align 8
  %78 = getelementptr inbounds %struct.st7789v, %struct.st7789v* %77, i32 0, i32 0
  store %struct.TYPE_7__* %76, %struct.TYPE_7__** %78, align 8
  %79 = load %struct.device_node*, %struct.device_node** %4, align 8
  %80 = call i32 @of_node_put(%struct.device_node* %79)
  %81 = load %struct.st7789v*, %struct.st7789v** %5, align 8
  %82 = getelementptr inbounds %struct.st7789v, %struct.st7789v* %81, i32 0, i32 0
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = icmp ne %struct.TYPE_7__* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %74
  %86 = load i32, i32* @EPROBE_DEFER, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %110

88:                                               ; preds = %74
  br label %89

89:                                               ; preds = %88, %66
  %90 = load %struct.st7789v*, %struct.st7789v** %5, align 8
  %91 = getelementptr inbounds %struct.st7789v, %struct.st7789v* %90, i32 0, i32 1
  %92 = call i32 @drm_panel_add(%struct.TYPE_8__* %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  br label %97

96:                                               ; preds = %89
  store i32 0, i32* %2, align 4
  br label %110

97:                                               ; preds = %95
  %98 = load %struct.st7789v*, %struct.st7789v** %5, align 8
  %99 = getelementptr inbounds %struct.st7789v, %struct.st7789v* %98, i32 0, i32 0
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = icmp ne %struct.TYPE_7__* %100, null
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load %struct.st7789v*, %struct.st7789v** %5, align 8
  %104 = getelementptr inbounds %struct.st7789v, %struct.st7789v* %103, i32 0, i32 0
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = call i32 @put_device(i32* %106)
  br label %108

108:                                              ; preds = %102, %97
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %108, %96, %85, %58, %41, %13
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local %struct.st7789v* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.st7789v*) #1

declare dso_local i32 @devm_regulator_get(%struct.TYPE_9__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_gpiod_get(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*) #1

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local %struct.TYPE_7__* @of_find_backlight_by_node(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @drm_panel_add(%struct.TYPE_8__*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
