; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_drv.c_tilcdc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_drv.c_tilcdc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_driver = type { i32 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.drm_device = type { %struct.tilcdc_drm_private* }
%struct.tilcdc_drm_private = type { i32, i8*, i8*, i8*, i32, i64, i64, i32, i32, %struct.TYPE_2__, i8*, i8*, %struct.drm_device*, i32, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.platform_device = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"tilcdc\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to get memory resource\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"failed to ioremap\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"fck\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"failed to get functional clock\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"max-bandwidth\00", align 1
@TILCDC_DEFAULT_MAX_BANDWIDTH = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"Maximum Bandwidth Value %d\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"max-width\00", align 1
@TILCDC_DEFAULT_MAX_WIDTH = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [46 x i8] c"Maximum Horizontal Pixel Width Value %dpixels\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"max-pixelclock\00", align 1
@TILCDC_DEFAULT_MAX_PIXELCLOCK = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [32 x i8] c"Maximum Pixel Clock Value %dKHz\00", align 1
@LCDC_PID_REG = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [60 x i8] c"Unknown PID Reg value 0x%08x, defaulting to LCD revision 1\0A\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"Revision 1 LCDC supports only RGB565 format\00", align 1
@tilcdc_rev1_formats = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"blue-and-red-wiring\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"crossed\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"Configured for crossed blue and red wires\00", align 1
@tilcdc_crossed_formats = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [9 x i8] c"straight\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"Configured for straight blue and red wires\00", align 1
@tilcdc_straight_formats = common dso_local global i8* null, align 8
@.str.19 = private unnamed_addr constant [50 x i8] c"Blue and red wiring '%s' unknown, use legacy mode\00", align 1
@tilcdc_legacy_formats = common dso_local global i8* null, align 8
@.str.20 = private unnamed_addr constant [23 x i8] c"failed to create crtc\0A\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"no encoders/connectors found\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [29 x i8] c"failed to initialize vblank\0A\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"failed to install IRQ handler\0A\00", align 1
@CPUFREQ_TRANSITION_NOTIFIER = common dso_local global i32 0, align 4
@cpufreq_transition = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_driver*, %struct.device*)* @tilcdc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tilcdc_init(%struct.drm_driver* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_driver*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.tilcdc_drm_private*, align 8
  %10 = alloca %struct.resource*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.drm_driver* %0, %struct.drm_driver** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.platform_device* @to_platform_device(%struct.device* %14)
  store %struct.platform_device* %15, %struct.platform_device** %7, align 8
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = load %struct.device_node*, %struct.device_node** %17, align 8
  store %struct.device_node* %18, %struct.device_node** %8, align 8
  store i32 0, i32* %11, align 4
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.tilcdc_drm_private* @devm_kzalloc(%struct.device* %19, i32 104, i32 %20)
  store %struct.tilcdc_drm_private* %21, %struct.tilcdc_drm_private** %9, align 8
  %22 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %9, align 8
  %23 = icmp ne %struct.tilcdc_drm_private* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %320

27:                                               ; preds = %2
  %28 = load %struct.drm_driver*, %struct.drm_driver** %4, align 8
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = call %struct.drm_device* @drm_dev_alloc(%struct.drm_driver* %28, %struct.device* %29)
  store %struct.drm_device* %30, %struct.drm_device** %6, align 8
  %31 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %32 = call i64 @IS_ERR(%struct.drm_device* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %36 = call i32 @PTR_ERR(%struct.drm_device* %35)
  store i32 %36, i32* %3, align 4
  br label %320

37:                                               ; preds = %27
  %38 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %9, align 8
  %39 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %40 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %39, i32 0, i32 0
  store %struct.tilcdc_drm_private* %38, %struct.tilcdc_drm_private** %40, align 8
  %41 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %42 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %43 = call i32 @platform_set_drvdata(%struct.platform_device* %41, %struct.drm_device* %42)
  %44 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %45 = call i32 @drm_mode_config_init(%struct.drm_device* %44)
  %46 = load %struct.device*, %struct.device** %5, align 8
  %47 = call i64 @tilcdc_get_external_components(%struct.device* %46, i32* null)
  %48 = icmp sgt i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %9, align 8
  %51 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = call i32 @alloc_ordered_workqueue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  %53 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %9, align 8
  %54 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %53, i32 0, i32 14
  store i32 %52, i32* %54, align 4
  %55 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %9, align 8
  %56 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %55, i32 0, i32 14
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %37
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %12, align 4
  br label %316

62:                                               ; preds = %37
  %63 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %64 = load i32, i32* @IORESOURCE_MEM, align 4
  %65 = call %struct.resource* @platform_get_resource(%struct.platform_device* %63, i32 %64, i32 0)
  store %struct.resource* %65, %struct.resource** %10, align 8
  %66 = load %struct.resource*, %struct.resource** %10, align 8
  %67 = icmp ne %struct.resource* %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %62
  %69 = load %struct.device*, %struct.device** %5, align 8
  %70 = call i32 @dev_err(%struct.device* %69, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %12, align 4
  br label %316

73:                                               ; preds = %62
  %74 = load %struct.resource*, %struct.resource** %10, align 8
  %75 = getelementptr inbounds %struct.resource, %struct.resource* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.resource*, %struct.resource** %10, align 8
  %78 = call i32 @resource_size(%struct.resource* %77)
  %79 = call i32 @ioremap_nocache(i32 %76, i32 %78)
  %80 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %9, align 8
  %81 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %80, i32 0, i32 13
  store i32 %79, i32* %81, align 8
  %82 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %9, align 8
  %83 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %82, i32 0, i32 13
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %73
  %87 = load %struct.device*, %struct.device** %5, align 8
  %88 = call i32 @dev_err(%struct.device* %87, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %12, align 4
  br label %316

91:                                               ; preds = %73
  %92 = load %struct.device*, %struct.device** %5, align 8
  %93 = call %struct.drm_device* @clk_get(%struct.device* %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %94 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %9, align 8
  %95 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %94, i32 0, i32 12
  store %struct.drm_device* %93, %struct.drm_device** %95, align 8
  %96 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %9, align 8
  %97 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %96, i32 0, i32 12
  %98 = load %struct.drm_device*, %struct.drm_device** %97, align 8
  %99 = call i64 @IS_ERR(%struct.drm_device* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %91
  %102 = load %struct.device*, %struct.device** %5, align 8
  %103 = call i32 @dev_err(%struct.device* %102, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %104 = load i32, i32* @ENODEV, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %12, align 4
  br label %316

106:                                              ; preds = %91
  %107 = load %struct.device_node*, %struct.device_node** %8, align 8
  %108 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %9, align 8
  %109 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %108, i32 0, i32 1
  %110 = call i64 @of_property_read_u32(%struct.device_node* %107, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load i8*, i8** @TILCDC_DEFAULT_MAX_BANDWIDTH, align 8
  %114 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %9, align 8
  %115 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %114, i32 0, i32 1
  store i8* %113, i8** %115, align 8
  br label %116

116:                                              ; preds = %112, %106
  %117 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %9, align 8
  %118 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* %119)
  %121 = load %struct.device_node*, %struct.device_node** %8, align 8
  %122 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %9, align 8
  %123 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %122, i32 0, i32 2
  %124 = call i64 @of_property_read_u32(%struct.device_node* %121, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8** %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %116
  %127 = load i8*, i8** @TILCDC_DEFAULT_MAX_WIDTH, align 8
  %128 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %9, align 8
  %129 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %128, i32 0, i32 2
  store i8* %127, i8** %129, align 8
  br label %130

130:                                              ; preds = %126, %116
  %131 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %9, align 8
  %132 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %131, i32 0, i32 2
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0), i8* %133)
  %135 = load %struct.device_node*, %struct.device_node** %8, align 8
  %136 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %9, align 8
  %137 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %136, i32 0, i32 3
  %138 = call i64 @of_property_read_u32(%struct.device_node* %135, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8** %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %130
  %141 = load i8*, i8** @TILCDC_DEFAULT_MAX_PIXELCLOCK, align 8
  %142 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %9, align 8
  %143 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %142, i32 0, i32 3
  store i8* %141, i8** %143, align 8
  br label %144

144:                                              ; preds = %140, %130
  %145 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %9, align 8
  %146 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %145, i32 0, i32 3
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i8* %147)
  %149 = load %struct.device*, %struct.device** %5, align 8
  %150 = call i32 @pm_runtime_enable(%struct.device* %149)
  %151 = load %struct.device*, %struct.device** %5, align 8
  %152 = call i32 @pm_runtime_get_sync(%struct.device* %151)
  %153 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %154 = load i32, i32* @LCDC_PID_REG, align 4
  %155 = call i32 @tilcdc_read(%struct.drm_device* %153, i32 %154)
  switch i32 %155, label %162 [
    i32 1276117250, label %156
    i32 1327499264, label %159
    i32 1327501312, label %159
  ]

156:                                              ; preds = %144
  %157 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %9, align 8
  %158 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %157, i32 0, i32 4
  store i32 1, i32* %158, align 8
  br label %170

159:                                              ; preds = %144, %144
  %160 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %9, align 8
  %161 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %160, i32 0, i32 4
  store i32 2, i32* %161, align 8
  br label %170

162:                                              ; preds = %144
  %163 = load %struct.device*, %struct.device** %5, align 8
  %164 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %165 = load i32, i32* @LCDC_PID_REG, align 4
  %166 = call i32 @tilcdc_read(%struct.drm_device* %164, i32 %165)
  %167 = call i32 @dev_warn(%struct.device* %163, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.11, i64 0, i64 0), i32 %166)
  %168 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %9, align 8
  %169 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %168, i32 0, i32 4
  store i32 1, i32* %169, align 8
  br label %170

170:                                              ; preds = %162, %159, %156
  %171 = load %struct.device*, %struct.device** %5, align 8
  %172 = call i32 @pm_runtime_put_sync(%struct.device* %171)
  %173 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %9, align 8
  %174 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %177, label %186

177:                                              ; preds = %170
  %178 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0))
  %179 = load i8*, i8** @tilcdc_rev1_formats, align 8
  %180 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %9, align 8
  %181 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %180, i32 0, i32 11
  store i8* %179, i8** %181, align 8
  %182 = load i8*, i8** @tilcdc_rev1_formats, align 8
  %183 = call i8* @ARRAY_SIZE(i8* %182)
  %184 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %9, align 8
  %185 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %184, i32 0, i32 10
  store i8* %183, i8** %185, align 8
  store i32 16, i32* %11, align 4
  br label %226

186:                                              ; preds = %170
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8** %13, align 8
  %187 = load %struct.device_node*, %struct.device_node** %8, align 8
  %188 = call i32 @of_property_read_string(%struct.device_node* %187, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i8** %13)
  %189 = load i8*, i8** %13, align 8
  %190 = call i64 @strcmp(i8* %189, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  %191 = icmp eq i64 0, %190
  br i1 %191, label %192, label %201

192:                                              ; preds = %186
  %193 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.16, i64 0, i64 0))
  %194 = load i8*, i8** @tilcdc_crossed_formats, align 8
  %195 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %9, align 8
  %196 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %195, i32 0, i32 11
  store i8* %194, i8** %196, align 8
  %197 = load i8*, i8** @tilcdc_crossed_formats, align 8
  %198 = call i8* @ARRAY_SIZE(i8* %197)
  %199 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %9, align 8
  %200 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %199, i32 0, i32 10
  store i8* %198, i8** %200, align 8
  store i32 32, i32* %11, align 4
  br label %225

201:                                              ; preds = %186
  %202 = load i8*, i8** %13, align 8
  %203 = call i64 @strcmp(i8* %202, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  %204 = icmp eq i64 0, %203
  br i1 %204, label %205, label %214

205:                                              ; preds = %201
  %206 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.18, i64 0, i64 0))
  %207 = load i8*, i8** @tilcdc_straight_formats, align 8
  %208 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %9, align 8
  %209 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %208, i32 0, i32 11
  store i8* %207, i8** %209, align 8
  %210 = load i8*, i8** @tilcdc_straight_formats, align 8
  %211 = call i8* @ARRAY_SIZE(i8* %210)
  %212 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %9, align 8
  %213 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %212, i32 0, i32 10
  store i8* %211, i8** %213, align 8
  store i32 16, i32* %11, align 4
  br label %224

214:                                              ; preds = %201
  %215 = load i8*, i8** %13, align 8
  %216 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.19, i64 0, i64 0), i8* %215)
  %217 = load i8*, i8** @tilcdc_legacy_formats, align 8
  %218 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %9, align 8
  %219 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %218, i32 0, i32 11
  store i8* %217, i8** %219, align 8
  %220 = load i8*, i8** @tilcdc_legacy_formats, align 8
  %221 = call i8* @ARRAY_SIZE(i8* %220)
  %222 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %9, align 8
  %223 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %222, i32 0, i32 10
  store i8* %221, i8** %223, align 8
  store i32 16, i32* %11, align 4
  br label %224

