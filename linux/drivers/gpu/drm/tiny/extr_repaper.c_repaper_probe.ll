; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_repaper.c_repaper_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_repaper.c_repaper_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32, i32 }
%struct.spi_device = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.spi_device_id = type { i32 }
%struct.of_device_id = type { i64 }
%struct.repaper_epd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, %struct.drm_display_mode*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, %struct.spi_device*, %struct.drm_device }
%struct.drm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32* }

@repaper_of_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to set dma mask %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@repaper_driver = common dso_local global i32 0, align 4
@repaper_mode_config_funcs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"panel-on\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to get gpio 'panel-on'\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"discharge\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Failed to get gpio 'discharge'\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Failed to get gpio 'reset'\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"busy\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"Failed to get gpio 'busy'\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"pervasive,thermal-zone\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Failed to get thermal zone: %s\0A\00", align 1
@repaper_e1144cs021_mode = common dso_local global %struct.drm_display_mode zeroinitializer, align 4
@repaper_e1144cs021_cs = common dso_local global i32 0, align 4
@REPAPER_BORDER_BYTE_ZERO = common dso_local global i8* null, align 8
@repaper_e1190cs021_mode = common dso_local global %struct.drm_display_mode zeroinitializer, align 4
@repaper_e1190cs021_cs = common dso_local global i32 0, align 4
@REPAPER_BORDER_BYTE_SET = common dso_local global i8* null, align 8
@repaper_e2200cs021_mode = common dso_local global %struct.drm_display_mode zeroinitializer, align 4
@repaper_e2200cs021_cs = common dso_local global i32 0, align 4
@REPAPER_BORDER_BYTE_NONE = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [7 x i8] c"border\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Failed to get gpio 'border'\0A\00", align 1
@repaper_e2271cs021_mode = common dso_local global %struct.drm_display_mode zeroinitializer, align 4
@repaper_e2271cs021_cs = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@repaper_connector_hfuncs = common dso_local global i32 0, align 4
@repaper_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_SPI = common dso_local global i32 0, align 4
@repaper_pipe_funcs = common dso_local global i32 0, align 4
@repaper_formats = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [18 x i8] c"SPI speed: %uMHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @repaper_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @repaper_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.spi_device_id*, align 8
  %6 = alloca %struct.of_device_id*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.repaper_epd*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.drm_device*, align 8
  %13 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %14 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 1
  store %struct.device* %15, %struct.device** %7, align 8
  %16 = load i32, i32* @repaper_of_match, align 4
  %17 = load %struct.device*, %struct.device** %7, align 8
  %18 = call %struct.of_device_id* @of_match_device(i32 %16, %struct.device* %17)
  store %struct.of_device_id* %18, %struct.of_device_id** %6, align 8
  %19 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %20 = icmp ne %struct.of_device_id* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %23 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %8, align 4
  br label %32

