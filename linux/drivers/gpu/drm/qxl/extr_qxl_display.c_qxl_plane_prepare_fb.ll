; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_display.c_qxl_plane_prepare_fb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_display.c_qxl_plane_prepare_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.qxl_device* }
%struct.qxl_device = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.drm_plane_state = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.drm_gem_object** }
%struct.drm_gem_object = type { i32 }
%struct.qxl_bo = type { %struct.TYPE_12__*, i64 }
%struct.qxl_surface = type { i64, i32, i32 }

@DRM_PLANE_TYPE_PRIMARY = common dso_local global i64 0, align 8
@QXL_GEM_DOMAIN_SURFACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_plane_state*)* @qxl_plane_prepare_fb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qxl_plane_prepare_fb(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.qxl_device*, align 8
  %7 = alloca %struct.drm_gem_object*, align 8
  %8 = alloca %struct.qxl_bo*, align 8
  %9 = alloca %struct.qxl_surface, align 8
  %10 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %4, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %5, align 8
  %11 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %12 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %11, i32 0, i32 1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.qxl_device*, %struct.qxl_device** %14, align 8
  store %struct.qxl_device* %15, %struct.qxl_device** %6, align 8
  %16 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %17 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %16, i32 0, i32 1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = icmp ne %struct.TYPE_8__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %144

21:                                               ; preds = %2
  %22 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %23 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %25, align 8
  %27 = getelementptr inbounds %struct.drm_gem_object*, %struct.drm_gem_object** %26, i64 0
  %28 = load %struct.drm_gem_object*, %struct.drm_gem_object** %27, align 8
  store %struct.drm_gem_object* %28, %struct.drm_gem_object** %7, align 8
  %29 = load %struct.drm_gem_object*, %struct.drm_gem_object** %7, align 8
  %30 = call %struct.qxl_bo* @gem_to_qxl_bo(%struct.drm_gem_object* %29)
  store %struct.qxl_bo* %30, %struct.qxl_bo** %8, align 8
  %31 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %32 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DRM_PLANE_TYPE_PRIMARY, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %136

36:                                               ; preds = %21
  %37 = load %struct.qxl_bo*, %struct.qxl_bo** %8, align 8
  %38 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %136

41:                                               ; preds = %36
  %42 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %43 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %44 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %43, i32 0, i32 0
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.qxl_bo*, %struct.qxl_bo** %8, align 8
  %49 = call i32 @qxl_update_dumb_head(%struct.qxl_device* %42, i32 %47, %struct.qxl_bo* %48)
  %50 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %51 = call i32 @qxl_calc_dumb_shadow(%struct.qxl_device* %50, %struct.qxl_surface* %9)
  %52 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %53 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %52, i32 0, i32 0
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = icmp ne %struct.TYPE_12__* %54, null
  br i1 %55, label %56, label %76

56:                                               ; preds = %41
  %57 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %58 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %57, i32 0, i32 0
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.qxl_surface, %struct.qxl_surface* %9, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %62, %64
  br i1 %65, label %76, label %66

66:                                               ; preds = %56
  %67 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %68 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %67, i32 0, i32 0
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = getelementptr inbounds %struct.qxl_surface, %struct.qxl_surface* %9, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %72, %74
  br i1 %75, label %76, label %101

76:                                               ; preds = %66, %56, %41
  %77 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %78 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %77, i32 0, i32 0
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = icmp ne %struct.TYPE_12__* %79, null
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  %82 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %83 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %82, i32 0, i32 0
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = call i32 @drm_gem_object_put_unlocked(i32* %86)
  %88 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %89 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %88, i32 0, i32 0
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %89, align 8
  br label %90

90:                                               ; preds = %81, %76
  %91 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %92 = getelementptr inbounds %struct.qxl_surface, %struct.qxl_surface* %9, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = getelementptr inbounds %struct.qxl_surface, %struct.qxl_surface* %9, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = mul nsw i32 %93, %95
  %97 = load i32, i32* @QXL_GEM_DOMAIN_SURFACE, align 4
  %98 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %99 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %98, i32 0, i32 0
  %100 = call i32 @qxl_bo_create(%struct.qxl_device* %91, i32 %96, i32 1, i32 1, i32 %97, %struct.qxl_surface* %9, %struct.TYPE_12__** %99)
  br label %101

101:                                              ; preds = %90, %66
  %102 = load %struct.qxl_bo*, %struct.qxl_bo** %8, align 8
  %103 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %102, i32 0, i32 0
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %103, align 8
  %105 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %106 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %105, i32 0, i32 0
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %106, align 8
  %108 = icmp ne %struct.TYPE_12__* %104, %107
  br i1 %108, label %109, label %135

109:                                              ; preds = %101
  %110 = load %struct.qxl_bo*, %struct.qxl_bo** %8, align 8
  %111 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %110, i32 0, i32 0
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %111, align 8
  %113 = icmp ne %struct.TYPE_12__* %112, null
  br i1 %113, label %114, label %123

114:                                              ; preds = %109
  %115 = load %struct.qxl_bo*, %struct.qxl_bo** %8, align 8
  %116 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %115, i32 0, i32 0
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = call i32 @drm_gem_object_put_unlocked(i32* %119)
  %121 = load %struct.qxl_bo*, %struct.qxl_bo** %8, align 8
  %122 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %121, i32 0, i32 0
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %122, align 8
  br label %123

123:                                              ; preds = %114, %109
  %124 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %125 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %124, i32 0, i32 0
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = call i32 @drm_gem_object_get(i32* %128)
  %130 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %131 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %130, i32 0, i32 0
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %131, align 8
  %133 = load %struct.qxl_bo*, %struct.qxl_bo** %8, align 8
  %134 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %133, i32 0, i32 0
  store %struct.TYPE_12__* %132, %struct.TYPE_12__** %134, align 8
  br label %135

135:                                              ; preds = %123, %101
  br label %136

136:                                              ; preds = %135, %36, %21
  %137 = load %struct.qxl_bo*, %struct.qxl_bo** %8, align 8
  %138 = call i32 @qxl_bo_pin(%struct.qxl_bo* %137)
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* %10, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %136
  %142 = load i32, i32* %10, align 4
  store i32 %142, i32* %3, align 4
  br label %144

143:                                              ; preds = %136
  store i32 0, i32* %3, align 4
  br label %144

144:                                              ; preds = %143, %141, %20
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local %struct.qxl_bo* @gem_to_qxl_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @qxl_update_dumb_head(%struct.qxl_device*, i32, %struct.qxl_bo*) #1

declare dso_local i32 @qxl_calc_dumb_shadow(%struct.qxl_device*, %struct.qxl_surface*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(i32*) #1

declare dso_local i32 @qxl_bo_create(%struct.qxl_device*, i32, i32, i32, i32, %struct.qxl_surface*, %struct.TYPE_12__**) #1

declare dso_local i32 @drm_gem_object_get(i32*) #1

declare dso_local i32 @qxl_bo_pin(%struct.qxl_bo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