224:                                              ; preds = %214, %205
  br label %225

225:                                              ; preds = %224, %192
  br label %226

226:                                              ; preds = %225, %177
  %227 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %228 = call i32 @tilcdc_crtc_create(%struct.drm_device* %227)
  store i32 %228, i32* %12, align 4
  %229 = load i32, i32* %12, align 4
  %230 = icmp slt i32 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %226
  %232 = load %struct.device*, %struct.device** %5, align 8
  %233 = call i32 @dev_err(%struct.device* %232, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0))
  br label %316

234:                                              ; preds = %226
  %235 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %236 = call i32 @modeset_init(%struct.drm_device* %235)
  %237 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %9, align 8
  %238 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %255

241:                                              ; preds = %234
  %242 = load %struct.device*, %struct.device** %5, align 8
  %243 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %244 = call i32 @component_bind_all(%struct.device* %242, %struct.drm_device* %243)
  store i32 %244, i32* %12, align 4
  %245 = load i32, i32* %12, align 4
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %241
  br label %316

248:                                              ; preds = %241
  %249 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %250 = call i32 @tilcdc_add_component_encoder(%struct.drm_device* %249)
  store i32 %250, i32* %12, align 4
  %251 = load i32, i32* %12, align 4
  %252 = icmp slt i32 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %248
  br label %316

