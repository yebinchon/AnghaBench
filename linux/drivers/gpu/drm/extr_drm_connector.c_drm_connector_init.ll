; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_connector.c_drm_connector_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_connector.c_drm_connector_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.ida }
%struct.ida = type { i32 }
%struct.drm_device = type { %struct.drm_mode_config }
%struct.drm_mode_config = type { %struct.ida, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_connector = type { i32, i32, i32, %struct.TYPE_7__, i32*, i32, %struct.TYPE_6__, i32, i32*, i32*, i32, i32, i32, i32, %struct.drm_connector_funcs*, %struct.drm_device*, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32 }
%struct.drm_connector_funcs = type { i32, i32 }

@drm_connector_enum_list = common dso_local global %struct.TYPE_8__* null, align 8
@DRM_MODE_OBJECT_CONNECTOR = common dso_local global i32 0, align 4
@drm_connector_free = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Failed to allocate %s connector index: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@connector_status_unknown = common dso_local global i32 0, align 4
@DRM_MODE_PANEL_ORIENTATION_UNKNOWN = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_VIRTUAL = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_WRITEBACK = common dso_local global i32 0, align 4
@DRIVER_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_connector_init(%struct.drm_device* %0, %struct.drm_connector* %1, %struct.drm_connector_funcs* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_connector*, align 8
  %8 = alloca %struct.drm_connector_funcs*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_mode_config*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ida*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %7, align 8
  store %struct.drm_connector_funcs* %2, %struct.drm_connector_funcs** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  store %struct.drm_mode_config* %14, %struct.drm_mode_config** %10, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** @drm_connector_enum_list, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  store %struct.ida* %19, %struct.ida** %12, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %21 = call i64 @drm_drv_uses_atomic_modeset(%struct.drm_device* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %4
  %24 = load %struct.drm_connector_funcs*, %struct.drm_connector_funcs** %8, align 8
  %25 = getelementptr inbounds %struct.drm_connector_funcs, %struct.drm_connector_funcs* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.drm_connector_funcs*, %struct.drm_connector_funcs** %8, align 8
  %30 = getelementptr inbounds %struct.drm_connector_funcs, %struct.drm_connector_funcs* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %28, %23
  %35 = phi i1 [ true, %23 ], [ %33, %28 ]
  br label %36

36:                                               ; preds = %34, %4
  %37 = phi i1 [ false, %4 ], [ %35, %34 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @WARN_ON(i32 %38)
  %40 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %41 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %42 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %41, i32 0, i32 3
  %43 = load i32, i32* @DRM_MODE_OBJECT_CONNECTOR, align 4
  %44 = load i32, i32* @drm_connector_free, align 4
  %45 = call i32 @__drm_mode_object_add(%struct.drm_device* %40, %struct.TYPE_7__* %42, i32 %43, i32 0, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %36
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %5, align 4
  br label %238

50:                                               ; preds = %36
  %51 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %52 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %51, i32 0, i32 16
  %53 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %54 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store i32* %52, i32** %55, align 8
  %56 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %57 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %58 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %57, i32 0, i32 15
  store %struct.drm_device* %56, %struct.drm_device** %58, align 8
  %59 = load %struct.drm_connector_funcs*, %struct.drm_connector_funcs** %8, align 8
  %60 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %61 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %60, i32 0, i32 14
  store %struct.drm_connector_funcs* %59, %struct.drm_connector_funcs** %61, align 8
  %62 = load %struct.drm_mode_config*, %struct.drm_mode_config** %10, align 8
  %63 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %62, i32 0, i32 0
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call i8* @ida_simple_get(%struct.ida* %63, i32 0, i32 32, i32 %64)
  %66 = ptrtoint i8* %65 to i32
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %50
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** @drm_connector_enum_list, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %76)
  br label %228

78:                                               ; preds = %50
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %81 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  store i32 0, i32* %11, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %84 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.ida*, %struct.ida** %12, align 8
  %86 = load i32, i32* @GFP_KERNEL, align 4
  %87 = call i8* @ida_simple_get(%struct.ida* %85, i32 1, i32 0, i32 %86)
  %88 = ptrtoint i8* %87 to i32
  %89 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %90 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %92 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %78
  %96 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %97 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %11, align 4
  br label %217

99:                                               ; preds = %78
  %100 = load i32, i32* @GFP_KERNEL, align 4
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** @drm_connector_enum_list, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %108 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @kasprintf(i32 %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %106, i32 %109)
  %111 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %112 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %111, i32 0, i32 13
  store i32 %110, i32* %112, align 4
  %113 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %114 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %113, i32 0, i32 13
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %99
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %11, align 4
  br label %207

120:                                              ; preds = %99
  %121 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %122 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %121, i32 0, i32 12
  %123 = call i32 @INIT_LIST_HEAD(i32* %122)
  %124 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %125 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %124, i32 0, i32 11
  %126 = call i32 @INIT_LIST_HEAD(i32* %125)
  %127 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %128 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %127, i32 0, i32 10
  %129 = call i32 @mutex_init(i32* %128)
  %130 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %131 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %130, i32 0, i32 9
  store i32* null, i32** %131, align 8
  %132 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %133 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %132, i32 0, i32 8
  store i32* null, i32** %133, align 8
  %134 = load i32, i32* @connector_status_unknown, align 4
  %135 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %136 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %135, i32 0, i32 7
  store i32 %134, i32* %136, align 8
  %137 = load i32, i32* @DRM_MODE_PANEL_ORIENTATION_UNKNOWN, align 4
  %138 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %139 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %138, i32 0, i32 6
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  store i32 %137, i32* %140, align 4
  %141 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %142 = call i32 @drm_connector_get_cmdline_mode(%struct.drm_connector* %141)
  %143 = load %struct.drm_mode_config*, %struct.drm_mode_config** %10, align 8
  %144 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %143, i32 0, i32 6
  %145 = call i32 @spin_lock_irq(i32* %144)
  %146 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %147 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %146, i32 0, i32 5
  %148 = load %struct.drm_mode_config*, %struct.drm_mode_config** %10, align 8
  %149 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %148, i32 0, i32 8
  %150 = call i32 @list_add_tail(i32* %147, i32* %149)
  %151 = load %struct.drm_mode_config*, %struct.drm_mode_config** %10, align 8
  %152 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %151, i32 0, i32 7
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %152, align 4
  %155 = load %struct.drm_mode_config*, %struct.drm_mode_config** %10, align 8
  %156 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %155, i32 0, i32 6
  %157 = call i32 @spin_unlock_irq(i32* %156)
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* @DRM_MODE_CONNECTOR_VIRTUAL, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %168

161:                                              ; preds = %120
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* @DRM_MODE_CONNECTOR_WRITEBACK, align 4
  %164 = icmp ne i32 %162, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %161
  %166 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %167 = call i32 @drm_connector_attach_edid_property(%struct.drm_connector* %166)
  br label %168

168:                                              ; preds = %165, %161, %120
  %169 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %170 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %169, i32 0, i32 3
  %171 = load %struct.drm_mode_config*, %struct.drm_mode_config** %10, align 8
  %172 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @drm_object_attach_property(%struct.TYPE_7__* %170, i32 %173, i32 0)
  %175 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %176 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %175, i32 0, i32 3
  %177 = load %struct.drm_mode_config*, %struct.drm_mode_config** %10, align 8
  %178 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @drm_object_attach_property(%struct.TYPE_7__* %176, i32 %179, i32 0)
  %181 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %182 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %181, i32 0, i32 3
  %183 = load %struct.drm_mode_config*, %struct.drm_mode_config** %10, align 8
  %184 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @drm_object_attach_property(%struct.TYPE_7__* %182, i32 %185, i32 0)
  %187 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %188 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %187, i32 0, i32 3
  %189 = load %struct.drm_mode_config*, %struct.drm_mode_config** %10, align 8
  %190 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @drm_object_attach_property(%struct.TYPE_7__* %188, i32 %191, i32 0)
  %193 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %194 = load i32, i32* @DRIVER_ATOMIC, align 4
  %195 = call i64 @drm_core_check_feature(%struct.drm_device* %193, i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %168
  %198 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %199 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %198, i32 0, i32 3
  %200 = load %struct.drm_mode_config*, %struct.drm_mode_config** %10, align 8
  %201 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @drm_object_attach_property(%struct.TYPE_7__* %199, i32 %202, i32 0)
  br label %204

204:                                              ; preds = %197, %168
  %205 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %206 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %205, i32 0, i32 4
  store i32* null, i32** %206, align 8
  br label %207

207:                                              ; preds = %204, %117
  %208 = load i32, i32* %11, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %207
  %211 = load %struct.ida*, %struct.ida** %12, align 8
  %212 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %213 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @ida_simple_remove(%struct.ida* %211, i32 %214)
  br label %216

216:                                              ; preds = %210, %207
  br label %217

217:                                              ; preds = %216, %95
  %218 = load i32, i32* %11, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %227

220:                                              ; preds = %217
  %221 = load %struct.drm_mode_config*, %struct.drm_mode_config** %10, align 8
  %222 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %221, i32 0, i32 0
  %223 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %224 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @ida_simple_remove(%struct.ida* %222, i32 %225)
  br label %227

227:                                              ; preds = %220, %217
  br label %228

228:                                              ; preds = %227, %69
  %229 = load i32, i32* %11, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %236

231:                                              ; preds = %228
  %232 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %233 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %234 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %233, i32 0, i32 3
  %235 = call i32 @drm_mode_object_unregister(%struct.drm_device* %232, %struct.TYPE_7__* %234)
  br label %236

236:                                              ; preds = %231, %228
  %237 = load i32, i32* %11, align 4
  store i32 %237, i32* %5, align 4
  br label %238

238:                                              ; preds = %236, %48
  %239 = load i32, i32* %5, align 4
  ret i32 %239
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @drm_drv_uses_atomic_modeset(%struct.drm_device*) #1

declare dso_local i32 @__drm_mode_object_add(%struct.drm_device*, %struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i8* @ida_simple_get(%struct.ida*, i32, i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

declare dso_local i32 @kasprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @drm_connector_get_cmdline_mode(%struct.drm_connector*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @drm_connector_attach_edid_property(%struct.drm_connector*) #1

declare dso_local i32 @drm_object_attach_property(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i64 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @ida_simple_remove(%struct.ida*, i32) #1

declare dso_local i32 @drm_mode_object_unregister(%struct.drm_device*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
