; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_crtc.c_omap_crtc_atomic_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_crtc.c_omap_crtc_atomic_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.drm_property* }
%struct.TYPE_3__ = type { %struct.omap_drm_private* }
%struct.omap_drm_private = type { %struct.drm_property* }
%struct.drm_crtc_state = type { i32 }
%struct.drm_property = type { i32 }
%struct.omap_crtc_state = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_crtc_state*, %struct.drm_property*, i32*)* @omap_crtc_atomic_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_crtc_atomic_get_property(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1, %struct.drm_property* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_crtc*, align 8
  %7 = alloca %struct.drm_crtc_state*, align 8
  %8 = alloca %struct.drm_property*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.omap_drm_private*, align 8
  %11 = alloca %struct.omap_crtc_state*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %6, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %7, align 8
  store %struct.drm_property* %2, %struct.drm_property** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %13 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.omap_drm_private*, %struct.omap_drm_private** %15, align 8
  store %struct.omap_drm_private* %16, %struct.omap_drm_private** %10, align 8
  %17 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %7, align 8
  %18 = call %struct.omap_crtc_state* @to_omap_crtc_state(%struct.drm_crtc_state* %17)
  store %struct.omap_crtc_state* %18, %struct.omap_crtc_state** %11, align 8
  %19 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %20 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %21 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.drm_property*, %struct.drm_property** %23, align 8
  %25 = icmp eq %struct.drm_property* %19, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %4
  %27 = load %struct.omap_crtc_state*, %struct.omap_crtc_state** %11, align 8
  %28 = getelementptr inbounds %struct.omap_crtc_state, %struct.omap_crtc_state* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %9, align 8
  store i32 %29, i32* %30, align 4
  br label %46

31:                                               ; preds = %4
  %32 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %33 = load %struct.omap_drm_private*, %struct.omap_drm_private** %10, align 8
  %34 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %33, i32 0, i32 0
  %35 = load %struct.drm_property*, %struct.drm_property** %34, align 8
  %36 = icmp eq %struct.drm_property* %32, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load %struct.omap_crtc_state*, %struct.omap_crtc_state** %11, align 8
  %39 = getelementptr inbounds %struct.omap_crtc_state, %struct.omap_crtc_state* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %9, align 8
  store i32 %40, i32* %41, align 4
  br label %45

42:                                               ; preds = %31
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %47

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %26
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %46, %42
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local %struct.omap_crtc_state* @to_omap_crtc_state(%struct.drm_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
