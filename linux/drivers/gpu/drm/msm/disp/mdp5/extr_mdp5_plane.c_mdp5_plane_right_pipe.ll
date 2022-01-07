; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_plane.c_mdp5_plane_right_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_plane.c_mdp5_plane_right_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.mdp5_plane_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SSPP_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdp5_plane_right_pipe(%struct.drm_plane* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.mdp5_plane_state*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  %5 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %6 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.mdp5_plane_state* @to_mdp5_plane_state(i32 %7)
  store %struct.mdp5_plane_state* %8, %struct.mdp5_plane_state** %4, align 8
  %9 = load %struct.mdp5_plane_state*, %struct.mdp5_plane_state** %4, align 8
  %10 = getelementptr inbounds %struct.mdp5_plane_state, %struct.mdp5_plane_state* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @SSPP_NONE, align 4
  store i32 %14, i32* %2, align 4
  br label %21

15:                                               ; preds = %1
  %16 = load %struct.mdp5_plane_state*, %struct.mdp5_plane_state** %4, align 8
  %17 = getelementptr inbounds %struct.mdp5_plane_state, %struct.mdp5_plane_state* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %15, %13
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local %struct.mdp5_plane_state* @to_mdp5_plane_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
