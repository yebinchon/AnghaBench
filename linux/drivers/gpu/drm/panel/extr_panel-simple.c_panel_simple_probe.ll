; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-simple.c_panel_simple_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-simple.c_panel_simple_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.panel_desc = type { i32 }
%struct.device_node = type { i32 }
%struct.panel_simple = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_7__, i32, i32, i32, %struct.panel_desc* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32*, %struct.device* }
%struct.display_timing = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"no-hpd\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"power\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to request GPIO: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"backlight\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"ddc-i2c-bus\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"panel-timing\00", align 1
@panel_simple_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.panel_desc*)* @panel_simple_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panel_simple_probe(%struct.device* %0, %struct.panel_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.panel_desc*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.panel_simple*, align 8
  %9 = alloca %struct.display_timing, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.panel_desc* %1, %struct.panel_desc** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.panel_simple* @devm_kzalloc(%struct.device* %11, i32 64, i32 %12)
  store %struct.panel_simple* %13, %struct.panel_simple** %8, align 8
  %14 = load %struct.panel_simple*, %struct.panel_simple** %8, align 8
  %15 = icmp ne %struct.panel_simple* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %173

19:                                               ; preds = %2
  %20 = load %struct.panel_simple*, %struct.panel_simple** %8, align 8
  %21 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load %struct.panel_simple*, %struct.panel_simple** %8, align 8
  %23 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %22, i32 0, i32 1
  store i32 0, i32* %23, align 4
  %24 = load %struct.panel_desc*, %struct.panel_desc** %5, align 8
  %25 = load %struct.panel_simple*, %struct.panel_simple** %8, align 8
  %26 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %25, i32 0, i32 8
  store %struct.panel_desc* %24, %struct.panel_desc** %26, align 8
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = getelementptr inbounds %struct.device, %struct.device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @of_property_read_bool(i32 %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.panel_simple*, %struct.panel_simple** %8, align 8
  %32 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %31, i32 0, i32 7
  store i32 %30, i32* %32, align 8
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = call i32 @devm_regulator_get(%struct.device* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.panel_simple*, %struct.panel_simple** %8, align 8
  %36 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 4
  %37 = load %struct.panel_simple*, %struct.panel_simple** %8, align 8
  %38 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @IS_ERR(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %19
  %43 = load %struct.panel_simple*, %struct.panel_simple** %8, align 8
  %44 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @PTR_ERR(i32 %45)
  store i32 %46, i32* %3, align 4
  br label %173

47:                                               ; preds = %19
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %50 = call i32 @devm_gpiod_get_optional(%struct.device* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load %struct.panel_simple*, %struct.panel_simple** %8, align 8
  %52 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 8
  %53 = load %struct.panel_simple*, %struct.panel_simple** %8, align 8
  %54 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @IS_ERR(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %47
  %59 = load %struct.panel_simple*, %struct.panel_simple** %8, align 8
  %60 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @PTR_ERR(i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @EPROBE_DEFER, align 4
  %65 = sub nsw i32 0, %64
  %66 = icmp ne i32 %63, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %58
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @dev_err(%struct.device* %68, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %67, %58
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %3, align 4
  br label %173

73:                                               ; preds = %47
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = getelementptr inbounds %struct.device, %struct.device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call %struct.device_node* @of_parse_phandle(i32 %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 0)
  store %struct.device_node* %77, %struct.device_node** %6, align 8
  %78 = load %struct.device_node*, %struct.device_node** %6, align 8
  %79 = icmp ne %struct.device_node* %78, null
  br i1 %79, label %80, label %95

80:                                               ; preds = %73
  %81 = load %struct.device_node*, %struct.device_node** %6, align 8
  %82 = call %struct.TYPE_6__* @of_find_backlight_by_node(%struct.device_node* %81)
  %83 = load %struct.panel_simple*, %struct.panel_simple** %8, align 8
  %84 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %83, i32 0, i32 2
  store %struct.TYPE_6__* %82, %struct.TYPE_6__** %84, align 8
  %85 = load %struct.device_node*, %struct.device_node** %6, align 8
  %86 = call i32 @of_node_put(%struct.device_node* %85)
  %87 = load %struct.panel_simple*, %struct.panel_simple** %8, align 8
  %88 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %87, i32 0, i32 2
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = icmp ne %struct.TYPE_6__* %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %80
  %92 = load i32, i32* @EPROBE_DEFER, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %173

94:                                               ; preds = %80
  br label %95

95:                                               ; preds = %94, %73
  %96 = load %struct.device*, %struct.device** %4, align 8
  %97 = getelementptr inbounds %struct.device, %struct.device* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call %struct.device_node* @of_parse_phandle(i32 %98, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 0)
  store %struct.device_node* %99, %struct.device_node** %7, align 8
  %100 = load %struct.device_node*, %struct.device_node** %7, align 8
  %101 = icmp ne %struct.device_node* %100, null
  br i1 %101, label %102, label %117

102:                                              ; preds = %95
  %103 = load %struct.device_node*, %struct.device_node** %7, align 8
  %104 = call %struct.TYPE_5__* @of_find_i2c_adapter_by_node(%struct.device_node* %103)
  %105 = load %struct.panel_simple*, %struct.panel_simple** %8, align 8
  %106 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %105, i32 0, i32 3
  store %struct.TYPE_5__* %104, %struct.TYPE_5__** %106, align 8
  %107 = load %struct.device_node*, %struct.device_node** %7, align 8
  %108 = call i32 @of_node_put(%struct.device_node* %107)
  %109 = load %struct.panel_simple*, %struct.panel_simple** %8, align 8
  %110 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %109, i32 0, i32 3
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = icmp ne %struct.TYPE_5__* %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %102
  %114 = load i32, i32* @EPROBE_DEFER, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %10, align 4
  br label %160

116:                                              ; preds = %102
  br label %117

117:                                              ; preds = %116, %95
  %118 = load %struct.device*, %struct.device** %4, align 8
  %119 = getelementptr inbounds %struct.device, %struct.device* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @of_get_display_timing(i32 %120, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), %struct.display_timing* %9)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %117
  %124 = load %struct.device*, %struct.device** %4, align 8
  %125 = load %struct.panel_simple*, %struct.panel_simple** %8, align 8
  %126 = call i32 @panel_simple_parse_panel_timing_node(%struct.device* %124, %struct.panel_simple* %125, %struct.display_timing* %9)
  br label %127

127:                                              ; preds = %123, %117
  %128 = load %struct.panel_simple*, %struct.panel_simple** %8, align 8
  %129 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %128, i32 0, i32 4
  %130 = call i32 @drm_panel_init(%struct.TYPE_7__* %129)
  %131 = load %struct.device*, %struct.device** %4, align 8
  %132 = load %struct.panel_simple*, %struct.panel_simple** %8, align 8
  %133 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  store %struct.device* %131, %struct.device** %134, align 8
  %135 = load %struct.panel_simple*, %struct.panel_simple** %8, align 8
  %136 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  store i32* @panel_simple_funcs, i32** %137, align 8
  %138 = load %struct.panel_simple*, %struct.panel_simple** %8, align 8
  %139 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %138, i32 0, i32 4
  %140 = call i32 @drm_panel_add(%struct.TYPE_7__* %139)
  store i32 %140, i32* %10, align 4
  %141 = load i32, i32* %10, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %127
  br label %148

144:                                              ; preds = %127
  %145 = load %struct.device*, %struct.device** %4, align 8
  %146 = load %struct.panel_simple*, %struct.panel_simple** %8, align 8
  %147 = call i32 @dev_set_drvdata(%struct.device* %145, %struct.panel_simple* %146)
  store i32 0, i32* %3, align 4
  br label %173

148:                                              ; preds = %143
  %149 = load %struct.panel_simple*, %struct.panel_simple** %8, align 8
  %150 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %149, i32 0, i32 3
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %150, align 8
  %152 = icmp ne %struct.TYPE_5__* %151, null
  br i1 %152, label %153, label %159

153:                                              ; preds = %148
  %154 = load %struct.panel_simple*, %struct.panel_simple** %8, align 8
  %155 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %154, i32 0, i32 3
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  %158 = call i32 @put_device(i32* %157)
  br label %159

159:                                              ; preds = %153, %148
  br label %160

160:                                              ; preds = %159, %113
  %161 = load %struct.panel_simple*, %struct.panel_simple** %8, align 8
  %162 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %161, i32 0, i32 2
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %162, align 8
  %164 = icmp ne %struct.TYPE_6__* %163, null
  br i1 %164, label %165, label %171

165:                                              ; preds = %160
  %166 = load %struct.panel_simple*, %struct.panel_simple** %8, align 8
  %167 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %166, i32 0, i32 2
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = call i32 @put_device(i32* %169)
  br label %171

171:                                              ; preds = %165, %160
  %172 = load i32, i32* %10, align 4
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %171, %144, %91, %71, %42, %16
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local %struct.panel_simple* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @of_property_read_bool(i32, i8*) #1

declare dso_local i32 @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local %struct.TYPE_6__* @of_find_backlight_by_node(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.TYPE_5__* @of_find_i2c_adapter_by_node(%struct.device_node*) #1

declare dso_local i32 @of_get_display_timing(i32, i8*, %struct.display_timing*) #1

declare dso_local i32 @panel_simple_parse_panel_timing_node(%struct.device*, %struct.panel_simple*, %struct.display_timing*) #1

declare dso_local i32 @drm_panel_init(%struct.TYPE_7__*) #1

declare dso_local i32 @drm_panel_add(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.panel_simple*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
