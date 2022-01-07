; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_atomic.c_msm_atomic_prepare_fb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_atomic.c_msm_atomic_prepare_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { %struct.msm_kms* }
%struct.msm_kms = type { i32 }
%struct.drm_plane_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_atomic_prepare_fb(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.msm_drm_private*, align 8
  %7 = alloca %struct.msm_kms*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %4, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %5, align 8
  %8 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %9 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.msm_drm_private*, %struct.msm_drm_private** %11, align 8
  store %struct.msm_drm_private* %12, %struct.msm_drm_private** %6, align 8
  %13 = load %struct.msm_drm_private*, %struct.msm_drm_private** %6, align 8
  %14 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %13, i32 0, i32 0
  %15 = load %struct.msm_kms*, %struct.msm_kms** %14, align 8
  store %struct.msm_kms* %15, %struct.msm_kms** %7, align 8
  %16 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %17 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

21:                                               ; preds = %2
  %22 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %23 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %24 = call i32 @drm_gem_fb_prepare_fb(%struct.drm_plane* %22, %struct.drm_plane_state* %23)
  %25 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %26 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.msm_kms*, %struct.msm_kms** %7, align 8
  %29 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @msm_framebuffer_prepare(i32 %27, i32 %30)
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %21, %20
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @drm_gem_fb_prepare_fb(%struct.drm_plane*, %struct.drm_plane_state*) #1

declare dso_local i32 @msm_framebuffer_prepare(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
