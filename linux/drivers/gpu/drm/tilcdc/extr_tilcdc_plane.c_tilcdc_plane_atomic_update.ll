; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_plane.c_tilcdc_plane_atomic_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_plane.c_tilcdc_plane_atomic_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.drm_plane_state* }
%struct.drm_plane_state = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_plane_state*)* @tilcdc_plane_atomic_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tilcdc_plane_atomic_update(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %6 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %7 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %6, i32 0, i32 0
  %8 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  store %struct.drm_plane_state* %8, %struct.drm_plane_state** %5, align 8
  %9 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %10 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %48

14:                                               ; preds = %2
  %15 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %16 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %21 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %19, %14
  %28 = phi i1 [ true, %14 ], [ %26, %19 ]
  %29 = zext i1 %28 to i32
  %30 = call i64 @WARN_ON(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %48

33:                                               ; preds = %27
  %34 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %35 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %38 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %41 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @tilcdc_crtc_update_fb(%struct.TYPE_4__* %36, i32 %39, i32 %46)
  br label %48

48:                                               ; preds = %33, %32, %13
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @tilcdc_crtc_update_fb(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
