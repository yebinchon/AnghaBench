; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_complete_data_flow_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_complete_data_flow_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_layer = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.komeda_scaler** }
%struct.komeda_scaler = type { i32 }
%struct.komeda_data_flow_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_framebuffer = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@DRM_MODE_BLEND_PIXEL_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @komeda_complete_data_flow_cfg(%struct.komeda_layer* %0, %struct.komeda_data_flow_cfg* %1, %struct.drm_framebuffer* %2) #0 {
  %4 = alloca %struct.komeda_layer*, align 8
  %5 = alloca %struct.komeda_data_flow_cfg*, align 8
  %6 = alloca %struct.drm_framebuffer*, align 8
  %7 = alloca %struct.komeda_scaler*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.komeda_layer* %0, %struct.komeda_layer** %4, align 8
  store %struct.komeda_data_flow_cfg* %1, %struct.komeda_data_flow_cfg** %5, align 8
  store %struct.drm_framebuffer* %2, %struct.drm_framebuffer** %6, align 8
  %10 = load %struct.komeda_layer*, %struct.komeda_layer** %4, align 8
  %11 = getelementptr inbounds %struct.komeda_layer, %struct.komeda_layer* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.komeda_scaler**, %struct.komeda_scaler*** %14, align 8
  %16 = getelementptr inbounds %struct.komeda_scaler*, %struct.komeda_scaler** %15, i64 0
  %17 = load %struct.komeda_scaler*, %struct.komeda_scaler** %16, align 8
  store %struct.komeda_scaler* %17, %struct.komeda_scaler** %7, align 8
  %18 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %5, align 8
  %19 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %5, align 8
  %22 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  %24 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %5, align 8
  %25 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %5, align 8
  %28 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %5, align 8
  %30 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %5, align 8
  %33 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %5, align 8
  %35 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %5, align 8
  %38 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %40 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %3
  %46 = load i32, i32* @DRM_MODE_BLEND_PIXEL_NONE, align 4
  %47 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %5, align 8
  %48 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %47, i32 0, i32 12
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %45, %3
  %50 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %5, align 8
  %51 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %50, i32 0, i32 11
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @drm_rotation_90_or_270(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @swap(i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %49
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %5, align 8
  %62 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %60, %63
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %5, align 8
  %68 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %66, %69
  br label %71

71:                                               ; preds = %65, %59
  %72 = phi i1 [ true, %59 ], [ %70, %65 ]
  %73 = zext i1 %72 to i32
  %74 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %5, align 8
  %75 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %74, i32 0, i32 6
  store i32 %73, i32* %75, align 4
  %76 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %77 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %5, align 8
  %82 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %81, i32 0, i32 10
  store i32 %80, i32* %82, align 4
  %83 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %5, align 8
  %84 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %8, align 4
  %87 = mul nsw i32 2, %86
  %88 = icmp sge i32 %85, %87
  br i1 %88, label %96, label %89

89:                                               ; preds = %71
  %90 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %5, align 8
  %91 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %90, i32 0, i32 7
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %9, align 4
  %94 = mul nsw i32 2, %93
  %95 = icmp sge i32 %92, %94
  br label %96

96:                                               ; preds = %89, %71
  %97 = phi i1 [ true, %71 ], [ %95, %89 ]
  %98 = zext i1 %97 to i32
  %99 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %5, align 8
  %100 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %99, i32 0, i32 8
  store i32 %98, i32* %100, align 4
  %101 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %5, align 8
  %102 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %130

105:                                              ; preds = %96
  %106 = load %struct.komeda_scaler*, %struct.komeda_scaler** %7, align 8
  %107 = icmp ne %struct.komeda_scaler* %106, null
  br i1 %107, label %108, label %130

108:                                              ; preds = %105
  %109 = load %struct.komeda_scaler*, %struct.komeda_scaler** %7, align 8
  %110 = getelementptr inbounds %struct.komeda_scaler, %struct.komeda_scaler* %109, i32 0, i32 0
  %111 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %5, align 8
  %112 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @in_range(i32* %110, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %108
  %117 = load %struct.komeda_scaler*, %struct.komeda_scaler** %7, align 8
  %118 = getelementptr inbounds %struct.komeda_scaler, %struct.komeda_scaler* %117, i32 0, i32 0
  %119 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %5, align 8
  %120 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @in_range(i32* %118, i32 %121)
  %123 = icmp ne i32 %122, 0
  %124 = xor i1 %123, true
  br label %125

125:                                              ; preds = %116, %108
  %126 = phi i1 [ true, %108 ], [ %124, %116 ]
  %127 = zext i1 %126 to i32
  %128 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %5, align 8
  %129 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %128, i32 0, i32 9
  store i32 %127, i32* %129, align 4
  br label %130

130:                                              ; preds = %125, %105, %96
  ret void
}

declare dso_local i64 @drm_rotation_90_or_270(i32) #1

declare dso_local i32 @swap(i32, i32) #1

declare dso_local i32 @in_range(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
