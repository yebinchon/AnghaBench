; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_parallel-display.c_imx_pd_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_parallel-display.c_imx_pd_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.drm_device = type { i32 }
%struct.imx_parallel_display = type { %struct.device*, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"edid\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"interface-pix-fmt\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"rgb24\00", align 1
@MEDIA_BUS_FMT_RGB888_1X24 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"rgb565\00", align 1
@MEDIA_BUS_FMT_RGB565_1X16 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"bgr666\00", align 1
@MEDIA_BUS_FMT_RGB666_1X18 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"lvds666\00", align 1
@MEDIA_BUS_FMT_RGB666_1X24_CPADHI = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @imx_pd_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_pd_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.imx_parallel_display*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.drm_device*
  store %struct.drm_device* %16, %struct.drm_device** %8, align 8
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 0
  %19 = load %struct.device_node*, %struct.device_node** %18, align 8
  store %struct.device_node* %19, %struct.device_node** %9, align 8
  store i32 0, i32* %13, align 4
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.imx_parallel_display* @devm_kzalloc(%struct.device* %20, i32 32, i32 %21)
  store %struct.imx_parallel_display* %22, %struct.imx_parallel_display** %11, align 8
  %23 = load %struct.imx_parallel_display*, %struct.imx_parallel_display** %11, align 8
  %24 = icmp ne %struct.imx_parallel_display* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %111

28:                                               ; preds = %3
  %29 = load %struct.device_node*, %struct.device_node** %9, align 8
  %30 = load %struct.imx_parallel_display*, %struct.imx_parallel_display** %11, align 8
  %31 = getelementptr inbounds %struct.imx_parallel_display, %struct.imx_parallel_display* %30, i32 0, i32 4
  %32 = call i32* @of_get_property(%struct.device_node* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %31)
  store i32* %32, i32** %10, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %28
  %36 = load i32*, i32** %10, align 8
  %37 = load %struct.imx_parallel_display*, %struct.imx_parallel_display** %11, align 8
  %38 = getelementptr inbounds %struct.imx_parallel_display, %struct.imx_parallel_display* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i32 @kmemdup(i32* %36, i32 %39, i32 %40)
  %42 = load %struct.imx_parallel_display*, %struct.imx_parallel_display** %11, align 8
  %43 = getelementptr inbounds %struct.imx_parallel_display, %struct.imx_parallel_display* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %35, %28
  %45 = load %struct.device_node*, %struct.device_node** %9, align 8
  %46 = call i32 @of_property_read_string(%struct.device_node* %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %14)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %77, label %49

49:                                               ; preds = %44
  %50 = load i8*, i8** %14, align 8
  %51 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* @MEDIA_BUS_FMT_RGB888_1X24, align 4
  store i32 %54, i32* %13, align 4
  br label %76

55:                                               ; preds = %49
  %56 = load i8*, i8** %14, align 8
  %57 = call i32 @strcmp(i8* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* @MEDIA_BUS_FMT_RGB565_1X16, align 4
  store i32 %60, i32* %13, align 4
  br label %75

61:                                               ; preds = %55
  %62 = load i8*, i8** %14, align 8
  %63 = call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* @MEDIA_BUS_FMT_RGB666_1X18, align 4
  store i32 %66, i32* %13, align 4
  br label %74

67:                                               ; preds = %61
  %68 = load i8*, i8** %14, align 8
  %69 = call i32 @strcmp(i8* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* @MEDIA_BUS_FMT_RGB666_1X24_CPADHI, align 4
  store i32 %72, i32* %13, align 4
  br label %73

73:                                               ; preds = %71, %67
  br label %74

74:                                               ; preds = %73, %65
  br label %75

75:                                               ; preds = %74, %59
  br label %76

76:                                               ; preds = %75, %53
  br label %77

77:                                               ; preds = %76, %44
  %78 = load i32, i32* %13, align 4
  %79 = load %struct.imx_parallel_display*, %struct.imx_parallel_display** %11, align 8
  %80 = getelementptr inbounds %struct.imx_parallel_display, %struct.imx_parallel_display* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 8
  %81 = load %struct.device_node*, %struct.device_node** %9, align 8
  %82 = load %struct.imx_parallel_display*, %struct.imx_parallel_display** %11, align 8
  %83 = getelementptr inbounds %struct.imx_parallel_display, %struct.imx_parallel_display* %82, i32 0, i32 2
  %84 = load %struct.imx_parallel_display*, %struct.imx_parallel_display** %11, align 8
  %85 = getelementptr inbounds %struct.imx_parallel_display, %struct.imx_parallel_display* %84, i32 0, i32 1
  %86 = call i32 @drm_of_find_panel_or_bridge(%struct.device_node* %81, i32 1, i32 0, i32* %83, i32* %85)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %77
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @ENODEV, align 4
  %92 = sub nsw i32 0, %91
  %93 = icmp ne i32 %90, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %4, align 4
  br label %111

96:                                               ; preds = %89, %77
  %97 = load %struct.device*, %struct.device** %5, align 8
  %98 = load %struct.imx_parallel_display*, %struct.imx_parallel_display** %11, align 8
  %99 = getelementptr inbounds %struct.imx_parallel_display, %struct.imx_parallel_display* %98, i32 0, i32 0
  store %struct.device* %97, %struct.device** %99, align 8
  %100 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %101 = load %struct.imx_parallel_display*, %struct.imx_parallel_display** %11, align 8
  %102 = call i32 @imx_pd_register(%struct.drm_device* %100, %struct.imx_parallel_display* %101)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %96
  %106 = load i32, i32* %12, align 4
  store i32 %106, i32* %4, align 4
  br label %111

107:                                              ; preds = %96
  %108 = load %struct.device*, %struct.device** %5, align 8
  %109 = load %struct.imx_parallel_display*, %struct.imx_parallel_display** %11, align 8
  %110 = call i32 @dev_set_drvdata(%struct.device* %108, %struct.imx_parallel_display* %109)
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %107, %105, %94, %25
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local %struct.imx_parallel_display* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @kmemdup(i32*, i32, i32) #1

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @drm_of_find_panel_or_bridge(%struct.device_node*, i32, i32, i32*, i32*) #1

declare dso_local i32 @imx_pd_register(%struct.drm_device*, %struct.imx_parallel_display*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.imx_parallel_display*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
