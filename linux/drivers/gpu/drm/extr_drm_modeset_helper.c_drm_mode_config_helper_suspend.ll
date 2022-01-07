; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_modeset_helper.c_drm_mode_config_helper_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_modeset_helper.c_drm_mode_config_helper_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.drm_atomic_state* }
%struct.drm_atomic_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mode_config_helper_suspend(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_atomic_state*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %6 = icmp ne %struct.drm_device* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

8:                                                ; preds = %1
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = call i32 @drm_kms_helper_poll_disable(%struct.drm_device* %9)
  %11 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @drm_fb_helper_set_suspend_unlocked(i32 %13, i32 1)
  %15 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %16 = call %struct.drm_atomic_state* @drm_atomic_helper_suspend(%struct.drm_device* %15)
  store %struct.drm_atomic_state* %16, %struct.drm_atomic_state** %4, align 8
  %17 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %18 = call i64 @IS_ERR(%struct.drm_atomic_state* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %8
  %21 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @drm_fb_helper_set_suspend_unlocked(i32 %23, i32 0)
  %25 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %26 = call i32 @drm_kms_helper_poll_enable(%struct.drm_device* %25)
  %27 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %28 = call i32 @PTR_ERR(%struct.drm_atomic_state* %27)
  store i32 %28, i32* %2, align 4
  br label %34

29:                                               ; preds = %8
  %30 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %31 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %32 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store %struct.drm_atomic_state* %30, %struct.drm_atomic_state** %33, align 8
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %29, %20, %7
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @drm_kms_helper_poll_disable(%struct.drm_device*) #1

declare dso_local i32 @drm_fb_helper_set_suspend_unlocked(i32, i32) #1

declare dso_local %struct.drm_atomic_state* @drm_atomic_helper_suspend(%struct.drm_device*) #1

declare dso_local i64 @IS_ERR(%struct.drm_atomic_state*) #1

declare dso_local i32 @drm_kms_helper_poll_enable(%struct.drm_device*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_atomic_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
