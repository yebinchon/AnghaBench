; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_kms.c_mdp5_global_obj_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_kms.c_mdp5_global_obj_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp5_kms = type { i32, i32, i32 }
%struct.mdp5_global_state = type { i32, %struct.mdp5_kms* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mdp5_global_state_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdp5_kms*)* @mdp5_global_obj_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdp5_global_obj_init(%struct.mdp5_kms* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mdp5_kms*, align 8
  %4 = alloca %struct.mdp5_global_state*, align 8
  store %struct.mdp5_kms* %0, %struct.mdp5_kms** %3, align 8
  %5 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %6 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %5, i32 0, i32 2
  %7 = call i32 @drm_modeset_lock_init(i32* %6)
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.mdp5_global_state* @kzalloc(i32 16, i32 %8)
  store %struct.mdp5_global_state* %9, %struct.mdp5_global_state** %4, align 8
  %10 = load %struct.mdp5_global_state*, %struct.mdp5_global_state** %4, align 8
  %11 = icmp ne %struct.mdp5_global_state* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %27

15:                                               ; preds = %1
  %16 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %17 = load %struct.mdp5_global_state*, %struct.mdp5_global_state** %4, align 8
  %18 = getelementptr inbounds %struct.mdp5_global_state, %struct.mdp5_global_state* %17, i32 0, i32 1
  store %struct.mdp5_kms* %16, %struct.mdp5_kms** %18, align 8
  %19 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %20 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %23 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %22, i32 0, i32 0
  %24 = load %struct.mdp5_global_state*, %struct.mdp5_global_state** %4, align 8
  %25 = getelementptr inbounds %struct.mdp5_global_state, %struct.mdp5_global_state* %24, i32 0, i32 0
  %26 = call i32 @drm_atomic_private_obj_init(i32 %21, i32* %23, i32* %25, i32* @mdp5_global_state_funcs)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %15, %12
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @drm_modeset_lock_init(i32*) #1

declare dso_local %struct.mdp5_global_state* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_atomic_private_obj_init(i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
