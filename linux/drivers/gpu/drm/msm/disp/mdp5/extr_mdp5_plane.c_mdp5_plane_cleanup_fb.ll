; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_plane.c_mdp5_plane_cleanup_fb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_plane.c_mdp5_plane_cleanup_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_plane_state = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mdp5_kms = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.msm_kms }
%struct.msm_kms = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"%s: cleanup: FB[%u]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_plane_state*)* @mdp5_plane_cleanup_fb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdp5_plane_cleanup_fb(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.mdp5_kms*, align 8
  %6 = alloca %struct.msm_kms*, align 8
  %7 = alloca %struct.drm_framebuffer*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %8 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %9 = call %struct.mdp5_kms* @get_kms(%struct.drm_plane* %8)
  store %struct.mdp5_kms* %9, %struct.mdp5_kms** %5, align 8
  %10 = load %struct.mdp5_kms*, %struct.mdp5_kms** %5, align 8
  %11 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.msm_kms* %12, %struct.msm_kms** %6, align 8
  %13 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %14 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %13, i32 0, i32 0
  %15 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %14, align 8
  store %struct.drm_framebuffer* %15, %struct.drm_framebuffer** %7, align 8
  %16 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %17 = icmp ne %struct.drm_framebuffer* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %33

19:                                               ; preds = %2
  %20 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %21 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %24 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %26)
  %28 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %29 = load %struct.msm_kms*, %struct.msm_kms** %6, align 8
  %30 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @msm_framebuffer_cleanup(%struct.drm_framebuffer* %28, i32 %31)
  br label %33

33:                                               ; preds = %19, %18
  ret void
}

declare dso_local %struct.mdp5_kms* @get_kms(%struct.drm_plane*) #1

declare dso_local i32 @DBG(i8*, i32, i32) #1

declare dso_local i32 @msm_framebuffer_cleanup(%struct.drm_framebuffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
