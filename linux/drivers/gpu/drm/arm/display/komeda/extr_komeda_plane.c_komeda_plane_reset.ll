; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_plane.c_komeda_plane_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_plane.c_komeda_plane_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.drm_plane*, i32, i32, i32, i32, i32, i32 }
%struct.komeda_plane_state = type { %struct.TYPE_7__ }
%struct.komeda_plane = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_0 = common dso_local global i32 0, align 4
@DRM_MODE_BLEND_PREMULTI = common dso_local global i32 0, align 4
@DRM_BLEND_ALPHA_OPAQUE = common dso_local global i32 0, align 4
@DRM_COLOR_YCBCR_BT601 = common dso_local global i32 0, align 4
@DRM_COLOR_YCBCR_LIMITED_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*)* @komeda_plane_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @komeda_plane_reset(%struct.drm_plane* %0) #0 {
  %2 = alloca %struct.drm_plane*, align 8
  %3 = alloca %struct.komeda_plane_state*, align 8
  %4 = alloca %struct.komeda_plane*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %2, align 8
  %5 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %6 = call %struct.komeda_plane* @to_kplane(%struct.drm_plane* %5)
  store %struct.komeda_plane* %6, %struct.komeda_plane** %4, align 8
  %7 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %8 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %7, i32 0, i32 0
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = icmp ne %struct.TYPE_7__* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %13 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = call i32 @__drm_atomic_helper_plane_destroy_state(%struct.TYPE_7__* %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %18 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %17, i32 0, i32 0
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = call i32 @kfree(%struct.TYPE_7__* %19)
  %21 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %22 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %21, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %22, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.komeda_plane_state* @kzalloc(i32 32, i32 %23)
  store %struct.komeda_plane_state* %24, %struct.komeda_plane_state** %3, align 8
  %25 = load %struct.komeda_plane_state*, %struct.komeda_plane_state** %3, align 8
  %26 = icmp ne %struct.komeda_plane_state* %25, null
  br i1 %26, label %27, label %66

27:                                               ; preds = %16
  %28 = load i32, i32* @DRM_MODE_ROTATE_0, align 4
  %29 = load %struct.komeda_plane_state*, %struct.komeda_plane_state** %3, align 8
  %30 = getelementptr inbounds %struct.komeda_plane_state, %struct.komeda_plane_state* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 6
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @DRM_MODE_BLEND_PREMULTI, align 4
  %33 = load %struct.komeda_plane_state*, %struct.komeda_plane_state** %3, align 8
  %34 = getelementptr inbounds %struct.komeda_plane_state, %struct.komeda_plane_state* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 5
  store i32 %32, i32* %35, align 8
  %36 = load i32, i32* @DRM_BLEND_ALPHA_OPAQUE, align 4
  %37 = load %struct.komeda_plane_state*, %struct.komeda_plane_state** %3, align 8
  %38 = getelementptr inbounds %struct.komeda_plane_state, %struct.komeda_plane_state* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 4
  store i32 %36, i32* %39, align 4
  %40 = load %struct.komeda_plane*, %struct.komeda_plane** %4, align 8
  %41 = getelementptr inbounds %struct.komeda_plane, %struct.komeda_plane* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.komeda_plane_state*, %struct.komeda_plane_state** %3, align 8
  %47 = getelementptr inbounds %struct.komeda_plane_state, %struct.komeda_plane_state* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 3
  store i32 %45, i32* %48, align 8
  %49 = load i32, i32* @DRM_COLOR_YCBCR_BT601, align 4
  %50 = load %struct.komeda_plane_state*, %struct.komeda_plane_state** %3, align 8
  %51 = getelementptr inbounds %struct.komeda_plane_state, %struct.komeda_plane_state* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* @DRM_COLOR_YCBCR_LIMITED_RANGE, align 4
  %54 = load %struct.komeda_plane_state*, %struct.komeda_plane_state** %3, align 8
  %55 = getelementptr inbounds %struct.komeda_plane_state, %struct.komeda_plane_state* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 8
  %57 = load %struct.komeda_plane_state*, %struct.komeda_plane_state** %3, align 8
  %58 = getelementptr inbounds %struct.komeda_plane_state, %struct.komeda_plane_state* %57, i32 0, i32 0
  %59 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %60 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %59, i32 0, i32 0
  store %struct.TYPE_7__* %58, %struct.TYPE_7__** %60, align 8
  %61 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %62 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %63 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  store %struct.drm_plane* %61, %struct.drm_plane** %65, align 8
  br label %66

66:                                               ; preds = %27, %16
  ret void
}

declare dso_local %struct.komeda_plane* @to_kplane(%struct.drm_plane*) #1

declare dso_local i32 @__drm_atomic_helper_plane_destroy_state(%struct.TYPE_7__*) #1

declare dso_local i32 @kfree(%struct.TYPE_7__*) #1

declare dso_local %struct.komeda_plane_state* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
