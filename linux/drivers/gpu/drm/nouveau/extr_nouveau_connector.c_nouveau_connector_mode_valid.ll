; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_connector.c_nouveau_connector_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_connector.c_nouveau_connector_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32 }
%struct.nouveau_connector = type { %struct.TYPE_7__*, %struct.nouveau_encoder* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.nouveau_encoder = type { %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.drm_encoder = type { i32 }
%struct.TYPE_12__ = type { i32 (%struct.drm_encoder*, %struct.drm_display_mode*)* }

@MODE_PANEL = common dso_local global i32 0, align 4
@MODE_BAD = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_3D_MASK = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_3D_FRAME_PACKING = common dso_local global i32 0, align 4
@MODE_CLOCK_LOW = common dso_local global i32 0, align 4
@MODE_CLOCK_HIGH = common dso_local global i32 0, align 4
@MODE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_display_mode*)* @nouveau_connector_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_connector_mode_valid(%struct.drm_connector* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.nouveau_connector*, align 8
  %7 = alloca %struct.nouveau_encoder*, align 8
  %8 = alloca %struct.drm_encoder*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %12 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %13 = call %struct.nouveau_connector* @nouveau_connector(%struct.drm_connector* %12)
  store %struct.nouveau_connector* %13, %struct.nouveau_connector** %6, align 8
  %14 = load %struct.nouveau_connector*, %struct.nouveau_connector** %6, align 8
  %15 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %14, i32 0, i32 1
  %16 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %15, align 8
  store %struct.nouveau_encoder* %16, %struct.nouveau_encoder** %7, align 8
  %17 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %7, align 8
  %18 = call %struct.drm_encoder* @to_drm_encoder(%struct.nouveau_encoder* %17)
  store %struct.drm_encoder* %18, %struct.drm_encoder** %8, align 8
  store i32 25000, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %21 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %7, align 8
  %24 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %23, i32 0, i32 1
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %97 [
    i32 130, label %28
    i32 129, label %56
    i32 132, label %59
    i32 128, label %70
    i32 131, label %78
  ]

28:                                               ; preds = %2
  %29 = load %struct.nouveau_connector*, %struct.nouveau_connector** %6, align 8
  %30 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = icmp ne %struct.TYPE_7__* %31, null
  br i1 %32, label %33, label %55

33:                                               ; preds = %28
  %34 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %35 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.nouveau_connector*, %struct.nouveau_connector** %6, align 8
  %38 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %36, %41
  br i1 %42, label %53, label %43

43:                                               ; preds = %33
  %44 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %45 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.nouveau_connector*, %struct.nouveau_connector** %6, align 8
  %48 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp sgt i32 %46, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %43, %33
  %54 = load i32, i32* @MODE_PANEL, align 4
  store i32 %54, i32* %3, align 4
  br label %125

55:                                               ; preds = %43, %28
  store i32 0, i32* %9, align 4
  store i32 400000, i32* %10, align 4
  br label %100

56:                                               ; preds = %2
  %57 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %58 = call i32 @get_tmds_link_bandwidth(%struct.drm_connector* %57)
  store i32 %58, i32* %10, align 4
  br label %100

59:                                               ; preds = %2
  %60 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %7, align 8
  %61 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %60, i32 0, i32 1
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %59
  store i32 350000, i32* %10, align 4
  br label %69

69:                                               ; preds = %68, %59
  br label %100

70:                                               ; preds = %2
  %71 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %72 = call %struct.TYPE_12__* @get_slave_funcs(%struct.drm_encoder* %71)
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32 (%struct.drm_encoder*, %struct.drm_display_mode*)*, i32 (%struct.drm_encoder*, %struct.drm_display_mode*)** %73, align 8
  %75 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %76 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %77 = call i32 %74(%struct.drm_encoder* %75, %struct.drm_display_mode* %76)
  store i32 %77, i32* %3, align 4
  br label %125

78:                                               ; preds = %2
  %79 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %7, align 8
  %80 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %10, align 4
  %83 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %7, align 8
  %84 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %10, align 4
  %88 = mul i32 %87, %86
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %91 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 %93, 3
  %95 = mul i32 %89, %94
  %96 = udiv i32 %95, 10
  store i32 %96, i32* %11, align 4
  br label %100

97:                                               ; preds = %2
  %98 = call i32 (...) @BUG()
  %99 = load i32, i32* @MODE_BAD, align 4
  store i32 %99, i32* %3, align 4
  br label %125

100:                                              ; preds = %78, %69, %56, %55
  %101 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %102 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @DRM_MODE_FLAG_3D_MASK, align 4
  %105 = and i32 %103, %104
  %106 = load i32, i32* @DRM_MODE_FLAG_3D_FRAME_PACKING, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %100
  %109 = load i32, i32* %11, align 4
  %110 = mul i32 %109, 2
  store i32 %110, i32* %11, align 4
  br label %111

111:                                              ; preds = %108, %100
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp ult i32 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = load i32, i32* @MODE_CLOCK_LOW, align 4
  store i32 %116, i32* %3, align 4
  br label %125

117:                                              ; preds = %111
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp ugt i32 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = load i32, i32* @MODE_CLOCK_HIGH, align 4
  store i32 %122, i32* %3, align 4
  br label %125

123:                                              ; preds = %117
  %124 = load i32, i32* @MODE_OK, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %123, %121, %115, %97, %70, %53
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local %struct.nouveau_connector* @nouveau_connector(%struct.drm_connector*) #1

declare dso_local %struct.drm_encoder* @to_drm_encoder(%struct.nouveau_encoder*) #1

declare dso_local i32 @get_tmds_link_bandwidth(%struct.drm_connector*) #1

declare dso_local %struct.TYPE_12__* @get_slave_funcs(%struct.drm_encoder*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