26:                                               ; preds = %1
  %27 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %28 = call %struct.spi_device_id* @spi_get_device_id(%struct.spi_device* %27)
  store %struct.spi_device_id* %28, %struct.spi_device_id** %5, align 8
  %29 = load %struct.spi_device_id*, %struct.spi_device_id** %5, align 8
  %30 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %26, %21
  %33 = load %struct.device*, %struct.device** %7, align 8
  %34 = getelementptr inbounds %struct.device, %struct.device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %32
  %38 = load %struct.device*, %struct.device** %7, align 8
  %39 = call i32 @DMA_BIT_MASK(i32 32)
  %40 = call i32 @dma_coerce_mask_and_coherent(%struct.device* %38, i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load %struct.device*, %struct.device** %7, align 8
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @dev_warn(%struct.device* %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %13, align 4
  store i32 %47, i32* %2, align 4
  br label %426

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48, %32
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.repaper_epd* @kzalloc(i32 160, i32 %50)
  store %struct.repaper_epd* %51, %struct.repaper_epd** %10, align 8
  %52 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %53 = icmp ne %struct.repaper_epd* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %426

57:                                               ; preds = %49
  %58 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %59 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %58, i32 0, i32 21
  store %struct.drm_device* %59, %struct.drm_device** %12, align 8
  %60 = load %struct.device*, %struct.device** %7, align 8
  %61 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %62 = call i32 @devm_drm_dev_init(%struct.device* %60, %struct.drm_device* %61, i32* @repaper_driver)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %57
  %66 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %67 = call i32 @kfree(%struct.repaper_epd* %66)
  %68 = load i32, i32* %13, align 4
  store i32 %68, i32* %2, align 4
  br label %426

69:                                               ; preds = %57
  %70 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %71 = call i32 @drm_mode_config_init(%struct.drm_device* %70)
  %72 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %73 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 4
  store i32* @repaper_mode_config_funcs, i32** %74, align 8
  %75 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %76 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %77 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %76, i32 0, i32 20
  store %struct.spi_device* %75, %struct.spi_device** %77, align 8
  %78 = load %struct.device*, %struct.device** %7, align 8
  %79 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %80 = call i8* @devm_gpiod_get(%struct.device* %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %82 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %81, i32 0, i32 19
  store i8* %80, i8** %82, align 8
  %83 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %84 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %83, i32 0, i32 19
  %85 = load i8*, i8** %84, align 8
  %86 = call i64 @IS_ERR(i8* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %102

88:                                               ; preds = %69
  %89 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %90 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %89, i32 0, i32 19
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @PTR_ERR(i8* %91)
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* @EPROBE_DEFER, align 4
  %95 = sub nsw i32 0, %94
  %96 = icmp ne i32 %93, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %88
  %98 = load %struct.device*, %struct.device** %7, align 8
  %99 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %98, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %88
  %101 = load i32, i32* %13, align 4
  store i32 %101, i32* %2, align 4
  br label %426

102:                                              ; preds = %69
  %103 = load %struct.device*, %struct.device** %7, align 8
  %104 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %105 = call i8* @devm_gpiod_get(%struct.device* %103, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %104)
  %106 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %107 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %106, i32 0, i32 18
  store i8* %105, i8** %107, align 8
  %108 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %109 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %108, i32 0, i32 18
  %110 = load i8*, i8** %109, align 8
  %111 = call i64 @IS_ERR(i8* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %127

113:                                              ; preds = %102
  %114 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %115 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %114, i32 0, i32 18
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @PTR_ERR(i8* %116)
  store i32 %117, i32* %13, align 4
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* @EPROBE_DEFER, align 4
  %120 = sub nsw i32 0, %119
  %121 = icmp ne i32 %118, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %113
  %123 = load %struct.device*, %struct.device** %7, align 8
  %124 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %123, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %125

125:                                              ; preds = %122, %113
  %126 = load i32, i32* %13, align 4
  store i32 %126, i32* %2, align 4
  br label %426

127:                                              ; preds = %102
  %128 = load %struct.device*, %struct.device** %7, align 8
  %129 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %130 = call i8* @devm_gpiod_get(%struct.device* %128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %129)
  %131 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %132 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %131, i32 0, i32 17
  store i8* %130, i8** %132, align 8
  %133 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %134 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %133, i32 0, i32 17
  %135 = load i8*, i8** %134, align 8
  %136 = call i64 @IS_ERR(i8* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %152

138:                                              ; preds = %127
  %139 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %140 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %139, i32 0, i32 17
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @PTR_ERR(i8* %141)
  store i32 %142, i32* %13, align 4
  %143 = load i32, i32* %13, align 4
  %144 = load i32, i32* @EPROBE_DEFER, align 4
  %145 = sub nsw i32 0, %144
  %146 = icmp ne i32 %143, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %138
  %148 = load %struct.device*, %struct.device** %7, align 8
  %149 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %148, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %150

150:                                              ; preds = %147, %138
  %151 = load i32, i32* %13, align 4
  store i32 %151, i32* %2, align 4
  br label %426

152:                                              ; preds = %127
  %153 = load %struct.device*, %struct.device** %7, align 8
  %154 = load i32, i32* @GPIOD_IN, align 4
  %155 = call i8* @devm_gpiod_get(%struct.device* %153, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %154)
  %156 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %157 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %156, i32 0, i32 16
  store i8* %155, i8** %157, align 8
  %158 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %159 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %158, i32 0, i32 16
  %160 = load i8*, i8** %159, align 8
  %161 = call i64 @IS_ERR(i8* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %177

163:                                              ; preds = %152
  %164 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %165 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %164, i32 0, i32 16
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 @PTR_ERR(i8* %166)
  store i32 %167, i32* %13, align 4
  %168 = load i32, i32* %13, align 4
  %169 = load i32, i32* @EPROBE_DEFER, align 4
  %170 = sub nsw i32 0, %169
  %171 = icmp ne i32 %168, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %163
  %173 = load %struct.device*, %struct.device** %7, align 8
  %174 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %173, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  br label %175

175:                                              ; preds = %172, %163
  %176 = load i32, i32* %13, align 4
  store i32 %176, i32* %2, align 4
  br label %426

177:                                              ; preds = %152
  %178 = load %struct.device*, %struct.device** %7, align 8
  %179 = call i32 @device_property_read_string(%struct.device* %178, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i8** %9)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %200, label %181

181:                                              ; preds = %177
  %182 = load i8*, i8** %9, align 8
  %183 = call i8* @thermal_zone_get_zone_by_name(i8* %182)
  %184 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %185 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %184, i32 0, i32 15
  store i8* %183, i8** %185, align 8
  %186 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %187 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %186, i32 0, i32 15
  %188 = load i8*, i8** %187, align 8
  %189 = call i64 @IS_ERR(i8* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %199

191:                                              ; preds = %181
  %192 = load %struct.device*, %struct.device** %7, align 8
  %193 = load i8*, i8** %9, align 8
  %194 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %192, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i8* %193)
  %195 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %196 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %195, i32 0, i32 15
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 @PTR_ERR(i8* %197)
  store i32 %198, i32* %2, align 4
  br label %426

199:                                              ; preds = %181
  br label %200

200:                                              ; preds = %199, %177
  %201 = load i32, i32* %8, align 4
  switch i32 %201, label %287 [
    i32 131, label %202
    i32 130, label %217
    i32 129, label %232
    i32 128, label %247
  ]

202:                                              ; preds = %200
  store %struct.drm_display_mode* @repaper_e1144cs021_mode, %struct.drm_display_mode** %4, align 8
  %203 = load i32, i32* @repaper_e1144cs021_cs, align 4
  %204 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %205 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %204, i32 0, i32 13
  store i32 %203, i32* %205, align 8
  %206 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %207 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %206, i32 0, i32 0
  store i32 480, i32* %207, align 8
  %208 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %209 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %208, i32 0, i32 1
  store i32 24, i32* %209, align 4
  %210 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %211 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %210, i32 0, i32 2
  store i32 1, i32* %211, align 8
  %212 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %213 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %212, i32 0, i32 3
  store i32 0, i32* %213, align 4
  %214 = load i8*, i8** @REPAPER_BORDER_BYTE_ZERO, align 8
  %215 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %216 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %215, i32 0, i32 12
  store i8* %214, i8** %216, align 8
  br label %290

217:                                              ; preds = %200
  store %struct.drm_display_mode* @repaper_e1190cs021_mode, %struct.drm_display_mode** %4, align 8
  %218 = load i32, i32* @repaper_e1190cs021_cs, align 4
  %219 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %220 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %219, i32 0, i32 13
  store i32 %218, i32* %220, align 8
  %221 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %222 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %221, i32 0, i32 0
  store i32 480, i32* %222, align 8
  %223 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %224 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %223, i32 0, i32 1
  store i32 16, i32* %224, align 4
  %225 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %226 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %225, i32 0, i32 2
  store i32 0, i32* %226, align 8
  %227 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %228 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %227, i32 0, i32 3
  store i32 0, i32* %228, align 4
  %229 = load i8*, i8** @REPAPER_BORDER_BYTE_SET, align 8
  %230 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %231 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %230, i32 0, i32 12
  store i8* %229, i8** %231, align 8
  br label %290

232:                                              ; preds = %200
  store %struct.drm_display_mode* @repaper_e2200cs021_mode, %struct.drm_display_mode** %4, align 8
  %233 = load i32, i32* @repaper_e2200cs021_cs, align 4
  %234 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %235 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %234, i32 0, i32 13
  store i32 %233, i32* %235, align 8
  %236 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %237 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %236, i32 0, i32 0
  store i32 480, i32* %237, align 8
  %238 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %239 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %238, i32 0, i32 1
  store i32 24, i32* %239, align 4
  %240 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %241 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %240, i32 0, i32 2
  store i32 1, i32* %241, align 8
  %242 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %243 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %242, i32 0, i32 3
  store i32 1, i32* %243, align 4
  %244 = load i8*, i8** @REPAPER_BORDER_BYTE_NONE, align 8
  %245 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %246 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %245, i32 0, i32 12
  store i8* %244, i8** %246, align 8
  br label %290

247:                                              ; preds = %200
  %248 = load %struct.device*, %struct.device** %7, align 8
  %249 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %250 = call i8* @devm_gpiod_get(%struct.device* %248, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %249)
  %251 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %252 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %251, i32 0, i32 14
  store i8* %250, i8** %252, align 8
  %253 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %254 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %253, i32 0, i32 14
  %255 = load i8*, i8** %254, align 8
  %256 = call i64 @IS_ERR(i8* %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %272

258:                                              ; preds = %247
  %259 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %260 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %259, i32 0, i32 14
  %261 = load i8*, i8** %260, align 8
  %262 = call i32 @PTR_ERR(i8* %261)
  store i32 %262, i32* %13, align 4
  %263 = load i32, i32* %13, align 4
  %264 = load i32, i32* @EPROBE_DEFER, align 4
  %265 = sub nsw i32 0, %264
  %266 = icmp ne i32 %263, %265
  br i1 %266, label %267, label %270

267:                                              ; preds = %258
  %268 = load %struct.device*, %struct.device** %7, align 8
  %269 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %268, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  br label %270

270:                                              ; preds = %267, %258
  %271 = load i32, i32* %13, align 4
  store i32 %271, i32* %2, align 4
  br label %426

272:                                              ; preds = %247
  store %struct.drm_display_mode* @repaper_e2271cs021_mode, %struct.drm_display_mode** %4, align 8
  %273 = load i32, i32* @repaper_e2271cs021_cs, align 4
  %274 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %275 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %274, i32 0, i32 13
  store i32 %273, i32* %275, align 8
  %276 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %277 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %276, i32 0, i32 0
  store i32 630, i32* %277, align 8
  %278 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %279 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %278, i32 0, i32 1
  store i32 44, i32* %279, align 4
  %280 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %281 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %280, i32 0, i32 2
  store i32 1, i32* %281, align 8
  %282 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %283 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %282, i32 0, i32 3
  store i32 1, i32* %283, align 4
  %284 = load i8*, i8** @REPAPER_BORDER_BYTE_NONE, align 8
  %285 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %286 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %285, i32 0, i32 12
  store i8* %284, i8** %286, align 8
  br label %290

287:                                              ; preds = %200
  %288 = load i32, i32* @ENODEV, align 4
  %289 = sub nsw i32 0, %288
  store i32 %289, i32* %2, align 4
  br label %426

290:                                              ; preds = %272, %232, %217, %202
  %291 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %292 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %293 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %292, i32 0, i32 11
  store %struct.drm_display_mode* %291, %struct.drm_display_mode** %293, align 8
  %294 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %295 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %298 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %297, i32 0, i32 4
  store i32 %296, i32* %298, align 8
  %299 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %300 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %303 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %302, i32 0, i32 5
  store i32 %301, i32* %303, align 4
  %304 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %305 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %308 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %307, i32 0, i32 6
  store i32 %306, i32* %308, align 8
  %309 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %310 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %309, i32 0, i32 4
  %311 = load i32, i32* %310, align 8
  %312 = mul nsw i32 2, %311
  %313 = sdiv i32 %312, 8
  %314 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %315 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = add nsw i32 %313, %316
  %318 = add nsw i32 %317, 2
  %319 = sext i32 %318 to i64
  store i64 %319, i64* %11, align 8
  %320 = load %struct.device*, %struct.device** %7, align 8
  %321 = load i64, i64* %11, align 8
  %322 = trunc i64 %321 to i32
  %323 = load i32, i32* @GFP_KERNEL, align 4
  %324 = call i8* @devm_kzalloc(%struct.device* %320, i32 %322, i32 %323)
  %325 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %326 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %325, i32 0, i32 10
  store i8* %324, i8** %326, align 8
  %327 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %328 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %327, i32 0, i32 10
  %329 = load i8*, i8** %328, align 8
  %330 = icmp ne i8* %329, null
  br i1 %330, label %334, label %331

331:                                              ; preds = %290
  %332 = load i32, i32* @ENOMEM, align 4
  %333 = sub nsw i32 0, %332
  store i32 %333, i32* %2, align 4
  br label %426

334:                                              ; preds = %290
  %335 = load %struct.device*, %struct.device** %7, align 8
  %336 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %337 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %336, i32 0, i32 4
  %338 = load i32, i32* %337, align 8
  %339 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %340 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %339, i32 0, i32 5
  %341 = load i32, i32* %340, align 4
  %342 = mul nsw i32 %338, %341
  %343 = sdiv i32 %342, 8
  %344 = load i32, i32* @GFP_KERNEL, align 4
  %345 = call i8* @devm_kzalloc(%struct.device* %335, i32 %343, i32 %344)
  %346 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %347 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %346, i32 0, i32 9
  store i8* %345, i8** %347, align 8
  %348 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %349 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %348, i32 0, i32 9
  %350 = load i8*, i8** %349, align 8
  %351 = icmp ne i8* %350, null
  br i1 %351, label %355, label %352

352:                                              ; preds = %334
  %353 = load i32, i32* @ENOMEM, align 4
  %354 = sub nsw i32 0, %353
  store i32 %354, i32* %2, align 4
  br label %426

355:                                              ; preds = %334
  %356 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %357 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  %359 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %360 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %360, i32 0, i32 0
  store i32 %358, i32* %361, align 8
  %362 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %363 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 4
  %365 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %366 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %366, i32 0, i32 1
  store i32 %364, i32* %367, align 4
  %368 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %369 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 4
  %371 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %372 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %372, i32 0, i32 2
  store i32 %370, i32* %373, align 8
  %374 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %375 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 4
  %377 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %378 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %378, i32 0, i32 3
  store i32 %376, i32* %379, align 4
  %380 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %381 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %380, i32 0, i32 7
  %382 = call i32 @drm_connector_helper_add(i32* %381, i32* @repaper_connector_hfuncs)
  %383 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %384 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %385 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %384, i32 0, i32 7
  %386 = load i32, i32* @DRM_MODE_CONNECTOR_SPI, align 4
  %387 = call i32 @drm_connector_init(%struct.drm_device* %383, i32* %385, i32* @repaper_connector_funcs, i32 %386)
  store i32 %387, i32* %13, align 4
  %388 = load i32, i32* %13, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %392

390:                                              ; preds = %355
  %391 = load i32, i32* %13, align 4
  store i32 %391, i32* %2, align 4
  br label %426

392:                                              ; preds = %355
  %393 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %394 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %395 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %394, i32 0, i32 8
  %396 = load i32, i32* @repaper_formats, align 4
  %397 = load i32, i32* @repaper_formats, align 4
  %398 = call i32 @ARRAY_SIZE(i32 %397)
  %399 = load %struct.repaper_epd*, %struct.repaper_epd** %10, align 8
  %400 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %399, i32 0, i32 7
  %401 = call i32 @drm_simple_display_pipe_init(%struct.drm_device* %393, i32* %395, i32* @repaper_pipe_funcs, i32 %396, i32 %398, i32* null, i32* %400)
  store i32 %401, i32* %13, align 4
  %402 = load i32, i32* %13, align 4
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %406

404:                                              ; preds = %392
  %405 = load i32, i32* %13, align 4
  store i32 %405, i32* %2, align 4
  br label %426

406:                                              ; preds = %392
  %407 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %408 = call i32 @drm_mode_config_reset(%struct.drm_device* %407)
  %409 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %410 = call i32 @drm_dev_register(%struct.drm_device* %409, i32 0)
  store i32 %410, i32* %13, align 4
  %411 = load i32, i32* %13, align 4
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %415

413:                                              ; preds = %406
  %414 = load i32, i32* %13, align 4
  store i32 %414, i32* %2, align 4
  br label %426

415:                                              ; preds = %406
  %416 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %417 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %418 = call i32 @spi_set_drvdata(%struct.spi_device* %416, %struct.drm_device* %417)
  %419 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %420 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 4
  %422 = sdiv i32 %421, 1000000
  %423 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i32 %422)
  %424 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %425 = call i32 @drm_fbdev_generic_setup(%struct.drm_device* %424, i32 0)
  store i32 0, i32* %2, align 4
  br label %426

426:                                              ; preds = %415, %413, %404, %390, %352, %331, %287, %270, %191, %175, %150, %125, %100, %65, %54, %43
  %427 = load i32, i32* %2, align 4
  ret i32 %427
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local %struct.spi_device_id* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @dma_coerce_mask_and_coherent(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local %struct.repaper_epd* @kzalloc(i32, i32) #1

declare dso_local i32 @devm_drm_dev_init(%struct.device*, %struct.drm_device*, i32*) #1

declare dso_local i32 @kfree(%struct.repaper_epd*) #1

declare dso_local i32 @drm_mode_config_init(%struct.drm_device*) #1

declare dso_local i8* @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*, ...) #1

declare dso_local i32 @device_property_read_string(%struct.device*, i8*, i8**) #1

declare dso_local i8* @thermal_zone_get_zone_by_name(i8*) #1

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @drm_connector_helper_add(i32*, i32*) #1

declare dso_local i32 @drm_connector_init(%struct.drm_device*, i32*, i32*, i32) #1

declare dso_local i32 @drm_simple_display_pipe_init(%struct.drm_device*, i32*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @drm_mode_config_reset(%struct.drm_device*) #1

declare dso_local i32 @drm_dev_register(%struct.drm_device*, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.drm_device*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

declare dso_local i32 @drm_fbdev_generic_setup(%struct.drm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
