; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_kms.c_mdp5_prepare_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_kms.c_mdp5_prepare_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_kms = type { i32 }
%struct.drm_atomic_state = type { i32 }
%struct.mdp5_kms = type { i64 }
%struct.mdp5_global_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_kms*, %struct.drm_atomic_state*)* @mdp5_prepare_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdp5_prepare_commit(%struct.msm_kms* %0, %struct.drm_atomic_state* %1) #0 {
  %3 = alloca %struct.msm_kms*, align 8
  %4 = alloca %struct.drm_atomic_state*, align 8
  %5 = alloca %struct.mdp5_kms*, align 8
  %6 = alloca %struct.mdp5_global_state*, align 8
  store %struct.msm_kms* %0, %struct.msm_kms** %3, align 8
  store %struct.drm_atomic_state* %1, %struct.drm_atomic_state** %4, align 8
  %7 = load %struct.msm_kms*, %struct.msm_kms** %3, align 8
  %8 = call i32 @to_mdp_kms(%struct.msm_kms* %7)
  %9 = call %struct.mdp5_kms* @to_mdp5_kms(i32 %8)
  store %struct.mdp5_kms* %9, %struct.mdp5_kms** %5, align 8
  %10 = load %struct.mdp5_kms*, %struct.mdp5_kms** %5, align 8
  %11 = call %struct.mdp5_global_state* @mdp5_get_existing_global_state(%struct.mdp5_kms* %10)
  store %struct.mdp5_global_state* %11, %struct.mdp5_global_state** %6, align 8
  %12 = load %struct.mdp5_kms*, %struct.mdp5_kms** %5, align 8
  %13 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.mdp5_kms*, %struct.mdp5_kms** %5, align 8
  %18 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.mdp5_global_state*, %struct.mdp5_global_state** %6, align 8
  %21 = getelementptr inbounds %struct.mdp5_global_state, %struct.mdp5_global_state* %20, i32 0, i32 0
  %22 = call i32 @mdp5_smp_prepare_commit(i64 %19, i32* %21)
  br label %23

23:                                               ; preds = %16, %2
  ret void
}

declare dso_local %struct.mdp5_kms* @to_mdp5_kms(i32) #1

declare dso_local i32 @to_mdp_kms(%struct.msm_kms*) #1

declare dso_local %struct.mdp5_global_state* @mdp5_get_existing_global_state(%struct.mdp5_kms*) #1

declare dso_local i32 @mdp5_smp_prepare_commit(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
