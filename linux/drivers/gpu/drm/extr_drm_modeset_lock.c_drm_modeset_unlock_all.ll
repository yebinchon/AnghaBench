; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_modeset_lock.c_drm_modeset_unlock_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_modeset_lock.c_drm_modeset_unlock_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_mode_config }
%struct.drm_mode_config = type { i32, %struct.drm_modeset_acquire_ctx* }
%struct.drm_modeset_acquire_ctx = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_modeset_unlock_all(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_mode_config*, align 8
  %4 = alloca %struct.drm_modeset_acquire_ctx*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 0
  store %struct.drm_mode_config* %6, %struct.drm_mode_config** %3, align 8
  %7 = load %struct.drm_mode_config*, %struct.drm_mode_config** %3, align 8
  %8 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %7, i32 0, i32 1
  %9 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %8, align 8
  store %struct.drm_modeset_acquire_ctx* %9, %struct.drm_modeset_acquire_ctx** %4, align 8
  %10 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %4, align 8
  %11 = icmp ne %struct.drm_modeset_acquire_ctx* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @WARN_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %30

17:                                               ; preds = %1
  %18 = load %struct.drm_mode_config*, %struct.drm_mode_config** %3, align 8
  %19 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %18, i32 0, i32 1
  store %struct.drm_modeset_acquire_ctx* null, %struct.drm_modeset_acquire_ctx** %19, align 8
  %20 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %4, align 8
  %21 = call i32 @drm_modeset_drop_locks(%struct.drm_modeset_acquire_ctx* %20)
  %22 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %4, align 8
  %23 = call i32 @drm_modeset_acquire_fini(%struct.drm_modeset_acquire_ctx* %22)
  %24 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %4, align 8
  %25 = call i32 @kfree(%struct.drm_modeset_acquire_ctx* %24)
  %26 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %27 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  br label %30

30:                                               ; preds = %17, %16
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @drm_modeset_drop_locks(%struct.drm_modeset_acquire_ctx*) #1

declare dso_local i32 @drm_modeset_acquire_fini(%struct.drm_modeset_acquire_ctx*) #1

declare dso_local i32 @kfree(%struct.drm_modeset_acquire_ctx*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