254:                                              ; preds = %248
  br label %262

255:                                              ; preds = %234
  %256 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %257 = call i32 @tilcdc_attach_external_device(%struct.drm_device* %256)
  store i32 %257, i32* %12, align 4
  %258 = load i32, i32* %12, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %255
  br label %316

261:                                              ; preds = %255
  br label %262

262:                                              ; preds = %261, %254
  %263 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %9, align 8
  %264 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %263, i32 0, i32 8
  %265 = load i32, i32* %264, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %282, label %267

267:                                              ; preds = %262
  %268 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %9, align 8
  %269 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %268, i32 0, i32 5
  %270 = load i64, i64* %269, align 8
  %271 = icmp eq i64 %270, 0
  br i1 %271, label %277, label %272

272:                                              ; preds = %267
  %273 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %9, align 8
  %274 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %273, i32 0, i32 6
  %275 = load i64, i64* %274, align 8
  %276 = icmp eq i64 %275, 0
  br i1 %276, label %277, label %282

277:                                              ; preds = %272, %267
  %278 = load %struct.device*, %struct.device** %5, align 8
  %279 = call i32 @dev_err(%struct.device* %278, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i64 0, i64 0))
  %280 = load i32, i32* @EPROBE_DEFER, align 4
  %281 = sub nsw i32 0, %280
  store i32 %281, i32* %12, align 4
  br label %316

