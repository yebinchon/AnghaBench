; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_plane.c_mdp4_plane_cleanup_fb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_plane.c_mdp4_plane_cleanup_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_plane_state = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mdp4_plane = type { i32 }
%struct.mdp4_kms = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.msm_kms }
%struct.msm_kms = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"%s: cleanup: FB[%u]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_plane_state*)* @mdp4_plane_cleanup_fb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdp4_plane_cleanup_fb(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.mdp4_plane*, align 8
  %6 = alloca %struct.mdp4_kms*, align 8
  %7 = alloca %struct.msm_kms*, align 8
  %8 = alloca %struct.drm_framebuffer*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %9 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %10 = call %struct.mdp4_plane* @to_mdp4_plane(%struct.drm_plane* %9)
  store %struct.mdp4_plane* %10, %struct.mdp4_plane** %5, align 8
  %11 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %12 = call %struct.mdp4_kms* @get_kms(%struct.drm_plane* %11)
  store %struct.mdp4_kms* %12, %struct.mdp4_kms** %6, align 8
  %13 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %14 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.msm_kms* %15, %struct.msm_kms** %7, align 8
  %16 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %17 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %16, i32 0, i32 0
  %18 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %17, align 8
  store %struct.drm_framebuffer* %18, %struct.drm_framebuffer** %8, align 8
  %19 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %20 = icmp ne %struct.drm_framebuffer* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %36

22:                                               ; preds = %2
  %23 = load %struct.mdp4_plane*, %struct.mdp4_plane** %5, align 8
  %24 = getelementptr inbounds %struct.mdp4_plane, %struct.mdp4_plane* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %27 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %29)
  %31 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %32 = load %struct.msm_kms*, %struct.msm_kms** %7, align 8
  %33 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @msm_framebuffer_cleanup(%struct.drm_framebuffer* %31, i32 %34)
  br label %36

36:                                               ; preds = %22, %21
  ret void
}

declare dso_local %struct.mdp4_plane* @to_mdp4_plane(%struct.drm_plane*) #1

declare dso_local %struct.mdp4_kms* @get_kms(%struct.drm_plane*) #1

declare dso_local i32 @DBG(i8*, i32, i32) #1

declare dso_local i32 @msm_framebuffer_cleanup(%struct.drm_framebuffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
