; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-feiyang-fy07024di26a30d.c_feiyang_dsi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-feiyang-fy07024di26a30d.c_feiyang_dsi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_device = type { i32, i32, i32, i32 }
%struct.feiyang = type { %struct.TYPE_3__, i8*, i8*, i8*, i8*, %struct.mipi_dsi_device* }
%struct.TYPE_3__ = type { i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@feiyang_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"dvdd\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Couldn't get dvdd regulator\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"avdd\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Couldn't get avdd regulator\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Couldn't get our reset GPIO\0A\00", align 1
@MIPI_DSI_MODE_VIDEO_BURST = common dso_local global i32 0, align 4
@MIPI_DSI_FMT_RGB888 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dsi_device*)* @feiyang_dsi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @feiyang_dsi_probe(%struct.mipi_dsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mipi_dsi_device*, align 8
  %4 = alloca %struct.feiyang*, align 8
  %5 = alloca i32, align 4
  store %struct.mipi_dsi_device* %0, %struct.mipi_dsi_device** %3, align 8
  %6 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %7 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %6, i32 0, i32 3
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.feiyang* @devm_kzalloc(i32* %7, i32 56, i32 %8)
  store %struct.feiyang* %9, %struct.feiyang** %4, align 8
  %10 = load %struct.feiyang*, %struct.feiyang** %4, align 8
  %11 = icmp ne %struct.feiyang* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %125

15:                                               ; preds = %1
  %16 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %17 = load %struct.feiyang*, %struct.feiyang** %4, align 8
  %18 = call i32 @mipi_dsi_set_drvdata(%struct.mipi_dsi_device* %16, %struct.feiyang* %17)
  %19 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %20 = load %struct.feiyang*, %struct.feiyang** %4, align 8
  %21 = getelementptr inbounds %struct.feiyang, %struct.feiyang* %20, i32 0, i32 5
  store %struct.mipi_dsi_device* %19, %struct.mipi_dsi_device** %21, align 8
  %22 = load %struct.feiyang*, %struct.feiyang** %4, align 8
  %23 = getelementptr inbounds %struct.feiyang, %struct.feiyang* %22, i32 0, i32 0
  %24 = call i32 @drm_panel_init(%struct.TYPE_3__* %23)
  %25 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %26 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %25, i32 0, i32 3
  %27 = load %struct.feiyang*, %struct.feiyang** %4, align 8
  %28 = getelementptr inbounds %struct.feiyang, %struct.feiyang* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i32* %26, i32** %29, align 8
  %30 = load %struct.feiyang*, %struct.feiyang** %4, align 8
  %31 = getelementptr inbounds %struct.feiyang, %struct.feiyang* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32* @feiyang_funcs, i32** %32, align 8
  %33 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %34 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %33, i32 0, i32 3
  %35 = call i8* @devm_regulator_get(i32* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.feiyang*, %struct.feiyang** %4, align 8
  %37 = getelementptr inbounds %struct.feiyang, %struct.feiyang* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  %38 = load %struct.feiyang*, %struct.feiyang** %4, align 8
  %39 = getelementptr inbounds %struct.feiyang, %struct.feiyang* %38, i32 0, i32 4
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @IS_ERR(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %15
  %44 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %45 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %44, i32 0, i32 3
  %46 = call i32 @DRM_DEV_ERROR(i32* %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.feiyang*, %struct.feiyang** %4, align 8
  %48 = getelementptr inbounds %struct.feiyang, %struct.feiyang* %47, i32 0, i32 4
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @PTR_ERR(i8* %49)
  store i32 %50, i32* %2, align 4
  br label %125

51:                                               ; preds = %15
  %52 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %53 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %52, i32 0, i32 3
  %54 = call i8* @devm_regulator_get(i32* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %55 = load %struct.feiyang*, %struct.feiyang** %4, align 8
  %56 = getelementptr inbounds %struct.feiyang, %struct.feiyang* %55, i32 0, i32 3
  store i8* %54, i8** %56, align 8
  %57 = load %struct.feiyang*, %struct.feiyang** %4, align 8
  %58 = getelementptr inbounds %struct.feiyang, %struct.feiyang* %57, i32 0, i32 3
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @IS_ERR(i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %51
  %63 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %64 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %63, i32 0, i32 3
  %65 = call i32 @DRM_DEV_ERROR(i32* %64, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %66 = load %struct.feiyang*, %struct.feiyang** %4, align 8
  %67 = getelementptr inbounds %struct.feiyang, %struct.feiyang* %66, i32 0, i32 3
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @PTR_ERR(i8* %68)
  store i32 %69, i32* %2, align 4
  br label %125

70:                                               ; preds = %51
  %71 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %72 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %71, i32 0, i32 3
  %73 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %74 = call i8* @devm_gpiod_get(i32* %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  %75 = load %struct.feiyang*, %struct.feiyang** %4, align 8
  %76 = getelementptr inbounds %struct.feiyang, %struct.feiyang* %75, i32 0, i32 2
  store i8* %74, i8** %76, align 8
  %77 = load %struct.feiyang*, %struct.feiyang** %4, align 8
  %78 = getelementptr inbounds %struct.feiyang, %struct.feiyang* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = call i64 @IS_ERR(i8* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %70
  %83 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %84 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %83, i32 0, i32 3
  %85 = call i32 @DRM_DEV_ERROR(i32* %84, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %86 = load %struct.feiyang*, %struct.feiyang** %4, align 8
  %87 = getelementptr inbounds %struct.feiyang, %struct.feiyang* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @PTR_ERR(i8* %88)
  store i32 %89, i32* %2, align 4
  br label %125

90:                                               ; preds = %70
  %91 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %92 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %91, i32 0, i32 3
  %93 = call i8* @devm_of_find_backlight(i32* %92)
  %94 = load %struct.feiyang*, %struct.feiyang** %4, align 8
  %95 = getelementptr inbounds %struct.feiyang, %struct.feiyang* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  %96 = load %struct.feiyang*, %struct.feiyang** %4, align 8
  %97 = getelementptr inbounds %struct.feiyang, %struct.feiyang* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = call i64 @IS_ERR(i8* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %90
  %102 = load %struct.feiyang*, %struct.feiyang** %4, align 8
  %103 = getelementptr inbounds %struct.feiyang, %struct.feiyang* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @PTR_ERR(i8* %104)
  store i32 %105, i32* %2, align 4
  br label %125

106:                                              ; preds = %90
  %107 = load %struct.feiyang*, %struct.feiyang** %4, align 8
  %108 = getelementptr inbounds %struct.feiyang, %struct.feiyang* %107, i32 0, i32 0
  %109 = call i32 @drm_panel_add(%struct.TYPE_3__* %108)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = load i32, i32* %5, align 4
  store i32 %113, i32* %2, align 4
  br label %125

114:                                              ; preds = %106
  %115 = load i32, i32* @MIPI_DSI_MODE_VIDEO_BURST, align 4
  %116 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %117 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* @MIPI_DSI_FMT_RGB888, align 4
  %119 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %120 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  %121 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %122 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %121, i32 0, i32 0
  store i32 4, i32* %122, align 4
  %123 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %124 = call i32 @mipi_dsi_attach(%struct.mipi_dsi_device* %123)
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %114, %112, %101, %82, %62, %43, %12
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local %struct.feiyang* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @mipi_dsi_set_drvdata(%struct.mipi_dsi_device*, %struct.feiyang*) #1

declare dso_local i32 @drm_panel_init(%struct.TYPE_3__*) #1

declare dso_local i8* @devm_regulator_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_gpiod_get(i32*, i8*, i32) #1

declare dso_local i8* @devm_of_find_backlight(i32*) #1

declare dso_local i32 @drm_panel_add(%struct.TYPE_3__*) #1

declare dso_local i32 @mipi_dsi_attach(%struct.mipi_dsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
