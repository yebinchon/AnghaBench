; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-ronbo-rb070d30.c_rb070d30_panel_dsi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-ronbo-rb070d30.c_rb070d30_panel_dsi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_device = type { i32, i32, i32, i32 }
%struct.rb070d30_panel = type { %struct.TYPE_5__, i8*, %struct.TYPE_4__, %struct.mipi_dsi_device*, i8* }
%struct.TYPE_5__ = type { i32*, i32* }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"vcc-lcd\00", align 1
@rb070d30_panel_funcs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Couldn't get our reset GPIO\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"power\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Couldn't get our power GPIO\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"updn\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Couldn't get our updn GPIO\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"shlr\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Couldn't get our shlr GPIO\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Couldn't get our backlight\0A\00", align 1
@MIPI_DSI_MODE_VIDEO = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO_BURST = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_LPM = common dso_local global i32 0, align 4
@MIPI_DSI_FMT_RGB888 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dsi_device*)* @rb070d30_panel_dsi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rb070d30_panel_dsi_probe(%struct.mipi_dsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mipi_dsi_device*, align 8
  %4 = alloca %struct.rb070d30_panel*, align 8
  %5 = alloca i32, align 4
  store %struct.mipi_dsi_device* %0, %struct.mipi_dsi_device** %3, align 8
  %6 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %7 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %6, i32 0, i32 3
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.rb070d30_panel* @devm_kzalloc(i32* %7, i32 72, i32 %8)
  store %struct.rb070d30_panel* %9, %struct.rb070d30_panel** %4, align 8
  %10 = load %struct.rb070d30_panel*, %struct.rb070d30_panel** %4, align 8
  %11 = icmp ne %struct.rb070d30_panel* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %182

15:                                               ; preds = %1
  %16 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %17 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %16, i32 0, i32 3
  %18 = call i8* @devm_regulator_get(i32* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.rb070d30_panel*, %struct.rb070d30_panel** %4, align 8
  %20 = getelementptr inbounds %struct.rb070d30_panel, %struct.rb070d30_panel* %19, i32 0, i32 4
  store i8* %18, i8** %20, align 8
  %21 = load %struct.rb070d30_panel*, %struct.rb070d30_panel** %4, align 8
  %22 = getelementptr inbounds %struct.rb070d30_panel, %struct.rb070d30_panel* %21, i32 0, i32 4
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @IS_ERR(i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %15
  %27 = load %struct.rb070d30_panel*, %struct.rb070d30_panel** %4, align 8
  %28 = getelementptr inbounds %struct.rb070d30_panel, %struct.rb070d30_panel* %27, i32 0, i32 4
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @PTR_ERR(i8* %29)
  store i32 %30, i32* %2, align 4
  br label %182

31:                                               ; preds = %15
  %32 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %33 = load %struct.rb070d30_panel*, %struct.rb070d30_panel** %4, align 8
  %34 = call i32 @mipi_dsi_set_drvdata(%struct.mipi_dsi_device* %32, %struct.rb070d30_panel* %33)
  %35 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %36 = load %struct.rb070d30_panel*, %struct.rb070d30_panel** %4, align 8
  %37 = getelementptr inbounds %struct.rb070d30_panel, %struct.rb070d30_panel* %36, i32 0, i32 3
  store %struct.mipi_dsi_device* %35, %struct.mipi_dsi_device** %37, align 8
  %38 = load %struct.rb070d30_panel*, %struct.rb070d30_panel** %4, align 8
  %39 = getelementptr inbounds %struct.rb070d30_panel, %struct.rb070d30_panel* %38, i32 0, i32 0
  %40 = call i32 @drm_panel_init(%struct.TYPE_5__* %39)
  %41 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %42 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %41, i32 0, i32 3
  %43 = load %struct.rb070d30_panel*, %struct.rb070d30_panel** %4, align 8
  %44 = getelementptr inbounds %struct.rb070d30_panel, %struct.rb070d30_panel* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i32* %42, i32** %45, align 8
  %46 = load %struct.rb070d30_panel*, %struct.rb070d30_panel** %4, align 8
  %47 = getelementptr inbounds %struct.rb070d30_panel, %struct.rb070d30_panel* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i32* @rb070d30_panel_funcs, i32** %48, align 8
  %49 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %50 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %49, i32 0, i32 3
  %51 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %52 = call i8* @devm_gpiod_get(i32* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load %struct.rb070d30_panel*, %struct.rb070d30_panel** %4, align 8
  %54 = getelementptr inbounds %struct.rb070d30_panel, %struct.rb070d30_panel* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 3
  store i8* %52, i8** %55, align 8
  %56 = load %struct.rb070d30_panel*, %struct.rb070d30_panel** %4, align 8
  %57 = getelementptr inbounds %struct.rb070d30_panel, %struct.rb070d30_panel* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 3
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @IS_ERR(i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %31
  %63 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %64 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %63, i32 0, i32 3
  %65 = call i32 @DRM_DEV_ERROR(i32* %64, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %66 = load %struct.rb070d30_panel*, %struct.rb070d30_panel** %4, align 8
  %67 = getelementptr inbounds %struct.rb070d30_panel, %struct.rb070d30_panel* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 3
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @PTR_ERR(i8* %69)
  store i32 %70, i32* %2, align 4
  br label %182

71:                                               ; preds = %31
  %72 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %73 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %72, i32 0, i32 3
  %74 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %75 = call i8* @devm_gpiod_get(i32* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  %76 = load %struct.rb070d30_panel*, %struct.rb070d30_panel** %4, align 8
  %77 = getelementptr inbounds %struct.rb070d30_panel, %struct.rb070d30_panel* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  store i8* %75, i8** %78, align 8
  %79 = load %struct.rb070d30_panel*, %struct.rb070d30_panel** %4, align 8
  %80 = getelementptr inbounds %struct.rb070d30_panel, %struct.rb070d30_panel* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 @IS_ERR(i8* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %71
  %86 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %87 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %86, i32 0, i32 3
  %88 = call i32 @DRM_DEV_ERROR(i32* %87, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %89 = load %struct.rb070d30_panel*, %struct.rb070d30_panel** %4, align 8
  %90 = getelementptr inbounds %struct.rb070d30_panel, %struct.rb070d30_panel* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @PTR_ERR(i8* %92)
  store i32 %93, i32* %2, align 4
  br label %182

94:                                               ; preds = %71
  %95 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %96 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %95, i32 0, i32 3
  %97 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %98 = call i8* @devm_gpiod_get(i32* %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %97)
  %99 = load %struct.rb070d30_panel*, %struct.rb070d30_panel** %4, align 8
  %100 = getelementptr inbounds %struct.rb070d30_panel, %struct.rb070d30_panel* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  store i8* %98, i8** %101, align 8
  %102 = load %struct.rb070d30_panel*, %struct.rb070d30_panel** %4, align 8
  %103 = getelementptr inbounds %struct.rb070d30_panel, %struct.rb070d30_panel* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = call i64 @IS_ERR(i8* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %94
  %109 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %110 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %109, i32 0, i32 3
  %111 = call i32 @DRM_DEV_ERROR(i32* %110, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %112 = load %struct.rb070d30_panel*, %struct.rb070d30_panel** %4, align 8
  %113 = getelementptr inbounds %struct.rb070d30_panel, %struct.rb070d30_panel* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @PTR_ERR(i8* %115)
  store i32 %116, i32* %2, align 4
  br label %182

117:                                              ; preds = %94
  %118 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %119 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %118, i32 0, i32 3
  %120 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %121 = call i8* @devm_gpiod_get(i32* %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %120)
  %122 = load %struct.rb070d30_panel*, %struct.rb070d30_panel** %4, align 8
  %123 = getelementptr inbounds %struct.rb070d30_panel, %struct.rb070d30_panel* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  store i8* %121, i8** %124, align 8
  %125 = load %struct.rb070d30_panel*, %struct.rb070d30_panel** %4, align 8
  %126 = getelementptr inbounds %struct.rb070d30_panel, %struct.rb070d30_panel* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = call i64 @IS_ERR(i8* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %117
  %132 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %133 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %132, i32 0, i32 3
  %134 = call i32 @DRM_DEV_ERROR(i32* %133, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %135 = load %struct.rb070d30_panel*, %struct.rb070d30_panel** %4, align 8
  %136 = getelementptr inbounds %struct.rb070d30_panel, %struct.rb070d30_panel* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @PTR_ERR(i8* %138)
  store i32 %139, i32* %2, align 4
  br label %182

140:                                              ; preds = %117
  %141 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %142 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %141, i32 0, i32 3
  %143 = call i8* @devm_of_find_backlight(i32* %142)
  %144 = load %struct.rb070d30_panel*, %struct.rb070d30_panel** %4, align 8
  %145 = getelementptr inbounds %struct.rb070d30_panel, %struct.rb070d30_panel* %144, i32 0, i32 1
  store i8* %143, i8** %145, align 8
  %146 = load %struct.rb070d30_panel*, %struct.rb070d30_panel** %4, align 8
  %147 = getelementptr inbounds %struct.rb070d30_panel, %struct.rb070d30_panel* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = call i64 @IS_ERR(i8* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %140
  %152 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %153 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %152, i32 0, i32 3
  %154 = call i32 @DRM_DEV_ERROR(i32* %153, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %155 = load %struct.rb070d30_panel*, %struct.rb070d30_panel** %4, align 8
  %156 = getelementptr inbounds %struct.rb070d30_panel, %struct.rb070d30_panel* %155, i32 0, i32 1
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 @PTR_ERR(i8* %157)
  store i32 %158, i32* %2, align 4
  br label %182

159:                                              ; preds = %140
  %160 = load %struct.rb070d30_panel*, %struct.rb070d30_panel** %4, align 8
  %161 = getelementptr inbounds %struct.rb070d30_panel, %struct.rb070d30_panel* %160, i32 0, i32 0
  %162 = call i32 @drm_panel_add(%struct.TYPE_5__* %161)
  store i32 %162, i32* %5, align 4
  %163 = load i32, i32* %5, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %159
  %166 = load i32, i32* %5, align 4
  store i32 %166, i32* %2, align 4
  br label %182

167:                                              ; preds = %159
  %168 = load i32, i32* @MIPI_DSI_MODE_VIDEO, align 4
  %169 = load i32, i32* @MIPI_DSI_MODE_VIDEO_BURST, align 4
  %170 = or i32 %168, %169
  %171 = load i32, i32* @MIPI_DSI_MODE_LPM, align 4
  %172 = or i32 %170, %171
  %173 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %174 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %173, i32 0, i32 0
  store i32 %172, i32* %174, align 4
  %175 = load i32, i32* @MIPI_DSI_FMT_RGB888, align 4
  %176 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %177 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %176, i32 0, i32 2
  store i32 %175, i32* %177, align 4
  %178 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %179 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %178, i32 0, i32 1
  store i32 4, i32* %179, align 4
  %180 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %181 = call i32 @mipi_dsi_attach(%struct.mipi_dsi_device* %180)
  store i32 %181, i32* %2, align 4
  br label %182

182:                                              ; preds = %167, %165, %151, %131, %108, %85, %62, %26, %12
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

declare dso_local %struct.rb070d30_panel* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i8* @devm_regulator_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @mipi_dsi_set_drvdata(%struct.mipi_dsi_device*, %struct.rb070d30_panel*) #1

declare dso_local i32 @drm_panel_init(%struct.TYPE_5__*) #1

declare dso_local i8* @devm_gpiod_get(i32*, i8*, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32*, i8*) #1

declare dso_local i8* @devm_of_find_backlight(i32*) #1

declare dso_local i32 @drm_panel_add(%struct.TYPE_5__*) #1

declare dso_local i32 @mipi_dsi_attach(%struct.mipi_dsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
