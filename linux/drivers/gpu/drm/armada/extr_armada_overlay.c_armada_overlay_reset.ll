; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_overlay.c_armada_overlay_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_overlay.c_armada_overlay_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32* }
%struct.armada_overlay_state = type { i32, i32, i32, i32, %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@CKMODE_RGB = common dso_local global i32 0, align 4
@CFG_ALPHAM_GRA = common dso_local global i32 0, align 4
@ADV_GRACOLORKEY = common dso_local global i32 0, align 4
@DEFAULT_BRIGHTNESS = common dso_local global i32 0, align 4
@DEFAULT_CONTRAST = common dso_local global i32 0, align 4
@DEFAULT_SATURATION = common dso_local global i32 0, align 4
@DEFAULT_ENCODING = common dso_local global i32 0, align 4
@DRM_COLOR_YCBCR_LIMITED_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*)* @armada_overlay_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @armada_overlay_reset(%struct.drm_plane* %0) #0 {
  %2 = alloca %struct.drm_plane*, align 8
  %3 = alloca %struct.armada_overlay_state*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %2, align 8
  %4 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %5 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %10 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @__drm_atomic_helper_plane_destroy_state(i32* %11)
  br label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %15 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @kfree(i32* %16)
  %18 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %19 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.armada_overlay_state* @kzalloc(i32 40, i32 %20)
  store %struct.armada_overlay_state* %21, %struct.armada_overlay_state** %3, align 8
  %22 = load %struct.armada_overlay_state*, %struct.armada_overlay_state** %3, align 8
  %23 = icmp ne %struct.armada_overlay_state* %22, null
  br i1 %23, label %24, label %66

24:                                               ; preds = %13
  %25 = load %struct.armada_overlay_state*, %struct.armada_overlay_state** %3, align 8
  %26 = getelementptr inbounds %struct.armada_overlay_state, %struct.armada_overlay_state* %25, i32 0, i32 0
  store i32 -16843264, i32* %26, align 4
  %27 = load %struct.armada_overlay_state*, %struct.armada_overlay_state** %3, align 8
  %28 = getelementptr inbounds %struct.armada_overlay_state, %struct.armada_overlay_state* %27, i32 0, i32 1
  store i32 16843008, i32* %28, align 4
  %29 = load %struct.armada_overlay_state*, %struct.armada_overlay_state** %3, align 8
  %30 = getelementptr inbounds %struct.armada_overlay_state, %struct.armada_overlay_state* %29, i32 0, i32 2
  store i32 16843008, i32* %30, align 4
  %31 = load i32, i32* @CKMODE_RGB, align 4
  %32 = call i32 @CFG_CKMODE(i32 %31)
  %33 = load i32, i32* @CFG_ALPHAM_GRA, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @CFG_ALPHA(i32 0)
  %36 = or i32 %34, %35
  %37 = load %struct.armada_overlay_state*, %struct.armada_overlay_state** %3, align 8
  %38 = getelementptr inbounds %struct.armada_overlay_state, %struct.armada_overlay_state* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @ADV_GRACOLORKEY, align 4
  %40 = load %struct.armada_overlay_state*, %struct.armada_overlay_state** %3, align 8
  %41 = getelementptr inbounds %struct.armada_overlay_state, %struct.armada_overlay_state* %40, i32 0, i32 8
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @DEFAULT_BRIGHTNESS, align 4
  %43 = load %struct.armada_overlay_state*, %struct.armada_overlay_state** %3, align 8
  %44 = getelementptr inbounds %struct.armada_overlay_state, %struct.armada_overlay_state* %43, i32 0, i32 7
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @DEFAULT_CONTRAST, align 4
  %46 = load %struct.armada_overlay_state*, %struct.armada_overlay_state** %3, align 8
  %47 = getelementptr inbounds %struct.armada_overlay_state, %struct.armada_overlay_state* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @DEFAULT_SATURATION, align 4
  %49 = load %struct.armada_overlay_state*, %struct.armada_overlay_state** %3, align 8
  %50 = getelementptr inbounds %struct.armada_overlay_state, %struct.armada_overlay_state* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  %51 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %52 = load %struct.armada_overlay_state*, %struct.armada_overlay_state** %3, align 8
  %53 = getelementptr inbounds %struct.armada_overlay_state, %struct.armada_overlay_state* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = call i32 @__drm_atomic_helper_plane_reset(%struct.drm_plane* %51, %struct.TYPE_4__* %54)
  %56 = load i32, i32* @DEFAULT_ENCODING, align 4
  %57 = load %struct.armada_overlay_state*, %struct.armada_overlay_state** %3, align 8
  %58 = getelementptr inbounds %struct.armada_overlay_state, %struct.armada_overlay_state* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  store i32 %56, i32* %60, align 4
  %61 = load i32, i32* @DRM_COLOR_YCBCR_LIMITED_RANGE, align 4
  %62 = load %struct.armada_overlay_state*, %struct.armada_overlay_state** %3, align 8
  %63 = getelementptr inbounds %struct.armada_overlay_state, %struct.armada_overlay_state* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32 %61, i32* %65, align 4
  br label %66

66:                                               ; preds = %24, %13
  ret void
}

declare dso_local i32 @__drm_atomic_helper_plane_destroy_state(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local %struct.armada_overlay_state* @kzalloc(i32, i32) #1

declare dso_local i32 @CFG_CKMODE(i32) #1

declare dso_local i32 @CFG_ALPHA(i32) #1

declare dso_local i32 @__drm_atomic_helper_plane_reset(%struct.drm_plane*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
