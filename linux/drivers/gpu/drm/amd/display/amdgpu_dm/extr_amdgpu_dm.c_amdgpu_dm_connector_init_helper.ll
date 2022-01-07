; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_amdgpu_dm_connector_init_helper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_amdgpu_dm_connector_init_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_display_manager = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.amdgpu_device* }
%struct.TYPE_21__ = type { i32, i32 }
%struct.amdgpu_device = type { %struct.TYPE_20__, %struct.TYPE_19__ }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.amdgpu_dm_connector = type { i32, i32, %struct.TYPE_13__, i32, %struct.TYPE_15__, %struct.dc_link* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, %struct.TYPE_18__*, i8*, i32, %struct.TYPE_14__* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_13__*)* }
%struct.TYPE_15__ = type { i32 }
%struct.dc_link = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }

@DRM_MODE_DPMS_OFF = common dso_local global i32 0, align 4
@AMDGPU_HPD_NONE = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_HPD = common dso_local global i8* null, align 8
@DRM_MODE_SCALE_NONE = common dso_local global i32 0, align 4
@UNDERSCAN_OFF = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_eDP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_dm_connector_init_helper(%struct.amdgpu_display_manager* %0, %struct.amdgpu_dm_connector* %1, i32 %2, %struct.dc_link* %3, i32 %4) #0 {
  %6 = alloca %struct.amdgpu_display_manager*, align 8
  %7 = alloca %struct.amdgpu_dm_connector*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dc_link*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_display_manager* %0, %struct.amdgpu_display_manager** %6, align 8
  store %struct.amdgpu_dm_connector* %1, %struct.amdgpu_dm_connector** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.dc_link* %3, %struct.dc_link** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.amdgpu_display_manager*, %struct.amdgpu_display_manager** %6, align 8
  %13 = getelementptr inbounds %struct.amdgpu_display_manager, %struct.amdgpu_display_manager* %12, i32 0, i32 0
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 1
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %15, align 8
  store %struct.amdgpu_device* %16, %struct.amdgpu_device** %11, align 8
  %17 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %7, align 8
  %18 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %21, align 8
  %23 = icmp ne i32 (%struct.TYPE_13__*)* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %5
  %25 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %7, align 8
  %26 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %29, align 8
  %31 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %7, align 8
  %32 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %31, i32 0, i32 2
  %33 = call i32 %30(%struct.TYPE_13__* %32)
  br label %34

34:                                               ; preds = %24, %5
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %7, align 8
  %37 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.dc_link*, %struct.dc_link** %9, align 8
  %39 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %7, align 8
  %40 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %39, i32 0, i32 5
  store %struct.dc_link* %38, %struct.dc_link** %40, align 8
  %41 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %7, align 8
  %42 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  %44 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %7, align 8
  %45 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 1
  store i32 0, i32* %46, align 4
  %47 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %7, align 8
  %48 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 2
  store i32 0, i32* %49, align 8
  %50 = load i32, i32* @DRM_MODE_DPMS_OFF, align 4
  %51 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %7, align 8
  %52 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 7
  store i32 %50, i32* %53, align 8
  %54 = load i32, i32* @AMDGPU_HPD_NONE, align 4
  %55 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %7, align 8
  %56 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 4
  %58 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %7, align 8
  %59 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %58, i32 0, i32 1
  store i32 -1, i32* %59, align 4
  %60 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %7, align 8
  %61 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %60, i32 0, i32 3
  %62 = call i32 @mutex_init(i32* %61)
  %63 = load i32, i32* %8, align 4
  switch i32 %63, label %103 [
    i32 128, label %64
    i32 129, label %81
    i32 130, label %98
  ]

64:                                               ; preds = %34
  %65 = load i8*, i8** @DRM_CONNECTOR_POLL_HPD, align 8
  %66 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %7, align 8
  %67 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 6
  store i8* %65, i8** %68, align 8
  %69 = load %struct.dc_link*, %struct.dc_link** %9, align 8
  %70 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %69, i32 0, i32 0
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 1, i32 0
  %78 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %7, align 8
  %79 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 3
  store i32 %77, i32* %80, align 4
  br label %104

