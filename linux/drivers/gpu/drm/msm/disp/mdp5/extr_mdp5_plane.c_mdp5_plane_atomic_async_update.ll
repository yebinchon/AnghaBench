; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_plane.c_mdp5_plane_atomic_async_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_plane.c_mdp5_plane_atomic_async_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.drm_plane_state* }
%struct.drm_plane_state = type { %struct.drm_framebuffer*, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_framebuffer = type { i32 }
%struct.mdp5_ctl = type { i32 }
%struct.mdp5_pipeline = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_plane_state*)* @mdp5_plane_atomic_async_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdp5_plane_atomic_async_update(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.drm_framebuffer*, align 8
  %6 = alloca %struct.mdp5_ctl*, align 8
  %7 = alloca %struct.mdp5_pipeline*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %9 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %10 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %9, i32 0, i32 0
  %11 = load %struct.drm_plane_state*, %struct.drm_plane_state** %10, align 8
  %12 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %11, i32 0, i32 0
  %13 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  store %struct.drm_framebuffer* %13, %struct.drm_framebuffer** %5, align 8
  %14 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %15 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %18 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %17, i32 0, i32 0
  %19 = load %struct.drm_plane_state*, %struct.drm_plane_state** %18, align 8
  %20 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %19, i32 0, i32 7
  store i32 %16, i32* %20, align 8
  %21 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %22 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %25 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %24, i32 0, i32 0
  %26 = load %struct.drm_plane_state*, %struct.drm_plane_state** %25, align 8
  %27 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %26, i32 0, i32 6
  store i32 %23, i32* %27, align 4
  %28 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %29 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %32 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %31, i32 0, i32 0
  %33 = load %struct.drm_plane_state*, %struct.drm_plane_state** %32, align 8
  %34 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %33, i32 0, i32 5
  store i32 %30, i32* %34, align 8
  %35 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %36 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %39 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %38, i32 0, i32 0
  %40 = load %struct.drm_plane_state*, %struct.drm_plane_state** %39, align 8
  %41 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %40, i32 0, i32 4
  store i32 %37, i32* %41, align 4
  %42 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %43 = call i64 @plane_enabled(%struct.drm_plane_state* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %75

45:                                               ; preds = %2
  %46 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %47 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.mdp5_pipeline* @mdp5_crtc_get_pipeline(i32 %48)
  store %struct.mdp5_pipeline* %49, %struct.mdp5_pipeline** %7, align 8
  %50 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %51 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %52 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %55 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %54, i32 0, i32 0
  %56 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %55, align 8
  %57 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %58 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %57, i32 0, i32 3
  %59 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %60 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %59, i32 0, i32 2
  %61 = call i32 @mdp5_plane_mode_set(%struct.drm_plane* %50, i32 %53, %struct.drm_framebuffer* %56, i32* %58, i32* %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @WARN_ON(i32 %64)
  %66 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %67 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call %struct.mdp5_ctl* @mdp5_crtc_get_ctl(i32 %68)
  store %struct.mdp5_ctl* %69, %struct.mdp5_ctl** %6, align 8
  %70 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %6, align 8
  %71 = load %struct.mdp5_pipeline*, %struct.mdp5_pipeline** %7, align 8
  %72 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %73 = call i32 @mdp5_plane_get_flush(%struct.drm_plane* %72)
  %74 = call i32 @mdp5_ctl_commit(%struct.mdp5_ctl* %70, %struct.mdp5_pipeline* %71, i32 %73, i32 1)
  br label %75

75:                                               ; preds = %45, %2
  %76 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %77 = call i32* @to_mdp5_plane_state(%struct.drm_plane_state* %76)
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %80 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %79, i32 0, i32 0
  %81 = load %struct.drm_plane_state*, %struct.drm_plane_state** %80, align 8
  %82 = call i32* @to_mdp5_plane_state(%struct.drm_plane_state* %81)
  store i32 %78, i32* %82, align 4
  %83 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %84 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %85 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %84, i32 0, i32 0
  store %struct.drm_framebuffer* %83, %struct.drm_framebuffer** %85, align 8
  ret void
}

declare dso_local i64 @plane_enabled(%struct.drm_plane_state*) #1

declare dso_local %struct.mdp5_pipeline* @mdp5_crtc_get_pipeline(i32) #1

declare dso_local i32 @mdp5_plane_mode_set(%struct.drm_plane*, i32, %struct.drm_framebuffer*, i32*, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.mdp5_ctl* @mdp5_crtc_get_ctl(i32) #1

declare dso_local i32 @mdp5_ctl_commit(%struct.mdp5_ctl*, %struct.mdp5_pipeline*, i32, i32) #1

declare dso_local i32 @mdp5_plane_get_flush(%struct.drm_plane*) #1

declare dso_local i32* @to_mdp5_plane_state(%struct.drm_plane_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
