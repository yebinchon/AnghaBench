; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_kms.c_mdp5_get_global_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_kms.c_mdp5_get_global_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp5_global_state = type { i32 }
%struct.drm_atomic_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { i32 }
%struct.mdp5_kms = type { i32, i32 }
%struct.drm_private_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mdp5_global_state* @mdp5_get_global_state(%struct.drm_atomic_state* %0) #0 {
  %2 = alloca %struct.mdp5_global_state*, align 8
  %3 = alloca %struct.drm_atomic_state*, align 8
  %4 = alloca %struct.msm_drm_private*, align 8
  %5 = alloca %struct.mdp5_kms*, align 8
  %6 = alloca %struct.drm_private_state*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_atomic_state* %0, %struct.drm_atomic_state** %3, align 8
  %8 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %3, align 8
  %9 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.msm_drm_private*, %struct.msm_drm_private** %11, align 8
  store %struct.msm_drm_private* %12, %struct.msm_drm_private** %4, align 8
  %13 = load %struct.msm_drm_private*, %struct.msm_drm_private** %4, align 8
  %14 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @to_mdp_kms(i32 %15)
  %17 = call %struct.mdp5_kms* @to_mdp5_kms(i32 %16)
  store %struct.mdp5_kms* %17, %struct.mdp5_kms** %5, align 8
  %18 = load %struct.mdp5_kms*, %struct.mdp5_kms** %5, align 8
  %19 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %18, i32 0, i32 1
  %20 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %3, align 8
  %21 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @drm_modeset_lock(i32* %19, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i32, i32* %7, align 4
  %28 = call %struct.mdp5_global_state* @ERR_PTR(i32 %27)
  store %struct.mdp5_global_state* %28, %struct.mdp5_global_state** %2, align 8
  br label %43

29:                                               ; preds = %1
  %30 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %3, align 8
  %31 = load %struct.mdp5_kms*, %struct.mdp5_kms** %5, align 8
  %32 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %31, i32 0, i32 0
  %33 = call %struct.drm_private_state* @drm_atomic_get_private_obj_state(%struct.drm_atomic_state* %30, i32* %32)
  store %struct.drm_private_state* %33, %struct.drm_private_state** %6, align 8
  %34 = load %struct.drm_private_state*, %struct.drm_private_state** %6, align 8
  %35 = call i64 @IS_ERR(%struct.drm_private_state* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load %struct.drm_private_state*, %struct.drm_private_state** %6, align 8
  %39 = call %struct.mdp5_global_state* @ERR_CAST(%struct.drm_private_state* %38)
  store %struct.mdp5_global_state* %39, %struct.mdp5_global_state** %2, align 8
  br label %43

40:                                               ; preds = %29
  %41 = load %struct.drm_private_state*, %struct.drm_private_state** %6, align 8
  %42 = call %struct.mdp5_global_state* @to_mdp5_global_state(%struct.drm_private_state* %41)
  store %struct.mdp5_global_state* %42, %struct.mdp5_global_state** %2, align 8
  br label %43

43:                                               ; preds = %40, %37, %26
  %44 = load %struct.mdp5_global_state*, %struct.mdp5_global_state** %2, align 8
  ret %struct.mdp5_global_state* %44
}

declare dso_local %struct.mdp5_kms* @to_mdp5_kms(i32) #1

declare dso_local i32 @to_mdp_kms(i32) #1

declare dso_local i32 @drm_modeset_lock(i32*, i32) #1

declare dso_local %struct.mdp5_global_state* @ERR_PTR(i32) #1

declare dso_local %struct.drm_private_state* @drm_atomic_get_private_obj_state(%struct.drm_atomic_state*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.drm_private_state*) #1

declare dso_local %struct.mdp5_global_state* @ERR_CAST(%struct.drm_private_state*) #1

declare dso_local %struct.mdp5_global_state* @to_mdp5_global_state(%struct.drm_private_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