81:                                               ; preds = %34
  %82 = load i8*, i8** @DRM_CONNECTOR_POLL_HPD, align 8
  %83 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %7, align 8
  %84 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 6
  store i8* %82, i8** %85, align 8
  %86 = load %struct.dc_link*, %struct.dc_link** %9, align 8
  %87 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %86, i32 0, i32 0
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 1, i32 0
  %95 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %7, align 8
  %96 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 3
  store i32 %94, i32* %97, align 4
  br label %104

98:                                               ; preds = %34
  %99 = load i8*, i8** @DRM_CONNECTOR_POLL_HPD, align 8
  %100 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %7, align 8
  %101 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 6
  store i8* %99, i8** %102, align 8
  br label %104

103:                                              ; preds = %34
  br label %104

104:                                              ; preds = %103, %98, %81, %64
  %105 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %7, align 8
  %106 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 4
  %108 = load %struct.amdgpu_display_manager*, %struct.amdgpu_display_manager** %6, align 8
  %109 = getelementptr inbounds %struct.amdgpu_display_manager, %struct.amdgpu_display_manager* %108, i32 0, i32 0
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @DRM_MODE_SCALE_NONE, align 4
  %115 = call i32 @drm_object_attach_property(i32* %107, i32 %113, i32 %114)
  %116 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %7, align 8
  %117 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 4
  %119 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %120 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @UNDERSCAN_OFF, align 4
  %124 = call i32 @drm_object_attach_property(i32* %118, i32 %122, i32 %123)
  %125 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %7, align 8
  %126 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 4
  %128 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %129 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @drm_object_attach_property(i32* %127, i32 %131, i32 0)
  %133 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %7, align 8
  %134 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 4
  %136 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %137 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @drm_object_attach_property(i32* %135, i32 %139, i32 0)
  %141 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %7, align 8
  %142 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %141, i32 0, i32 2
  %143 = call i32 @drm_connector_attach_max_bpc_property(%struct.TYPE_13__* %142, i32 8, i32 16)
  %144 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %7, align 8
  %145 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 5
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 0
  store i32 8, i32* %148, align 4
  %149 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %7, align 8
  %150 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 5
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 1
  store i32 8, i32* %153, align 4
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* @DRM_MODE_CONNECTOR_eDP, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %173

157:                                              ; preds = %104
  %158 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %159 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i64 @dc_is_dmcu_initialized(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %173

164:                                              ; preds = %157
  %165 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %7, align 8
  %166 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 4
  %168 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %169 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @drm_object_attach_property(i32* %167, i32 %171, i32 0)
  br label %173

173:                                              ; preds = %164, %157, %104
  %174 = load i32, i32* %8, align 4
  %175 = icmp eq i32 %174, 128
  br i1 %175, label %183, label %176

176:                                              ; preds = %173
  %177 = load i32, i32* %8, align 4
  %178 = icmp eq i32 %177, 129
  br i1 %178, label %183, label %179

179:                                              ; preds = %176
  %180 = load i32, i32* %8, align 4
  %181 = load i32, i32* @DRM_MODE_CONNECTOR_eDP, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %197

183:                                              ; preds = %179, %176, %173
  %184 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %7, align 8
  %185 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 4
  %187 = load %struct.amdgpu_display_manager*, %struct.amdgpu_display_manager** %6, align 8
  %188 = getelementptr inbounds %struct.amdgpu_display_manager, %struct.amdgpu_display_manager* %187, i32 0, i32 0
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @drm_object_attach_property(i32* %186, i32 %192, i32 0)
  %194 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %7, align 8
  %195 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %194, i32 0, i32 2
  %196 = call i32 @drm_connector_attach_vrr_capable_property(%struct.TYPE_13__* %195)
  br label %197

197:                                              ; preds = %183, %179
  ret void
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @drm_object_attach_property(i32*, i32, i32) #1

declare dso_local i32 @drm_connector_attach_max_bpc_property(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i64 @dc_is_dmcu_initialized(i32) #1

declare dso_local i32 @drm_connector_attach_vrr_capable_property(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
