; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_plane.c_mdp5_plane_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_plane.c_mdp5_plane_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_plane*, i64 }
%struct.mdp5_plane_state = type { i32, %struct.TYPE_2__, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_PRIMARY = common dso_local global i64 0, align 8
@STAGE_BASE = common dso_local global i64 0, align 8
@STAGE0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*)* @mdp5_plane_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdp5_plane_reset(%struct.drm_plane* %0) #0 {
  %2 = alloca %struct.drm_plane*, align 8
  %3 = alloca %struct.mdp5_plane_state*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %2, align 8
  %4 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %5 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %10 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %8
  %16 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %17 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @drm_framebuffer_put(i64 %20)
  br label %22

22:                                               ; preds = %15, %8, %1
  %23 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %24 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = call i32 @to_mdp5_plane_state(%struct.TYPE_2__* %25)
  %27 = call i32 @kfree(i32 %26)
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.mdp5_plane_state* @kzalloc(i32 40, i32 %28)
  store %struct.mdp5_plane_state* %29, %struct.mdp5_plane_state** %3, align 8
  %30 = load %struct.mdp5_plane_state*, %struct.mdp5_plane_state** %3, align 8
  %31 = getelementptr inbounds %struct.mdp5_plane_state, %struct.mdp5_plane_state* %30, i32 0, i32 0
  store i32 255, i32* %31, align 8
  %32 = load %struct.mdp5_plane_state*, %struct.mdp5_plane_state** %3, align 8
  %33 = getelementptr inbounds %struct.mdp5_plane_state, %struct.mdp5_plane_state* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %35 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @DRM_PLANE_TYPE_PRIMARY, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %22
  %40 = load i64, i64* @STAGE_BASE, align 8
  %41 = load %struct.mdp5_plane_state*, %struct.mdp5_plane_state** %3, align 8
  %42 = getelementptr inbounds %struct.mdp5_plane_state, %struct.mdp5_plane_state* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  br label %50

43:                                               ; preds = %22
  %44 = load i64, i64* @STAGE0, align 8
  %45 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %46 = call i64 @drm_plane_index(%struct.drm_plane* %45)
  %47 = add nsw i64 %44, %46
  %48 = load %struct.mdp5_plane_state*, %struct.mdp5_plane_state** %3, align 8
  %49 = getelementptr inbounds %struct.mdp5_plane_state, %struct.mdp5_plane_state* %48, i32 0, i32 2
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %43, %39
  %51 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %52 = load %struct.mdp5_plane_state*, %struct.mdp5_plane_state** %3, align 8
  %53 = getelementptr inbounds %struct.mdp5_plane_state, %struct.mdp5_plane_state* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store %struct.drm_plane* %51, %struct.drm_plane** %54, align 8
  %55 = load %struct.mdp5_plane_state*, %struct.mdp5_plane_state** %3, align 8
  %56 = getelementptr inbounds %struct.mdp5_plane_state, %struct.mdp5_plane_state* %55, i32 0, i32 1
  %57 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %58 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %57, i32 0, i32 1
  store %struct.TYPE_2__* %56, %struct.TYPE_2__** %58, align 8
  ret void
}

declare dso_local i32 @drm_framebuffer_put(i64) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @to_mdp5_plane_state(%struct.TYPE_2__*) #1

declare dso_local %struct.mdp5_plane_state* @kzalloc(i32, i32) #1

declare dso_local i64 @drm_plane_index(%struct.drm_plane*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
