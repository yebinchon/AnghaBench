; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_mixer.c_mdp5_mixer_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_mixer.c_mdp5_mixer_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_atomic_state = type { i32 }
%struct.mdp5_hw_mixer = type { i64, i32 }
%struct.mdp5_global_state = type { %struct.mdp5_hw_mixer_state }
%struct.mdp5_hw_mixer_state = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"%s: release from crtc %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mdp5_mixer_release(%struct.drm_atomic_state* %0, %struct.mdp5_hw_mixer* %1) #0 {
  %3 = alloca %struct.drm_atomic_state*, align 8
  %4 = alloca %struct.mdp5_hw_mixer*, align 8
  %5 = alloca %struct.mdp5_global_state*, align 8
  %6 = alloca %struct.mdp5_hw_mixer_state*, align 8
  store %struct.drm_atomic_state* %0, %struct.drm_atomic_state** %3, align 8
  store %struct.mdp5_hw_mixer* %1, %struct.mdp5_hw_mixer** %4, align 8
  %7 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %3, align 8
  %8 = call %struct.mdp5_global_state* @mdp5_get_global_state(%struct.drm_atomic_state* %7)
  store %struct.mdp5_global_state* %8, %struct.mdp5_global_state** %5, align 8
  %9 = load %struct.mdp5_global_state*, %struct.mdp5_global_state** %5, align 8
  %10 = getelementptr inbounds %struct.mdp5_global_state, %struct.mdp5_global_state* %9, i32 0, i32 0
  store %struct.mdp5_hw_mixer_state* %10, %struct.mdp5_hw_mixer_state** %6, align 8
  %11 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %4, align 8
  %12 = icmp ne %struct.mdp5_hw_mixer* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %51

14:                                               ; preds = %2
  %15 = load %struct.mdp5_hw_mixer_state*, %struct.mdp5_hw_mixer_state** %6, align 8
  %16 = getelementptr inbounds %struct.mdp5_hw_mixer_state, %struct.mdp5_hw_mixer_state* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %16, align 8
  %18 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %4, align 8
  %19 = getelementptr inbounds %struct.mdp5_hw_mixer, %struct.mdp5_hw_mixer* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %17, i64 %20
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @WARN_ON(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %14
  br label %51

29:                                               ; preds = %14
  %30 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %4, align 8
  %31 = getelementptr inbounds %struct.mdp5_hw_mixer, %struct.mdp5_hw_mixer* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.mdp5_hw_mixer_state*, %struct.mdp5_hw_mixer_state** %6, align 8
  %34 = getelementptr inbounds %struct.mdp5_hw_mixer_state, %struct.mdp5_hw_mixer_state* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %34, align 8
  %36 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %4, align 8
  %37 = getelementptr inbounds %struct.mdp5_hw_mixer, %struct.mdp5_hw_mixer* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %35, i64 %38
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %42)
  %44 = load %struct.mdp5_hw_mixer_state*, %struct.mdp5_hw_mixer_state** %6, align 8
  %45 = getelementptr inbounds %struct.mdp5_hw_mixer_state, %struct.mdp5_hw_mixer_state* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %45, align 8
  %47 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %4, align 8
  %48 = getelementptr inbounds %struct.mdp5_hw_mixer, %struct.mdp5_hw_mixer* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %46, i64 %49
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %50, align 8
  br label %51

51:                                               ; preds = %29, %28, %13
  ret void
}

declare dso_local %struct.mdp5_global_state* @mdp5_get_global_state(%struct.drm_atomic_state*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @DBG(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
