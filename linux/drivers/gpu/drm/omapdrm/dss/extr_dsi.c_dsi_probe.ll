; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.soc_device_attribute = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32, %struct.dsi_module_id_data* }
%struct.dsi_module_id_data = type { i64, i32 }
%struct.dsi_data = type { i64, i32, %struct.TYPE_6__*, %struct.TYPE_8__*, i32, i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, %struct.TYPE_5__, i32, i64, i32, i32, %struct.device* }
%struct.TYPE_8__ = type { i64, i32*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.resource = type { i64 }
%struct.device_node = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dsi_framedone_timeout_work_callback = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"proto\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"pll\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"platform_get_irq failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@omap_dsi_irq_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"request_irq failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"can't get DSI VDD regulator\0A\00", align 1
@dsi_soc_devices = common dso_local global i32 0, align 4
@dsi_of_match = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"unsupported DSI module\0A\00", align 1
@DSI_MODEL_OMAP4 = common dso_local global i64 0, align 8
@DSI_MODEL_OMAP5 = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [21 x i8] c"omap4_padconf_global\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"omap5_padconf_global\00", align 1
@DSI_VC_SOURCE_L4 = common dso_local global i32 0, align 4
@DSI_QUIRK_GNQ = common dso_local global i32 0, align 4
@DSI_GNQ = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [42 x i8] c"Failed to populate DSI child devices: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"Invalid DSI DT data\0A\00", align 1
@dsi_component_ops = common dso_local global i32 0, align 4
@dsi_te_timeout = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dsi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.soc_device_attribute*, align 8
  %5 = alloca %struct.dsi_module_id_data*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.dsi_data*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.dsi_data* @devm_kzalloc(%struct.device* %15, i32 120, i32 %16)
  store %struct.dsi_data* %17, %struct.dsi_data** %7, align 8
  %18 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %19 = icmp ne %struct.dsi_data* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %364

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %26 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %25, i32 0, i32 19
  store %struct.device* %24, %struct.device** %26, align 8
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %29 = call i32 @dev_set_drvdata(%struct.device* %27, %struct.dsi_data* %28)
  %30 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %31 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %30, i32 0, i32 18
  %32 = call i32 @spin_lock_init(i32* %31)
  %33 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %34 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %33, i32 0, i32 17
  %35 = call i32 @spin_lock_init(i32* %34)
  %36 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %37 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %36, i32 0, i32 16
  store i64 0, i64* %37, align 8
  %38 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %39 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %38, i32 0, i32 13
  %40 = call i32 @mutex_init(i32* %39)
  %41 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %42 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %41, i32 0, i32 12
  %43 = call i32 @sema_init(i32* %42, i32 1)
  %44 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %45 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %44, i32 0, i32 11
  %46 = load i32, i32* @dsi_framedone_timeout_work_callback, align 4
  %47 = call i32 @INIT_DEFERRABLE_WORK(i32* %45, i32 %46)
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = load i32, i32* @IORESOURCE_MEM, align 4
  %50 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %48, i32 %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %50, %struct.resource** %8, align 8
  %51 = load %struct.device*, %struct.device** %6, align 8
  %52 = load %struct.resource*, %struct.resource** %8, align 8
  %53 = call i8* @devm_ioremap_resource(%struct.device* %51, %struct.resource* %52)
  %54 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %55 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %54, i32 0, i32 9
  store i8* %53, i8** %55, align 8
  %56 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %57 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %56, i32 0, i32 9
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 @IS_ERR(i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %23
  %62 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %63 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %62, i32 0, i32 9
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @PTR_ERR(i8* %64)
  store i32 %65, i32* %2, align 4
  br label %364

66:                                               ; preds = %23
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = load i32, i32* @IORESOURCE_MEM, align 4
  %69 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %67, i32 %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.resource* %69, %struct.resource** %9, align 8
  %70 = load %struct.device*, %struct.device** %6, align 8
  %71 = load %struct.resource*, %struct.resource** %9, align 8
  %72 = call i8* @devm_ioremap_resource(%struct.device* %70, %struct.resource* %71)
  %73 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %74 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %73, i32 0, i32 8
  store i8* %72, i8** %74, align 8
  %75 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %76 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %75, i32 0, i32 8
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @IS_ERR(i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %66
  %81 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %82 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %81, i32 0, i32 8
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @PTR_ERR(i8* %83)
  store i32 %84, i32* %2, align 4
  br label %364

85:                                               ; preds = %66
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = load i32, i32* @IORESOURCE_MEM, align 4
  %88 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %86, i32 %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store %struct.resource* %88, %struct.resource** %9, align 8
  %89 = load %struct.device*, %struct.device** %6, align 8
  %90 = load %struct.resource*, %struct.resource** %9, align 8
  %91 = call i8* @devm_ioremap_resource(%struct.device* %89, %struct.resource* %90)
  %92 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %93 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %92, i32 0, i32 7
  store i8* %91, i8** %93, align 8
  %94 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %95 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %94, i32 0, i32 7
  %96 = load i8*, i8** %95, align 8
  %97 = call i64 @IS_ERR(i8* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %85
  %100 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %101 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %100, i32 0, i32 7
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @PTR_ERR(i8* %102)
  store i32 %103, i32* %2, align 4
  br label %364

104:                                              ; preds = %85
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = call i64 @platform_get_irq(%struct.platform_device* %105, i32 0)
  %107 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %108 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  %109 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %110 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp slt i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %104
  %114 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %115 = load i32, i32* @ENODEV, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %2, align 4
  br label %364

117:                                              ; preds = %104
  %118 = load %struct.device*, %struct.device** %6, align 8
  %119 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %120 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* @omap_dsi_irq_handler, align 4
  %123 = load i32, i32* @IRQF_SHARED, align 4
  %124 = load %struct.device*, %struct.device** %6, align 8
  %125 = call i32 @dev_name(%struct.device* %124)
  %126 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %127 = call i32 @devm_request_irq(%struct.device* %118, i64 %121, i32 %122, i32 %123, i32 %125, %struct.dsi_data* %126)
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %11, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %117
  %131 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %132 = load i32, i32* %11, align 4
  store i32 %132, i32* %2, align 4
  br label %364

133:                                              ; preds = %117
  %134 = load %struct.device*, %struct.device** %6, align 8
  %135 = call i8* @devm_regulator_get(%struct.device* %134, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %136 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %137 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %136, i32 0, i32 6
  store i8* %135, i8** %137, align 8
  %138 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %139 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %138, i32 0, i32 6
  %140 = load i8*, i8** %139, align 8
  %141 = call i64 @IS_ERR(i8* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %158

143:                                              ; preds = %133
  %144 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %145 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %144, i32 0, i32 6
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @PTR_ERR(i8* %146)
  %148 = load i32, i32* @EPROBE_DEFER, align 4
  %149 = sub nsw i32 0, %148
  %150 = icmp ne i32 %147, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %143
  %152 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %153

153:                                              ; preds = %151, %143
  %154 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %155 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %154, i32 0, i32 6
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 @PTR_ERR(i8* %156)
  store i32 %157, i32* %2, align 4
  br label %364

158:                                              ; preds = %133
  %159 = load i32, i32* @dsi_soc_devices, align 4
  %160 = call %struct.soc_device_attribute* @soc_device_match(i32 %159)
  store %struct.soc_device_attribute* %160, %struct.soc_device_attribute** %4, align 8
  %161 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %4, align 8
  %162 = icmp ne %struct.soc_device_attribute* %161, null
  br i1 %162, label %163, label %169

163:                                              ; preds = %158
  %164 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %4, align 8
  %165 = getelementptr inbounds %struct.soc_device_attribute, %struct.soc_device_attribute* %164, i32 0, i32 0
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %165, align 8
  %167 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %168 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %167, i32 0, i32 2
  store %struct.TYPE_6__* %166, %struct.TYPE_6__** %168, align 8
  br label %179

169:                                              ; preds = %158
  %170 = load i32, i32* @dsi_of_match, align 4
  %171 = load %struct.device*, %struct.device** %6, align 8
  %172 = getelementptr inbounds %struct.device, %struct.device* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call %struct.TYPE_7__* @of_match_node(i32 %170, i32 %173)
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %175, align 8
  %177 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %178 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %177, i32 0, i32 2
  store %struct.TYPE_6__* %176, %struct.TYPE_6__** %178, align 8
  br label %179

179:                                              ; preds = %169, %163
  %180 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %181 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %180, i32 0, i32 2
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 2
  %184 = load %struct.dsi_module_id_data*, %struct.dsi_module_id_data** %183, align 8
  store %struct.dsi_module_id_data* %184, %struct.dsi_module_id_data** %5, align 8
  br label %185

185:                                              ; preds = %200, %179
  %186 = load %struct.dsi_module_id_data*, %struct.dsi_module_id_data** %5, align 8
  %187 = getelementptr inbounds %struct.dsi_module_id_data, %struct.dsi_module_id_data* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %198

190:                                              ; preds = %185
  %191 = load %struct.dsi_module_id_data*, %struct.dsi_module_id_data** %5, align 8
  %192 = getelementptr inbounds %struct.dsi_module_id_data, %struct.dsi_module_id_data* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.resource*, %struct.resource** %8, align 8
  %195 = getelementptr inbounds %struct.resource, %struct.resource* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %193, %196
  br label %198

198:                                              ; preds = %190, %185
  %199 = phi i1 [ false, %185 ], [ %197, %190 ]
  br i1 %199, label %200, label %203

200:                                              ; preds = %198
  %201 = load %struct.dsi_module_id_data*, %struct.dsi_module_id_data** %5, align 8
  %202 = getelementptr inbounds %struct.dsi_module_id_data, %struct.dsi_module_id_data* %201, i32 1
  store %struct.dsi_module_id_data* %202, %struct.dsi_module_id_data** %5, align 8
  br label %185

203:                                              ; preds = %198
  %204 = load %struct.dsi_module_id_data*, %struct.dsi_module_id_data** %5, align 8
  %205 = getelementptr inbounds %struct.dsi_module_id_data, %struct.dsi_module_id_data* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %203
  %209 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %210 = load i32, i32* @ENODEV, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %2, align 4
  br label %364

212:                                              ; preds = %203
  %213 = load %struct.dsi_module_id_data*, %struct.dsi_module_id_data** %5, align 8
  %214 = getelementptr inbounds %struct.dsi_module_id_data, %struct.dsi_module_id_data* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %217 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %216, i32 0, i32 5
  store i32 %215, i32* %217, align 4
  %218 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %219 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %218, i32 0, i32 2
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @DSI_MODEL_OMAP4, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %233, label %225

225:                                              ; preds = %212
  %226 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %227 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %226, i32 0, i32 2
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @DSI_MODEL_OMAP5, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %256

233:                                              ; preds = %225, %212
  %234 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %235 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %234, i32 0, i32 2
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @DSI_MODEL_OMAP4, align 8
  %240 = icmp eq i64 %238, %239
  %241 = zext i1 %240 to i64
  %242 = select i1 %240, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0)
  %243 = call %struct.device_node* @of_find_node_by_name(i32* null, i8* %242)
  store %struct.device_node* %243, %struct.device_node** %12, align 8
  %244 = load %struct.device_node*, %struct.device_node** %12, align 8
  %245 = icmp ne %struct.device_node* %244, null
  br i1 %245, label %249, label %246

246:                                              ; preds = %233
  %247 = load i32, i32* @ENODEV, align 4
  %248 = sub nsw i32 0, %247
  store i32 %248, i32* %2, align 4
  br label %364

249:                                              ; preds = %233
  %250 = load %struct.device_node*, %struct.device_node** %12, align 8
  %251 = call i32 @syscon_node_to_regmap(%struct.device_node* %250)
  %252 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %253 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %252, i32 0, i32 4
  store i32 %251, i32* %253, align 8
  %254 = load %struct.device_node*, %struct.device_node** %12, align 8
  %255 = call i32 @of_node_put(%struct.device_node* %254)
  br label %256

256:                                              ; preds = %249, %225
  store i32 0, i32* %10, align 4
  br label %257

257:                                              ; preds = %287, %256
  %258 = load i32, i32* %10, align 4
  %259 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %260 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %259, i32 0, i32 3
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** %260, align 8
  %262 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %261)
  %263 = icmp ult i32 %258, %262
  br i1 %263, label %264, label %290

264:                                              ; preds = %257
  %265 = load i32, i32* @DSI_VC_SOURCE_L4, align 4
  %266 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %267 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %266, i32 0, i32 3
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** %267, align 8
  %269 = load i32, i32* %10, align 4
  %270 = zext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 2
  store i32 %265, i32* %272, align 8
  %273 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %274 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %273, i32 0, i32 3
  %275 = load %struct.TYPE_8__*, %struct.TYPE_8__** %274, align 8
  %276 = load i32, i32* %10, align 4
  %277 = zext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i32 0, i32 1
  store i32* null, i32** %279, align 8
  %280 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %281 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %280, i32 0, i32 3
  %282 = load %struct.TYPE_8__*, %struct.TYPE_8__** %281, align 8
  %283 = load i32, i32* %10, align 4
  %284 = zext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 0
  store i64 0, i64* %286, align 8
  br label %287

287:                                              ; preds = %264
  %288 = load i32, i32* %10, align 4
  %289 = add i32 %288, 1
  store i32 %289, i32* %10, align 4
  br label %257

290:                                              ; preds = %257
  %291 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %292 = call i32 @dsi_get_clocks(%struct.dsi_data* %291)
  store i32 %292, i32* %11, align 4
  %293 = load i32, i32* %11, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %297

295:                                              ; preds = %290
  %296 = load i32, i32* %11, align 4
  store i32 %296, i32* %2, align 4
  br label %364

297:                                              ; preds = %290
  %298 = load %struct.device*, %struct.device** %6, align 8
  %299 = call i32 @pm_runtime_enable(%struct.device* %298)
  %300 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %301 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %300, i32 0, i32 2
  %302 = load %struct.TYPE_6__*, %struct.TYPE_6__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 8
  %305 = load i32, i32* @DSI_QUIRK_GNQ, align 4
  %306 = and i32 %304, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %319

308:                                              ; preds = %297
  %309 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %310 = call i32 @dsi_runtime_get(%struct.dsi_data* %309)
  %311 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %312 = load i32, i32* @DSI_GNQ, align 4
  %313 = call i32 @REG_GET(%struct.dsi_data* %311, i32 %312, i32 11, i32 9)
  %314 = add nsw i32 1, %313
  %315 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %316 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %315, i32 0, i32 1
  store i32 %314, i32* %316, align 8
  %317 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %318 = call i32 @dsi_runtime_put(%struct.dsi_data* %317)
  br label %322

319:                                              ; preds = %297
  %320 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %321 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %320, i32 0, i32 1
  store i32 3, i32* %321, align 8
  br label %322

322:                                              ; preds = %319, %308
  %323 = load %struct.device*, %struct.device** %6, align 8
  %324 = getelementptr inbounds %struct.device, %struct.device* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.device*, %struct.device** %6, align 8
  %327 = call i32 @of_platform_populate(i32 %325, i32* null, i32* null, %struct.device* %326)
  store i32 %327, i32* %11, align 4
  %328 = load i32, i32* %11, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %333

330:                                              ; preds = %322
  %331 = load i32, i32* %11, align 4
  %332 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0), i32 %331)
  br label %360

333:                                              ; preds = %322
  %334 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %335 = call i32 @dsi_init_output(%struct.dsi_data* %334)
  store i32 %335, i32* %11, align 4
  %336 = load i32, i32* %11, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %339

338:                                              ; preds = %333
  br label %357

339:                                              ; preds = %333
  %340 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %341 = call i32 @dsi_probe_of(%struct.dsi_data* %340)
  store i32 %341, i32* %11, align 4
  %342 = load i32, i32* %11, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %346

344:                                              ; preds = %339
  %345 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  br label %354

346:                                              ; preds = %339
  %347 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %348 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %347, i32 0, i32 0
  %349 = call i32 @component_add(%struct.device* %348, i32* @dsi_component_ops)
  store i32 %349, i32* %11, align 4
  %350 = load i32, i32* %11, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %353

352:                                              ; preds = %346
  br label %354

353:                                              ; preds = %346
  store i32 0, i32* %2, align 4
  br label %364

354:                                              ; preds = %352, %344
  %355 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %356 = call i32 @dsi_uninit_output(%struct.dsi_data* %355)
  br label %357

357:                                              ; preds = %354, %338
  %358 = load %struct.device*, %struct.device** %6, align 8
  %359 = call i32 @of_platform_depopulate(%struct.device* %358)
  br label %360

360:                                              ; preds = %357, %330
  %361 = load %struct.device*, %struct.device** %6, align 8
  %362 = call i32 @pm_runtime_disable(%struct.device* %361)
  %363 = load i32, i32* %11, align 4
  store i32 %363, i32* %2, align 4
  br label %364

364:                                              ; preds = %360, %353, %295, %246, %208, %153, %130, %113, %99, %80, %61, %20
  %365 = load i32, i32* %2, align 4
  ret i32 %365
}

declare dso_local %struct.dsi_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.dsi_data*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @INIT_DEFERRABLE_WORK(i32*, i32) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @DSSERR(i8*, ...) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i64, i32, i32, i32, %struct.dsi_data*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i8* @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local %struct.soc_device_attribute* @soc_device_match(i32) #1

declare dso_local %struct.TYPE_7__* @of_match_node(i32, i32) #1

declare dso_local %struct.device_node* @of_find_node_by_name(i32*, i8*) #1

declare dso_local i32 @syscon_node_to_regmap(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_8__*) #1

declare dso_local i32 @dsi_get_clocks(%struct.dsi_data*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @dsi_runtime_get(%struct.dsi_data*) #1

declare dso_local i32 @REG_GET(%struct.dsi_data*, i32, i32, i32) #1

declare dso_local i32 @dsi_runtime_put(%struct.dsi_data*) #1

declare dso_local i32 @of_platform_populate(i32, i32*, i32*, %struct.device*) #1

declare dso_local i32 @dsi_init_output(%struct.dsi_data*) #1

declare dso_local i32 @dsi_probe_of(%struct.dsi_data*) #1

declare dso_local i32 @component_add(%struct.device*, i32*) #1

declare dso_local i32 @dsi_uninit_output(%struct.dsi_data*) #1

declare dso_local i32 @of_platform_depopulate(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
