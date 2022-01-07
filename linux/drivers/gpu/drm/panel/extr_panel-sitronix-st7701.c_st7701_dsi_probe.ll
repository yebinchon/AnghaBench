; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sitronix-st7701.c_st7701_dsi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sitronix-st7701.c_st7701_dsi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_device = type { i32, i32, i32, i32 }
%struct.st7701_panel_desc = type { i32, i64, i32*, i32, i32, i32 }
%struct.st7701 = type { %struct.st7701_panel_desc*, %struct.mipi_dsi_device*, %struct.TYPE_5__, i64, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32*, i32* }
%struct.TYPE_6__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Couldn't get our reset GPIO\0A\00", align 1
@st7701_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dsi_device*)* @st7701_dsi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st7701_dsi_probe(%struct.mipi_dsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mipi_dsi_device*, align 8
  %4 = alloca %struct.st7701_panel_desc*, align 8
  %5 = alloca %struct.st7701*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mipi_dsi_device* %0, %struct.mipi_dsi_device** %3, align 8
  %8 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %9 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.st7701* @devm_kzalloc(i32* %9, i32 56, i32 %10)
  store %struct.st7701* %11, %struct.st7701** %5, align 8
  %12 = load %struct.st7701*, %struct.st7701** %5, align 8
  %13 = icmp ne %struct.st7701* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %164

17:                                               ; preds = %1
  %18 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %19 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %18, i32 0, i32 0
  %20 = call %struct.st7701_panel_desc* @of_device_get_match_data(i32* %19)
  store %struct.st7701_panel_desc* %20, %struct.st7701_panel_desc** %4, align 8
  %21 = load %struct.st7701_panel_desc*, %struct.st7701_panel_desc** %4, align 8
  %22 = getelementptr inbounds %struct.st7701_panel_desc, %struct.st7701_panel_desc* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %25 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load %struct.st7701_panel_desc*, %struct.st7701_panel_desc** %4, align 8
  %27 = getelementptr inbounds %struct.st7701_panel_desc, %struct.st7701_panel_desc* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %30 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.st7701_panel_desc*, %struct.st7701_panel_desc** %4, align 8
  %32 = getelementptr inbounds %struct.st7701_panel_desc, %struct.st7701_panel_desc* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %35 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %37 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %36, i32 0, i32 0
  %38 = load %struct.st7701_panel_desc*, %struct.st7701_panel_desc** %4, align 8
  %39 = getelementptr inbounds %struct.st7701_panel_desc, %struct.st7701_panel_desc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.TYPE_6__* @devm_kcalloc(i32* %37, i32 %40, i32 4, i32 %41)
  %43 = load %struct.st7701*, %struct.st7701** %5, align 8
  %44 = getelementptr inbounds %struct.st7701, %struct.st7701* %43, i32 0, i32 6
  store %struct.TYPE_6__* %42, %struct.TYPE_6__** %44, align 8
  %45 = load %struct.st7701*, %struct.st7701** %5, align 8
  %46 = getelementptr inbounds %struct.st7701, %struct.st7701* %45, i32 0, i32 6
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = icmp ne %struct.TYPE_6__* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %17
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %164

52:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %74, %52
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.st7701_panel_desc*, %struct.st7701_panel_desc** %4, align 8
  %56 = getelementptr inbounds %struct.st7701_panel_desc, %struct.st7701_panel_desc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %77

59:                                               ; preds = %53
  %60 = load %struct.st7701_panel_desc*, %struct.st7701_panel_desc** %4, align 8
  %61 = getelementptr inbounds %struct.st7701_panel_desc, %struct.st7701_panel_desc* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.st7701*, %struct.st7701** %5, align 8
  %68 = getelementptr inbounds %struct.st7701, %struct.st7701* %67, i32 0, i32 6
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  store i32 %66, i32* %73, align 4
  br label %74

74:                                               ; preds = %59
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %53

77:                                               ; preds = %53
  %78 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %79 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %78, i32 0, i32 0
  %80 = load %struct.st7701_panel_desc*, %struct.st7701_panel_desc** %4, align 8
  %81 = getelementptr inbounds %struct.st7701_panel_desc, %struct.st7701_panel_desc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.st7701*, %struct.st7701** %5, align 8
  %84 = getelementptr inbounds %struct.st7701, %struct.st7701* %83, i32 0, i32 6
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = call i32 @devm_regulator_bulk_get(i32* %79, i32 %82, %struct.TYPE_6__* %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %77
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %2, align 4
  br label %164

91:                                               ; preds = %77
  %92 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %93 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %92, i32 0, i32 0
  %94 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %95 = call i32 @devm_gpiod_get(i32* %93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %94)
  %96 = load %struct.st7701*, %struct.st7701** %5, align 8
  %97 = getelementptr inbounds %struct.st7701, %struct.st7701* %96, i32 0, i32 5
  store i32 %95, i32* %97, align 4
  %98 = load %struct.st7701*, %struct.st7701** %5, align 8
  %99 = getelementptr inbounds %struct.st7701, %struct.st7701* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @IS_ERR(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %91
  %104 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %105 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %104, i32 0, i32 0
  %106 = call i32 @DRM_DEV_ERROR(i32* %105, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %107 = load %struct.st7701*, %struct.st7701** %5, align 8
  %108 = getelementptr inbounds %struct.st7701, %struct.st7701* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @PTR_ERR(i32 %109)
  store i32 %110, i32* %2, align 4
  br label %164

111:                                              ; preds = %91
  %112 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %113 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %112, i32 0, i32 0
  %114 = call i32 @devm_of_find_backlight(i32* %113)
  %115 = load %struct.st7701*, %struct.st7701** %5, align 8
  %116 = getelementptr inbounds %struct.st7701, %struct.st7701* %115, i32 0, i32 4
  store i32 %114, i32* %116, align 8
  %117 = load %struct.st7701*, %struct.st7701** %5, align 8
  %118 = getelementptr inbounds %struct.st7701, %struct.st7701* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @IS_ERR(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %111
  %123 = load %struct.st7701*, %struct.st7701** %5, align 8
  %124 = getelementptr inbounds %struct.st7701, %struct.st7701* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @PTR_ERR(i32 %125)
  store i32 %126, i32* %2, align 4
  br label %164

127:                                              ; preds = %111
  %128 = load %struct.st7701*, %struct.st7701** %5, align 8
  %129 = getelementptr inbounds %struct.st7701, %struct.st7701* %128, i32 0, i32 2
  %130 = call i32 @drm_panel_init(%struct.TYPE_5__* %129)
  %131 = load %struct.st7701_panel_desc*, %struct.st7701_panel_desc** %4, align 8
  %132 = getelementptr inbounds %struct.st7701_panel_desc, %struct.st7701_panel_desc* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 120, %133
  %135 = load %struct.st7701*, %struct.st7701** %5, align 8
  %136 = getelementptr inbounds %struct.st7701, %struct.st7701* %135, i32 0, i32 3
  store i64 %134, i64* %136, align 8
  %137 = load %struct.st7701*, %struct.st7701** %5, align 8
  %138 = getelementptr inbounds %struct.st7701, %struct.st7701* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 1
  store i32* @st7701_funcs, i32** %139, align 8
  %140 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %141 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %140, i32 0, i32 0
  %142 = load %struct.st7701*, %struct.st7701** %5, align 8
  %143 = getelementptr inbounds %struct.st7701, %struct.st7701* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  store i32* %141, i32** %144, align 8
  %145 = load %struct.st7701*, %struct.st7701** %5, align 8
  %146 = getelementptr inbounds %struct.st7701, %struct.st7701* %145, i32 0, i32 2
  %147 = call i32 @drm_panel_add(%struct.TYPE_5__* %146)
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* %6, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %127
  %151 = load i32, i32* %6, align 4
  store i32 %151, i32* %2, align 4
  br label %164

152:                                              ; preds = %127
  %153 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %154 = load %struct.st7701*, %struct.st7701** %5, align 8
  %155 = call i32 @mipi_dsi_set_drvdata(%struct.mipi_dsi_device* %153, %struct.st7701* %154)
  %156 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %157 = load %struct.st7701*, %struct.st7701** %5, align 8
  %158 = getelementptr inbounds %struct.st7701, %struct.st7701* %157, i32 0, i32 1
  store %struct.mipi_dsi_device* %156, %struct.mipi_dsi_device** %158, align 8
  %159 = load %struct.st7701_panel_desc*, %struct.st7701_panel_desc** %4, align 8
  %160 = load %struct.st7701*, %struct.st7701** %5, align 8
  %161 = getelementptr inbounds %struct.st7701, %struct.st7701* %160, i32 0, i32 0
  store %struct.st7701_panel_desc* %159, %struct.st7701_panel_desc** %161, align 8
  %162 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %163 = call i32 @mipi_dsi_attach(%struct.mipi_dsi_device* %162)
  store i32 %163, i32* %2, align 4
  br label %164

164:                                              ; preds = %152, %150, %122, %103, %89, %49, %14
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local %struct.st7701* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.st7701_panel_desc* @of_device_get_match_data(i32*) #1

declare dso_local %struct.TYPE_6__* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32 @devm_regulator_bulk_get(i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @devm_gpiod_get(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_of_find_backlight(i32*) #1

declare dso_local i32 @drm_panel_init(%struct.TYPE_5__*) #1

declare dso_local i32 @drm_panel_add(%struct.TYPE_5__*) #1

declare dso_local i32 @mipi_dsi_set_drvdata(%struct.mipi_dsi_device*, %struct.st7701*) #1

declare dso_local i32 @mipi_dsi_attach(%struct.mipi_dsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
