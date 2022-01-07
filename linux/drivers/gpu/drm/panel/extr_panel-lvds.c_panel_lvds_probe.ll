; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-lvds.c_panel_lvds_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-lvds.c_panel_lvds_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.panel_lvds = type { %struct.TYPE_9__*, %struct.TYPE_11__*, %struct.TYPE_10__, i32*, i32*, i32* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32*, %struct.TYPE_11__* }
%struct.device_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"power\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to request regulator: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to request %s GPIO: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"backlight\00", align 1
@panel_lvds_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @panel_lvds_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panel_lvds_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.panel_lvds*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.panel_lvds* @devm_kzalloc(%struct.TYPE_11__* %8, i32 56, i32 %9)
  store %struct.panel_lvds* %10, %struct.panel_lvds** %4, align 8
  %11 = load %struct.panel_lvds*, %struct.panel_lvds** %4, align 8
  %12 = icmp ne %struct.panel_lvds* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %170

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load %struct.panel_lvds*, %struct.panel_lvds** %4, align 8
  %20 = getelementptr inbounds %struct.panel_lvds, %struct.panel_lvds* %19, i32 0, i32 1
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %20, align 8
  %21 = load %struct.panel_lvds*, %struct.panel_lvds** %4, align 8
  %22 = call i32 @panel_lvds_parse_dt(%struct.panel_lvds* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %2, align 4
  br label %170

27:                                               ; preds = %16
  %28 = load %struct.panel_lvds*, %struct.panel_lvds** %4, align 8
  %29 = getelementptr inbounds %struct.panel_lvds, %struct.panel_lvds* %28, i32 0, i32 1
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = call i32* @devm_regulator_get_optional(%struct.TYPE_11__* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.panel_lvds*, %struct.panel_lvds** %4, align 8
  %33 = getelementptr inbounds %struct.panel_lvds, %struct.panel_lvds* %32, i32 0, i32 5
  store i32* %31, i32** %33, align 8
  %34 = load %struct.panel_lvds*, %struct.panel_lvds** %4, align 8
  %35 = getelementptr inbounds %struct.panel_lvds, %struct.panel_lvds* %34, i32 0, i32 5
  %36 = load i32*, i32** %35, align 8
  %37 = call i64 @IS_ERR(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %64

39:                                               ; preds = %27
  %40 = load %struct.panel_lvds*, %struct.panel_lvds** %4, align 8
  %41 = getelementptr inbounds %struct.panel_lvds, %struct.panel_lvds* %40, i32 0, i32 5
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @PTR_ERR(i32* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  %47 = icmp ne i32 %44, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %39
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @EPROBE_DEFER, align 4
  %51 = sub nsw i32 0, %50
  %52 = icmp ne i32 %49, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.panel_lvds*, %struct.panel_lvds** %4, align 8
  %55 = getelementptr inbounds %struct.panel_lvds, %struct.panel_lvds* %54, i32 0, i32 1
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %53, %48
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %170

61:                                               ; preds = %39
  %62 = load %struct.panel_lvds*, %struct.panel_lvds** %4, align 8
  %63 = getelementptr inbounds %struct.panel_lvds, %struct.panel_lvds* %62, i32 0, i32 5
  store i32* null, i32** %63, align 8
  br label %64

64:                                               ; preds = %61, %27
  %65 = load %struct.panel_lvds*, %struct.panel_lvds** %4, align 8
  %66 = getelementptr inbounds %struct.panel_lvds, %struct.panel_lvds* %65, i32 0, i32 1
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %69 = call i8* @devm_gpiod_get_optional(%struct.TYPE_11__* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = bitcast i8* %69 to i32*
  %71 = load %struct.panel_lvds*, %struct.panel_lvds** %4, align 8
  %72 = getelementptr inbounds %struct.panel_lvds, %struct.panel_lvds* %71, i32 0, i32 4
  store i32* %70, i32** %72, align 8
  %73 = load %struct.panel_lvds*, %struct.panel_lvds** %4, align 8
  %74 = getelementptr inbounds %struct.panel_lvds, %struct.panel_lvds* %73, i32 0, i32 4
  %75 = load i32*, i32** %74, align 8
  %76 = call i64 @IS_ERR(i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %64
  %79 = load %struct.panel_lvds*, %struct.panel_lvds** %4, align 8
  %80 = getelementptr inbounds %struct.panel_lvds, %struct.panel_lvds* %79, i32 0, i32 4
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @PTR_ERR(i32* %81)
  store i32 %82, i32* %6, align 4
  %83 = load %struct.panel_lvds*, %struct.panel_lvds** %4, align 8
  %84 = getelementptr inbounds %struct.panel_lvds, %struct.panel_lvds* %83, i32 0, i32 1
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %85, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %2, align 4
  br label %170

89:                                               ; preds = %64
  %90 = load %struct.panel_lvds*, %struct.panel_lvds** %4, align 8
  %91 = getelementptr inbounds %struct.panel_lvds, %struct.panel_lvds* %90, i32 0, i32 1
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %94 = call i8* @devm_gpiod_get_optional(%struct.TYPE_11__* %92, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %93)
  %95 = bitcast i8* %94 to i32*
  %96 = load %struct.panel_lvds*, %struct.panel_lvds** %4, align 8
  %97 = getelementptr inbounds %struct.panel_lvds, %struct.panel_lvds* %96, i32 0, i32 3
  store i32* %95, i32** %97, align 8
  %98 = load %struct.panel_lvds*, %struct.panel_lvds** %4, align 8
  %99 = getelementptr inbounds %struct.panel_lvds, %struct.panel_lvds* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = call i64 @IS_ERR(i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %89
  %104 = load %struct.panel_lvds*, %struct.panel_lvds** %4, align 8
  %105 = getelementptr inbounds %struct.panel_lvds, %struct.panel_lvds* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @PTR_ERR(i32* %106)
  store i32 %107, i32* %6, align 4
  %108 = load %struct.panel_lvds*, %struct.panel_lvds** %4, align 8
  %109 = getelementptr inbounds %struct.panel_lvds, %struct.panel_lvds* %108, i32 0, i32 1
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %110, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %2, align 4
  br label %170

114:                                              ; preds = %89
  %115 = load %struct.panel_lvds*, %struct.panel_lvds** %4, align 8
  %116 = getelementptr inbounds %struct.panel_lvds, %struct.panel_lvds* %115, i32 0, i32 1
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call %struct.device_node* @of_parse_phandle(i32 %119, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 0)
  store %struct.device_node* %120, %struct.device_node** %5, align 8
  %121 = load %struct.device_node*, %struct.device_node** %5, align 8
  %122 = icmp ne %struct.device_node* %121, null
  br i1 %122, label %123, label %138

123:                                              ; preds = %114
  %124 = load %struct.device_node*, %struct.device_node** %5, align 8
  %125 = call %struct.TYPE_9__* @of_find_backlight_by_node(%struct.device_node* %124)
  %126 = load %struct.panel_lvds*, %struct.panel_lvds** %4, align 8
  %127 = getelementptr inbounds %struct.panel_lvds, %struct.panel_lvds* %126, i32 0, i32 0
  store %struct.TYPE_9__* %125, %struct.TYPE_9__** %127, align 8
  %128 = load %struct.device_node*, %struct.device_node** %5, align 8
  %129 = call i32 @of_node_put(%struct.device_node* %128)
  %130 = load %struct.panel_lvds*, %struct.panel_lvds** %4, align 8
  %131 = getelementptr inbounds %struct.panel_lvds, %struct.panel_lvds* %130, i32 0, i32 0
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = icmp ne %struct.TYPE_9__* %132, null
  br i1 %133, label %137, label %134

134:                                              ; preds = %123
  %135 = load i32, i32* @EPROBE_DEFER, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %2, align 4
  br label %170

137:                                              ; preds = %123
  br label %138

138:                                              ; preds = %137, %114
  %139 = load %struct.panel_lvds*, %struct.panel_lvds** %4, align 8
  %140 = getelementptr inbounds %struct.panel_lvds, %struct.panel_lvds* %139, i32 0, i32 2
  %141 = call i32 @drm_panel_init(%struct.TYPE_10__* %140)
  %142 = load %struct.panel_lvds*, %struct.panel_lvds** %4, align 8
  %143 = getelementptr inbounds %struct.panel_lvds, %struct.panel_lvds* %142, i32 0, i32 1
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %143, align 8
  %145 = load %struct.panel_lvds*, %struct.panel_lvds** %4, align 8
  %146 = getelementptr inbounds %struct.panel_lvds, %struct.panel_lvds* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 1
  store %struct.TYPE_11__* %144, %struct.TYPE_11__** %147, align 8
  %148 = load %struct.panel_lvds*, %struct.panel_lvds** %4, align 8
  %149 = getelementptr inbounds %struct.panel_lvds, %struct.panel_lvds* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  store i32* @panel_lvds_funcs, i32** %150, align 8
  %151 = load %struct.panel_lvds*, %struct.panel_lvds** %4, align 8
  %152 = getelementptr inbounds %struct.panel_lvds, %struct.panel_lvds* %151, i32 0, i32 2
  %153 = call i32 @drm_panel_add(%struct.TYPE_10__* %152)
  store i32 %153, i32* %6, align 4
  %154 = load i32, i32* %6, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %138
  br label %163

157:                                              ; preds = %138
  %158 = load %struct.panel_lvds*, %struct.panel_lvds** %4, align 8
  %159 = getelementptr inbounds %struct.panel_lvds, %struct.panel_lvds* %158, i32 0, i32 1
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %159, align 8
  %161 = load %struct.panel_lvds*, %struct.panel_lvds** %4, align 8
  %162 = call i32 @dev_set_drvdata(%struct.TYPE_11__* %160, %struct.panel_lvds* %161)
  store i32 0, i32* %2, align 4
  br label %170

163:                                              ; preds = %156
  %164 = load %struct.panel_lvds*, %struct.panel_lvds** %4, align 8
  %165 = getelementptr inbounds %struct.panel_lvds, %struct.panel_lvds* %164, i32 0, i32 0
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = call i32 @put_device(i32* %167)
  %169 = load i32, i32* %6, align 4
  store i32 %169, i32* %2, align 4
  br label %170

170:                                              ; preds = %163, %157, %134, %103, %78, %59, %25, %13
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local %struct.panel_lvds* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @panel_lvds_parse_dt(%struct.panel_lvds*) #1

declare dso_local i32* @devm_regulator_get_optional(%struct.TYPE_11__*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local i8* @devm_gpiod_get_optional(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local %struct.TYPE_9__* @of_find_backlight_by_node(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @drm_panel_init(%struct.TYPE_10__*) #1

declare dso_local i32 @drm_panel_add(%struct.TYPE_10__*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_11__*, %struct.panel_lvds*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
