; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_plane.c_mdp5_plane_get_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_plane.c_mdp5_plane_get_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.mdp5_plane_state = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdp5_plane_get_flush(%struct.drm_plane* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.mdp5_plane_state*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  %6 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %7 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.mdp5_plane_state* @to_mdp5_plane_state(i32 %8)
  store %struct.mdp5_plane_state* %9, %struct.mdp5_plane_state** %4, align 8
  %10 = load %struct.mdp5_plane_state*, %struct.mdp5_plane_state** %4, align 8
  %11 = getelementptr inbounds %struct.mdp5_plane_state, %struct.mdp5_plane_state* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = icmp ne %struct.TYPE_3__* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %39

19:                                               ; preds = %1
  %20 = load %struct.mdp5_plane_state*, %struct.mdp5_plane_state** %4, align 8
  %21 = getelementptr inbounds %struct.mdp5_plane_state, %struct.mdp5_plane_state* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %5, align 4
  %25 = load %struct.mdp5_plane_state*, %struct.mdp5_plane_state** %4, align 8
  %26 = getelementptr inbounds %struct.mdp5_plane_state, %struct.mdp5_plane_state* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = icmp ne %struct.TYPE_4__* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %19
  %30 = load %struct.mdp5_plane_state*, %struct.mdp5_plane_state** %4, align 8
  %31 = getelementptr inbounds %struct.mdp5_plane_state, %struct.mdp5_plane_state* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %29, %19
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %18
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.mdp5_plane_state* @to_mdp5_plane_state(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
