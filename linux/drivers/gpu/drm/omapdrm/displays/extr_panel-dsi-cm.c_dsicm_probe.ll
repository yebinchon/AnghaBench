; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/displays/extr_panel-dsi-cm.c_dsicm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/displays/extr_panel-dsi-cm.c_dsicm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.panel_drv_data = type { %struct.TYPE_4__*, i32, %struct.backlight_device*, i64, i32, i32, i64, i32, i32, %struct.omap_dss_device, %struct.TYPE_3__, %struct.platform_device* }
%struct.TYPE_4__ = type { i32 }
%struct.backlight_device = type { i32 }
%struct.omap_dss_device = type { i32, i32, i32, i32, i32, i32, i32*, i32*, %struct.device* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.backlight_properties = type { i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"probe\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dsicm_ops = common dso_local global i32 0, align 4
@dsicm_dss_driver = common dso_local global i32 0, align 4
@OMAP_DISPLAY_TYPE_DSI = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@OMAP_DSS_DEVICE_OP_MODES = common dso_local global i32 0, align 4
@OMAP_DSS_DISPLAY_CAP_MANUAL_UPDATE = common dso_local global i32 0, align 4
@OMAP_DSS_DISPLAY_CAP_TEAR_ELIM = common dso_local global i32 0, align 4
@dsicm_te_isr = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"taal vsync\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"IRQ request failed\0A\00", align 1
@dsicm_te_timeout_work_callback = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"Using GPIO TE\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"dsicm_wq\00", align 1
@dsicm_ulps_work = common dso_local global i32 0, align 4
@BACKLIGHT_RAW = common dso_local global i32 0, align 4
@dsicm_bl_ops = common dso_local global i32 0, align 4
@dsicm_attr_group = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"failed to create sysfs files\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dsicm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsicm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.panel_drv_data*, align 8
  %5 = alloca %struct.backlight_device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.omap_dss_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.backlight_properties, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.backlight_device* null, %struct.backlight_device** %5, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call i32 @dev_dbg(%struct.device* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.panel_drv_data* @devm_kzalloc(%struct.device* %14, i32 128, i32 %15)
  store %struct.panel_drv_data* %16, %struct.panel_drv_data** %4, align 8
  %17 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %18 = icmp ne %struct.panel_drv_data* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %180

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %25 = call i32 @platform_set_drvdata(%struct.platform_device* %23, %struct.panel_drv_data* %24)
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %28 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %27, i32 0, i32 11
  store %struct.platform_device* %26, %struct.platform_device** %28, align 8
  %29 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %30 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %29, i32 0, i32 10
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 864, i32* %31, align 8
  %32 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %33 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %32, i32 0, i32 10
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i32 480, i32* %34, align 4
  %35 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %36 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %35, i32 0, i32 10
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  store i32 24883200, i32* %37, align 8
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = call i32 @dsicm_probe_of(%struct.platform_device* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %22
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %2, align 4
  br label %180

44:                                               ; preds = %22
  %45 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %46 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %45, i32 0, i32 9
  store %struct.omap_dss_device* %46, %struct.omap_dss_device** %7, align 8
  %47 = load %struct.device*, %struct.device** %6, align 8
  %48 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %49 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %48, i32 0, i32 8
  store %struct.device* %47, %struct.device** %49, align 8
  %50 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %51 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %50, i32 0, i32 7
  store i32* @dsicm_ops, i32** %51, align 8
  %52 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %53 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %52, i32 0, i32 6
  store i32* @dsicm_dss_driver, i32** %53, align 8
  %54 = load i32, i32* @OMAP_DISPLAY_TYPE_DSI, align 4
  %55 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %56 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 4
  %57 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %58 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load i32, i32* @THIS_MODULE, align 4
  %60 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %61 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 8
  %62 = call i32 @BIT(i32 0)
  %63 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %64 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @OMAP_DSS_DEVICE_OP_MODES, align 4
  %66 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %67 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @OMAP_DSS_DISPLAY_CAP_MANUAL_UPDATE, align 4
  %69 = load i32, i32* @OMAP_DSS_DISPLAY_CAP_TEAR_ELIM, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %72 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %74 = call i32 @omapdss_display_init(%struct.omap_dss_device* %73)
  %75 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %76 = call i32 @omapdss_device_register(%struct.omap_dss_device* %75)
  %77 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %78 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %77, i32 0, i32 8
  %79 = call i32 @mutex_init(i32* %78)
  %80 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %81 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %80, i32 0, i32 7
  %82 = call i32 @atomic_set(i32* %81, i32 0)
  %83 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %84 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %83, i32 0, i32 6
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %109

87:                                               ; preds = %44
  %88 = load %struct.device*, %struct.device** %6, align 8
  %89 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %90 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %89, i32 0, i32 6
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @gpiod_to_irq(i64 %91)
  %93 = load i32, i32* @dsicm_te_isr, align 4
  %94 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %95 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %96 = call i32 @devm_request_irq(%struct.device* %88, i32 %92, i32 %93, i32 %94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.panel_drv_data* %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %87
  %100 = load %struct.device*, %struct.device** %6, align 8
  %101 = call i32 @dev_err(%struct.device* %100, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %167

102:                                              ; preds = %87
  %103 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %104 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %103, i32 0, i32 5
  %105 = load i32, i32* @dsicm_te_timeout_work_callback, align 4
  %106 = call i32 @INIT_DEFERRABLE_WORK(i32* %104, i32 %105)
  %107 = load %struct.device*, %struct.device** %6, align 8
  %108 = call i32 @dev_dbg(%struct.device* %107, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %109

109:                                              ; preds = %102, %44
  %110 = call i32 @create_singlethread_workqueue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %111 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %112 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 8
  %113 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %114 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %109
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %8, align 4
  br label %167

120:                                              ; preds = %109
  %121 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %122 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %121, i32 0, i32 4
  %123 = load i32, i32* @dsicm_ulps_work, align 4
  %124 = call i32 @INIT_DELAYED_WORK(i32* %122, i32 %123)
  %125 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %126 = call i32 @dsicm_hw_reset(%struct.panel_drv_data* %125)
  %127 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %128 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %152

131:                                              ; preds = %120
  %132 = bitcast %struct.backlight_properties* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %132, i8 0, i64 12, i1 false)
  %133 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %9, i32 0, i32 0
  store i32 255, i32* %133, align 4
  %134 = load i32, i32* @BACKLIGHT_RAW, align 4
  %135 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %9, i32 0, i32 1
  store i32 %134, i32* %135, align 4
  %136 = load %struct.device*, %struct.device** %6, align 8
  %137 = load %struct.device*, %struct.device** %6, align 8
  %138 = call i32 @dev_name(%struct.device* %137)
  %139 = load %struct.device*, %struct.device** %6, align 8
  %140 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %141 = call %struct.backlight_device* @devm_backlight_device_register(%struct.device* %136, i32 %138, %struct.device* %139, %struct.panel_drv_data* %140, i32* @dsicm_bl_ops, %struct.backlight_properties* %9)
  store %struct.backlight_device* %141, %struct.backlight_device** %5, align 8
  %142 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %143 = call i64 @IS_ERR(%struct.backlight_device* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %131
  %146 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %147 = call i32 @PTR_ERR(%struct.backlight_device* %146)
  store i32 %147, i32* %8, align 4
  br label %162

148:                                              ; preds = %131
  %149 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %150 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %151 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %150, i32 0, i32 2
  store %struct.backlight_device* %149, %struct.backlight_device** %151, align 8
  br label %152

152:                                              ; preds = %148, %120
  %153 = load %struct.device*, %struct.device** %6, align 8
  %154 = getelementptr inbounds %struct.device, %struct.device* %153, i32 0, i32 0
  %155 = call i32 @sysfs_create_group(i32* %154, i32* @dsicm_attr_group)
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* %8, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %152
  %159 = load %struct.device*, %struct.device** %6, align 8
  %160 = call i32 @dev_err(%struct.device* %159, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %162

161:                                              ; preds = %152
  store i32 0, i32* %2, align 4
  br label %180

162:                                              ; preds = %158, %145
  %163 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %164 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @destroy_workqueue(i32 %165)
  br label %167

167:                                              ; preds = %162, %117, %99
  %168 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %169 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %168, i32 0, i32 0
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = icmp ne %struct.TYPE_4__* %170, null
  br i1 %171, label %172, label %178

172:                                              ; preds = %167
  %173 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %174 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %173, i32 0, i32 0
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = call i32 @put_device(i32* %176)
  br label %178

178:                                              ; preds = %172, %167
  %179 = load i32, i32* %8, align 4
  store i32 %179, i32* %2, align 4
  br label %180

180:                                              ; preds = %178, %161, %42, %19
  %181 = load i32, i32* %2, align 4
  ret i32 %181
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local %struct.panel_drv_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.panel_drv_data*) #1

declare dso_local i32 @dsicm_probe_of(%struct.platform_device*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @omapdss_display_init(%struct.omap_dss_device*) #1

declare dso_local i32 @omapdss_device_register(%struct.omap_dss_device*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.panel_drv_data*) #1

declare dso_local i32 @gpiod_to_irq(i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @INIT_DEFERRABLE_WORK(i32*, i32) #1

declare dso_local i32 @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @dsicm_hw_reset(%struct.panel_drv_data*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.backlight_device* @devm_backlight_device_register(%struct.device*, i32, %struct.device*, %struct.panel_drv_data*, i32*, %struct.backlight_properties*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.backlight_device*) #1

declare dso_local i32 @PTR_ERR(%struct.backlight_device*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