282:                                              ; preds = %272, %262
  %283 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %284 = call i32 @drm_vblank_init(%struct.drm_device* %283, i32 1)
  store i32 %284, i32* %12, align 4
  %285 = load i32, i32* %12, align 4
  %286 = icmp slt i32 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %282
  %288 = load %struct.device*, %struct.device** %5, align 8
  %289 = call i32 @dev_err(%struct.device* %288, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0))
  br label %316

290:                                              ; preds = %282
  %291 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %292 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %293 = call i32 @platform_get_irq(%struct.platform_device* %292, i32 0)
  %294 = call i32 @drm_irq_install(%struct.drm_device* %291, i32 %293)
  store i32 %294, i32* %12, align 4
  %295 = load i32, i32* %12, align 4
  %296 = icmp slt i32 %295, 0
  br i1 %296, label %297, label %300

297:                                              ; preds = %290
  %298 = load %struct.device*, %struct.device** %5, align 8
  %299 = call i32 @dev_err(%struct.device* %298, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.23, i64 0, i64 0))
  br label %316

300:                                              ; preds = %290
  %301 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %302 = call i32 @drm_mode_config_reset(%struct.drm_device* %301)
  %303 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %304 = call i32 @drm_kms_helper_poll_init(%struct.drm_device* %303)
  %305 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %306 = call i32 @drm_dev_register(%struct.drm_device* %305, i32 0)
  store i32 %306, i32* %12, align 4
  %307 = load i32, i32* %12, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %300
  br label %316

