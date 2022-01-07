; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_crtc.c_omap_crtc_atomic_set_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_crtc.c_omap_crtc_atomic_set_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.drm_property* }
%struct.TYPE_3__ = type { %struct.omap_drm_private* }
%struct.omap_drm_private = type { %struct.drm_property* }
%struct.drm_crtc_state = type { i32 }
%struct.drm_property = type { i32 }
%struct.drm_plane_state = type { i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_crtc_state*, %struct.drm_property*, i8*)* @omap_crtc_atomic_set_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_crtc_atomic_set_property(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1, %struct.drm_property* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_crtc*, align 8
  %7 = alloca %struct.drm_crtc_state*, align 8
  %8 = alloca %struct.drm_property*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.omap_drm_private*, align 8
  %11 = alloca %struct.drm_plane_state*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %6, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %7, align 8
  store %struct.drm_property* %2, %struct.drm_property** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %13 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.omap_drm_private*, %struct.omap_drm_private** %15, align 8
  store %struct.omap_drm_private* %16, %struct.omap_drm_private** %10, align 8
  %17 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %7, align 8
  %18 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %21 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = call %struct.drm_plane_state* @drm_atomic_get_plane_state(i32 %19, %struct.TYPE_4__* %22)
  store %struct.drm_plane_state* %23, %struct.drm_plane_state** %11, align 8
  %24 = load %struct.drm_plane_state*, %struct.drm_plane_state** %11, align 8
  %25 = call i64 @IS_ERR(%struct.drm_plane_state* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load %struct.drm_plane_state*, %struct.drm_plane_state** %11, align 8
  %29 = call i32 @PTR_ERR(%struct.drm_plane_state* %28)
  store i32 %29, i32* %5, align 4
  br label %57

30:                                               ; preds = %4
  %31 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %32 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %33 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.drm_property*, %struct.drm_property** %35, align 8
  %37 = icmp eq %struct.drm_property* %31, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i8*, i8** %9, align 8
  %40 = load %struct.drm_plane_state*, %struct.drm_plane_state** %11, align 8
  %41 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  br label %56

42:                                               ; preds = %30
  %43 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %44 = load %struct.omap_drm_private*, %struct.omap_drm_private** %10, align 8
  %45 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %44, i32 0, i32 0
  %46 = load %struct.drm_property*, %struct.drm_property** %45, align 8
  %47 = icmp eq %struct.drm_property* %43, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i8*, i8** %9, align 8
  %50 = load %struct.drm_plane_state*, %struct.drm_plane_state** %11, align 8
  %51 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  br label %55

52:                                               ; preds = %42
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %57

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %38
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %56, %52, %27
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local %struct.drm_plane_state* @drm_atomic_get_plane_state(i32, %struct.TYPE_4__*) #1

declare dso_local i64 @IS_ERR(%struct.drm_plane_state*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_plane_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
