; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_dc.c_atmel_hlcdc_dc_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_dc.c_atmel_hlcdc_dc_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_15__*, %struct.atmel_hlcdc_dc* }
%struct.TYPE_15__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.atmel_hlcdc_dc = type { i32, %struct.TYPE_16__*, %struct.TYPE_14__*, %struct.TYPE_13__ }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_15__ }
%struct.of_device_id = type { %struct.TYPE_14__* }

@atmel_hlcdc_of_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"invalid compatible string\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"invalid hlcdc description\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"atmel-hlcdc-dc\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"failed to enable sys_clk\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"failed to enable periph_clk\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"failed to initialize vblank\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"failed to initialize mode setting\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"failed to install IRQ handler\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @atmel_hlcdc_dc_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_hlcdc_dc_load(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca %struct.atmel_hlcdc_dc*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %11 = call %struct.platform_device* @to_platform_device(%struct.TYPE_15__* %10)
  store %struct.platform_device* %11, %struct.platform_device** %4, align 8
  %12 = load i32, i32* @atmel_hlcdc_of_match, align 4
  %13 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.of_device_id* @of_match_node(i32 %12, i32 %19)
  store %struct.of_device_id* %20, %struct.of_device_id** %5, align 8
  %21 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %22 = icmp ne %struct.of_device_id* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call i32 @dev_err(%struct.TYPE_15__* %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %205

29:                                               ; preds = %1
  %30 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %31 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %30, i32 0, i32 0
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = icmp ne %struct.TYPE_14__* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = call i32 @dev_err(%struct.TYPE_15__* %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %205

40:                                               ; preds = %29
  %41 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %42 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %41, i32 0, i32 0
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %42, align 8
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.atmel_hlcdc_dc* @devm_kzalloc(%struct.TYPE_15__* %43, i32 32, i32 %44)
  store %struct.atmel_hlcdc_dc* %45, %struct.atmel_hlcdc_dc** %6, align 8
  %46 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %6, align 8
  %47 = icmp ne %struct.atmel_hlcdc_dc* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %40
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %205

51:                                               ; preds = %40
  %52 = call i32 @alloc_ordered_workqueue(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %53 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %6, align 8
  %54 = getelementptr inbounds %struct.atmel_hlcdc_dc, %struct.atmel_hlcdc_dc* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %6, align 8
  %56 = getelementptr inbounds %struct.atmel_hlcdc_dc, %struct.atmel_hlcdc_dc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %51
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %205

62:                                               ; preds = %51
  %63 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %6, align 8
  %64 = getelementptr inbounds %struct.atmel_hlcdc_dc, %struct.atmel_hlcdc_dc* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = call i32 @init_waitqueue_head(i32* %65)
  %67 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %68 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %67, i32 0, i32 0
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %68, align 8
  %70 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %6, align 8
  %71 = getelementptr inbounds %struct.atmel_hlcdc_dc, %struct.atmel_hlcdc_dc* %70, i32 0, i32 2
  store %struct.TYPE_14__* %69, %struct.TYPE_14__** %71, align 8
  %72 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %73 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %72, i32 0, i32 0
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %75, align 8
  %77 = call %struct.TYPE_16__* @dev_get_drvdata(%struct.TYPE_12__* %76)
  %78 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %6, align 8
  %79 = getelementptr inbounds %struct.atmel_hlcdc_dc, %struct.atmel_hlcdc_dc* %78, i32 0, i32 1
  store %struct.TYPE_16__* %77, %struct.TYPE_16__** %79, align 8
  %80 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %6, align 8
  %81 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %82 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %81, i32 0, i32 1
  store %struct.atmel_hlcdc_dc* %80, %struct.atmel_hlcdc_dc** %82, align 8
  %83 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %6, align 8
  %84 = getelementptr inbounds %struct.atmel_hlcdc_dc, %struct.atmel_hlcdc_dc* %83, i32 0, i32 2
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %62
  %90 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %6, align 8
  %91 = getelementptr inbounds %struct.atmel_hlcdc_dc, %struct.atmel_hlcdc_dc* %90, i32 0, i32 1
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @clk_prepare_enable(i32 %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %89
  %99 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %100 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %99, i32 0, i32 0
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %100, align 8
  %102 = call i32 @dev_err(%struct.TYPE_15__* %101, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %199

103:                                              ; preds = %89
  br label %104

104:                                              ; preds = %103, %62
  %105 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %6, align 8
  %106 = getelementptr inbounds %struct.atmel_hlcdc_dc, %struct.atmel_hlcdc_dc* %105, i32 0, i32 1
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @clk_prepare_enable(i32 %109)
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %104
  %114 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %115 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %114, i32 0, i32 0
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %115, align 8
  %117 = call i32 @dev_err(%struct.TYPE_15__* %116, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %184

118:                                              ; preds = %104
  %119 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %120 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %119, i32 0, i32 0
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %120, align 8
  %122 = call i32 @pm_runtime_enable(%struct.TYPE_15__* %121)
  %123 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %124 = call i32 @drm_vblank_init(%struct.drm_device* %123, i32 1)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %118
  %128 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %129 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %128, i32 0, i32 0
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %129, align 8
  %131 = call i32 @dev_err(%struct.TYPE_15__* %130, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %173

132:                                              ; preds = %118
  %133 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %134 = call i32 @atmel_hlcdc_dc_modeset_init(%struct.drm_device* %133)
  store i32 %134, i32* %7, align 4
  %135 = load i32, i32* %7, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %132
  %138 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %139 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %138, i32 0, i32 0
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %139, align 8
  %141 = call i32 @dev_err(%struct.TYPE_15__* %140, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  br label %173

142:                                              ; preds = %132
  %143 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %144 = call i32 @drm_mode_config_reset(%struct.drm_device* %143)
  %145 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %146 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %145, i32 0, i32 0
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %146, align 8
  %148 = call i32 @pm_runtime_get_sync(%struct.TYPE_15__* %147)
  %149 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %150 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %6, align 8
  %151 = getelementptr inbounds %struct.atmel_hlcdc_dc, %struct.atmel_hlcdc_dc* %150, i32 0, i32 1
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @drm_irq_install(%struct.drm_device* %149, i32 %154)
  store i32 %155, i32* %7, align 4
  %156 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %157 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %156, i32 0, i32 0
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %157, align 8
  %159 = call i32 @pm_runtime_put_sync(%struct.TYPE_15__* %158)
  %160 = load i32, i32* %7, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %142
  %163 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %164 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %163, i32 0, i32 0
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %164, align 8
  %166 = call i32 @dev_err(%struct.TYPE_15__* %165, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %173

167:                                              ; preds = %142
  %168 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %169 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %170 = call i32 @platform_set_drvdata(%struct.platform_device* %168, %struct.drm_device* %169)
  %171 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %172 = call i32 @drm_kms_helper_poll_init(%struct.drm_device* %171)
  store i32 0, i32* %2, align 4
  br label %205

173:                                              ; preds = %162, %137, %127
  %174 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %175 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %174, i32 0, i32 0
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %175, align 8
  %177 = call i32 @pm_runtime_disable(%struct.TYPE_15__* %176)
  %178 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %6, align 8
  %179 = getelementptr inbounds %struct.atmel_hlcdc_dc, %struct.atmel_hlcdc_dc* %178, i32 0, i32 1
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @clk_disable_unprepare(i32 %182)
  br label %184

184:                                              ; preds = %173, %113
  %185 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %6, align 8
  %186 = getelementptr inbounds %struct.atmel_hlcdc_dc, %struct.atmel_hlcdc_dc* %185, i32 0, i32 2
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %184
  %192 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %6, align 8
  %193 = getelementptr inbounds %struct.atmel_hlcdc_dc, %struct.atmel_hlcdc_dc* %192, i32 0, i32 1
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @clk_disable_unprepare(i32 %196)
  br label %198

198:                                              ; preds = %191, %184
  br label %199

199:                                              ; preds = %198, %98
  %200 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %6, align 8
  %201 = getelementptr inbounds %struct.atmel_hlcdc_dc, %struct.atmel_hlcdc_dc* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @destroy_workqueue(i32 %202)
  %204 = load i32, i32* %7, align 4
  store i32 %204, i32* %2, align 4
  br label %205

205:                                              ; preds = %199, %167, %59, %48, %34, %23
  %206 = load i32, i32* %2, align 4
  ret i32 %206
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.TYPE_15__*) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_15__*, i8*) #1

declare dso_local %struct.atmel_hlcdc_dc* @devm_kzalloc(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @alloc_ordered_workqueue(i8*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local %struct.TYPE_16__* @dev_get_drvdata(%struct.TYPE_12__*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_15__*) #1

declare dso_local i32 @drm_vblank_init(%struct.drm_device*, i32) #1

declare dso_local i32 @atmel_hlcdc_dc_modeset_init(%struct.drm_device*) #1

declare dso_local i32 @drm_mode_config_reset(%struct.drm_device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.TYPE_15__*) #1

declare dso_local i32 @drm_irq_install(%struct.drm_device*, i32) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.TYPE_15__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.drm_device*) #1

declare dso_local i32 @drm_kms_helper_poll_init(%struct.drm_device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_15__*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
