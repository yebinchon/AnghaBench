; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/displays/extr_panel-dsi-cm.c_dsicm_probe_of.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/displays/extr_panel-dsi-cm.c_dsicm_probe_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.panel_drv_data = type { i32, i32, i32*, i32*, i64, i64, %struct.TYPE_7__, i32*, i32* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.display_timing = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"reset gpio request failed: %d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"te\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"TE gpio request failed: %d\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"panel-timing\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"failed to get video timing, using defaults\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"width-mm\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"height-mm\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"vpnl\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"vddi\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"backlight\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dsicm_probe_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsicm_probe_of(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.panel_drv_data*, align 8
  %7 = alloca %struct.display_timing, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = call %struct.panel_drv_data* @platform_get_drvdata(%struct.platform_device* %13)
  store %struct.panel_drv_data* %14, %struct.panel_drv_data** %6, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %18 = call i32* @devm_gpiod_get(%struct.TYPE_8__* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %20 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %19, i32 0, i32 8
  store i32* %18, i32** %20, align 8
  %21 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %22 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %21, i32 0, i32 8
  %23 = load i32*, i32** %22, align 8
  %24 = call i64 @IS_ERR(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %1
  %27 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %28 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %27, i32 0, i32 8
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @PTR_ERR(i32* %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @dev_err(%struct.TYPE_8__* %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %2, align 4
  br label %179

36:                                               ; preds = %1
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = load i32, i32* @GPIOD_IN, align 4
  %40 = call i32* @devm_gpiod_get_optional(%struct.TYPE_8__* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %42 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %41, i32 0, i32 7
  store i32* %40, i32** %42, align 8
  %43 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %44 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %43, i32 0, i32 7
  %45 = load i32*, i32** %44, align 8
  %46 = call i64 @IS_ERR(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %36
  %49 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %50 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %49, i32 0, i32 7
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @PTR_ERR(i32* %51)
  store i32 %52, i32* %8, align 4
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @dev_err(%struct.TYPE_8__* %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %2, align 4
  br label %179

58:                                               ; preds = %36
  %59 = load %struct.device_node*, %struct.device_node** %4, align 8
  %60 = call i32 @of_get_display_timing(%struct.device_node* %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), %struct.display_timing* %7)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %87, label %63

63:                                               ; preds = %58
  %64 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %65 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %64, i32 0, i32 6
  %66 = call i32 @videomode_from_timing(%struct.display_timing* %7, %struct.TYPE_7__* %65)
  %67 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %68 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %67, i32 0, i32 6
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %86, label %72

72:                                               ; preds = %63
  %73 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %74 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %73, i32 0, i32 6
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %78 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %77, i32 0, i32 6
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = mul nsw i32 %76, %80
  %82 = mul nsw i32 %81, 60
  %83 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %84 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %83, i32 0, i32 6
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 8
  br label %86

86:                                               ; preds = %72, %63
  br label %91

87:                                               ; preds = %58
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = call i32 @dev_warn(%struct.TYPE_8__* %89, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  br label %91

91:                                               ; preds = %87, %86
  %92 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %93 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %92, i32 0, i32 5
  store i64 0, i64* %93, align 8
  %94 = load %struct.device_node*, %struct.device_node** %4, align 8
  %95 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %96 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %95, i32 0, i32 5
  %97 = call i32 @of_property_read_u32(%struct.device_node* %94, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i64* %96)
  %98 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %99 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %98, i32 0, i32 4
  store i64 0, i64* %99, align 8
  %100 = load %struct.device_node*, %struct.device_node** %4, align 8
  %101 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %102 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %101, i32 0, i32 4
  %103 = call i32 @of_property_read_u32(%struct.device_node* %100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i64* %102)
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = call i8* @devm_regulator_get_optional(%struct.TYPE_8__* %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %107 = bitcast i8* %106 to i32*
  %108 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %109 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %108, i32 0, i32 3
  store i32* %107, i32** %109, align 8
  %110 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %111 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %110, i32 0, i32 3
  %112 = load i32*, i32** %111, align 8
  %113 = call i64 @IS_ERR(i32* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %91
  %116 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %117 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %116, i32 0, i32 3
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @PTR_ERR(i32* %118)
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @EPROBE_DEFER, align 4
  %122 = sub nsw i32 0, %121
  %123 = icmp eq i32 %120, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %115
  %125 = load i32, i32* %8, align 4
  store i32 %125, i32* %2, align 4
  br label %179

126:                                              ; preds = %115
  %127 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %128 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %127, i32 0, i32 3
  store i32* null, i32** %128, align 8
  br label %129

129:                                              ; preds = %126, %91
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %130, i32 0, i32 0
  %132 = call i8* @devm_regulator_get_optional(%struct.TYPE_8__* %131, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %133 = bitcast i8* %132 to i32*
  %134 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %135 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %134, i32 0, i32 2
  store i32* %133, i32** %135, align 8
  %136 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %137 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = call i64 @IS_ERR(i32* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %155

141:                                              ; preds = %129
  %142 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %143 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = call i32 @PTR_ERR(i32* %144)
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* @EPROBE_DEFER, align 4
  %148 = sub nsw i32 0, %147
  %149 = icmp eq i32 %146, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %141
  %151 = load i32, i32* %8, align 4
  store i32 %151, i32* %2, align 4
  br label %179

152:                                              ; preds = %141
  %153 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %154 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %153, i32 0, i32 2
  store i32* null, i32** %154, align 8
  br label %155

155:                                              ; preds = %152, %129
  %156 = load %struct.device_node*, %struct.device_node** %4, align 8
  %157 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %156, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 0)
  store %struct.device_node* %157, %struct.device_node** %5, align 8
  %158 = load %struct.device_node*, %struct.device_node** %5, align 8
  %159 = icmp ne %struct.device_node* %158, null
  br i1 %159, label %160, label %175

160:                                              ; preds = %155
  %161 = load %struct.device_node*, %struct.device_node** %5, align 8
  %162 = call i32 @of_find_backlight_by_node(%struct.device_node* %161)
  %163 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %164 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  %165 = load %struct.device_node*, %struct.device_node** %5, align 8
  %166 = call i32 @of_node_put(%struct.device_node* %165)
  %167 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %168 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %160
  %172 = load i32, i32* @EPROBE_DEFER, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %2, align 4
  br label %179

174:                                              ; preds = %160
  br label %178

175:                                              ; preds = %155
  %176 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %177 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %176, i32 0, i32 0
  store i32 1, i32* %177, align 8
  br label %178

178:                                              ; preds = %175, %174
  store i32 0, i32* %2, align 4
  br label %179

179:                                              ; preds = %178, %171, %150, %124, %48, %26
  %180 = load i32, i32* %2, align 4
  ret i32 %180
}

declare dso_local %struct.panel_drv_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32* @devm_gpiod_get(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32* @devm_gpiod_get_optional(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @of_get_display_timing(%struct.device_node*, i8*, %struct.display_timing*) #1

declare dso_local i32 @videomode_from_timing(%struct.display_timing*, %struct.TYPE_7__*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i8* @devm_regulator_get_optional(%struct.TYPE_8__*, i8*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @of_find_backlight_by_node(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
