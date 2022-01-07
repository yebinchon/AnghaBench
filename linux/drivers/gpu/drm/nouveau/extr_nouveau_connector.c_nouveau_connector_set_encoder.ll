; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_connector.c_nouveau_connector_set_encoder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_connector.c_nouveau_connector_set_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, i32, i32, %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.nouveau_encoder = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.nouveau_connector = type { i64, %struct.nouveau_encoder* }
%struct.nouveau_drm = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@NV_DEVICE_INFO_V0_TESLA = common dso_local global i64 0, align 8
@DCB_OUTPUT_LVDS = common dso_local global i64 0, align 8
@DCB_OUTPUT_TMDS = common dso_local global i64 0, align 8
@NV_DEVICE_INFO_V0_KELVIN = common dso_local global i64 0, align 8
@NV_DEVICE_INFO_V0_CELSIUS = common dso_local global i64 0, align 8
@DCB_CONNECTOR_DVI_I = common dso_local global i64 0, align 8
@DRM_MODE_SUBCONNECTOR_DVID = common dso_local global i32 0, align 4
@DRM_MODE_SUBCONNECTOR_DVIA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*, %struct.nouveau_encoder*)* @nouveau_connector_set_encoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_connector_set_encoder(%struct.drm_connector* %0, %struct.nouveau_encoder* %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.nouveau_encoder*, align 8
  %5 = alloca %struct.nouveau_connector*, align 8
  %6 = alloca %struct.nouveau_drm*, align 8
  %7 = alloca %struct.drm_device*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store %struct.nouveau_encoder* %1, %struct.nouveau_encoder** %4, align 8
  %8 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %9 = call %struct.nouveau_connector* @nouveau_connector(%struct.drm_connector* %8)
  store %struct.nouveau_connector* %9, %struct.nouveau_connector** %5, align 8
  %10 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %11 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %10, i32 0, i32 3
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  %13 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %12)
  store %struct.nouveau_drm* %13, %struct.nouveau_drm** %6, align 8
  %14 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %15 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %14, i32 0, i32 3
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %7, align 8
  %17 = load %struct.nouveau_connector*, %struct.nouveau_connector** %5, align 8
  %18 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %17, i32 0, i32 1
  %19 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %18, align 8
  %20 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %4, align 8
  %21 = icmp eq %struct.nouveau_encoder* %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %132

23:                                               ; preds = %2
  %24 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %4, align 8
  %25 = load %struct.nouveau_connector*, %struct.nouveau_connector** %5, align 8
  %26 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %25, i32 0, i32 1
  store %struct.nouveau_encoder* %24, %struct.nouveau_encoder** %26, align 8
  %27 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %28 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @NV_DEVICE_INFO_V0_TESLA, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %23
  %36 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %37 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %39 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  br label %105

40:                                               ; preds = %23
  %41 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %4, align 8
  %42 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %41, i32 0, i32 0
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @DCB_OUTPUT_LVDS, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %56, label %48

48:                                               ; preds = %40
  %49 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %4, align 8
  %50 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %49, i32 0, i32 0
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @DCB_OUTPUT_TMDS, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %48, %40
  %57 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %58 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %57, i32 0, i32 1
  store i32 0, i32* %58, align 4
  %59 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %60 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  br label %104

61:                                               ; preds = %48
  %62 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %63 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  %64 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %65 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @NV_DEVICE_INFO_V0_KELVIN, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %97, label %72

72:                                               ; preds = %61
  %73 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %74 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @NV_DEVICE_INFO_V0_CELSIUS, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %100

81:                                               ; preds = %72
  %82 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %83 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %82, i32 0, i32 1
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 4080
  %88 = icmp ne i32 %87, 256
  br i1 %88, label %89, label %100

89:                                               ; preds = %81
  %90 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %91 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %90, i32 0, i32 1
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, 4080
  %96 = icmp ne i32 %95, 336
  br i1 %96, label %97, label %100

97:                                               ; preds = %89, %61
  %98 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %99 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %98, i32 0, i32 0
  store i32 0, i32* %99, align 8
  br label %103

100:                                              ; preds = %89, %81, %72
  %101 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %102 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %101, i32 0, i32 0
  store i32 1, i32* %102, align 8
  br label %103

103:                                              ; preds = %100, %97
  br label %104

104:                                              ; preds = %103, %56
  br label %105

105:                                              ; preds = %104, %35
  %106 = load %struct.nouveau_connector*, %struct.nouveau_connector** %5, align 8
  %107 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @DCB_CONNECTOR_DVI_I, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %132

111:                                              ; preds = %105
  %112 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %113 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %112, i32 0, i32 2
  %114 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %115 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %4, align 8
  %119 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %118, i32 0, i32 0
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @DCB_OUTPUT_TMDS, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %111
  %126 = load i32, i32* @DRM_MODE_SUBCONNECTOR_DVID, align 4
  br label %129

127:                                              ; preds = %111
  %128 = load i32, i32* @DRM_MODE_SUBCONNECTOR_DVIA, align 4
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi i32 [ %126, %125 ], [ %128, %127 ]
  %131 = call i32 @drm_object_property_set_value(i32* %113, i32 %117, i32 %130)
  br label %132

132:                                              ; preds = %22, %129, %105
  ret void
}

declare dso_local %struct.nouveau_connector* @nouveau_connector(%struct.drm_connector*) #1

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @drm_object_property_set_value(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