310:                                              ; preds = %300
  %311 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %312 = load i32, i32* %11, align 4
  %313 = call i32 @drm_fbdev_generic_setup(%struct.drm_device* %311, i32 %312)
  %314 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %9, align 8
  %315 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %314, i32 0, i32 7
  store i32 1, i32* %315, align 8
  store i32 0, i32* %3, align 4
  br label %320

316:                                              ; preds = %309, %297, %287, %277, %260, %253, %247, %231, %101, %86, %68, %59
  %317 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %318 = call i32 @tilcdc_fini(%struct.drm_device* %317)
  %319 = load i32, i32* %12, align 4
  store i32 %319, i32* %3, align 4
  br label %320

320:                                              ; preds = %316, %310, %34, %24
  %321 = load i32, i32* %3, align 4
  ret i32 %321
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.tilcdc_drm_private* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.drm_device* @drm_dev_alloc(%struct.drm_driver*, %struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.drm_device*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.drm_device*) #1

declare dso_local i32 @drm_mode_config_init(%struct.drm_device*) #1

declare dso_local i64 @tilcdc_get_external_components(%struct.device*, i32*) #1

declare dso_local i32 @alloc_ordered_workqueue(i8*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @ioremap_nocache(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local %struct.drm_device* @clk_get(%struct.device*, i8*) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @DBG(i8*, ...) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @tilcdc_read(%struct.drm_device*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @tilcdc_crtc_create(%struct.drm_device*) #1

declare dso_local i32 @modeset_init(%struct.drm_device*) #1

declare dso_local i32 @component_bind_all(%struct.device*, %struct.drm_device*) #1

declare dso_local i32 @tilcdc_add_component_encoder(%struct.drm_device*) #1

declare dso_local i32 @tilcdc_attach_external_device(%struct.drm_device*) #1

declare dso_local i32 @drm_vblank_init(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_irq_install(%struct.drm_device*, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @drm_mode_config_reset(%struct.drm_device*) #1

declare dso_local i32 @drm_kms_helper_poll_init(%struct.drm_device*) #1

declare dso_local i32 @drm_dev_register(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_fbdev_generic_setup(%struct.drm_device*, i32) #1

declare dso_local i32 @tilcdc_fini(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
