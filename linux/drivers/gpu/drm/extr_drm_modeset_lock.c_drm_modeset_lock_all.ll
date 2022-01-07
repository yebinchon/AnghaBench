; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_modeset_lock.c_drm_modeset_lock_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_modeset_lock.c_drm_modeset_lock_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_mode_config }
%struct.drm_mode_config = type { i32, i32 }
%struct.drm_modeset_acquire_ctx = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NOFAIL = common dso_local global i32 0, align 4
@EDEADLK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_modeset_lock_all(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_mode_config*, align 8
  %4 = alloca %struct.drm_modeset_acquire_ctx*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 0
  store %struct.drm_mode_config* %7, %struct.drm_mode_config** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = load i32, i32* @__GFP_NOFAIL, align 4
  %10 = or i32 %8, %9
  %11 = call %struct.drm_modeset_acquire_ctx* @kzalloc(i32 4, i32 %10)
  store %struct.drm_modeset_acquire_ctx* %11, %struct.drm_modeset_acquire_ctx** %4, align 8
  %12 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %4, align 8
  %13 = icmp ne %struct.drm_modeset_acquire_ctx* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %58

19:                                               ; preds = %1
  %20 = load %struct.drm_mode_config*, %struct.drm_mode_config** %3, align 8
  %21 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %4, align 8
  %24 = call i32 @drm_modeset_acquire_init(%struct.drm_modeset_acquire_ctx* %23, i32 0)
  br label %25

25:                                               ; preds = %36, %19
  %26 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %27 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %4, align 8
  %28 = call i32 @drm_modeset_lock_all_ctx(%struct.drm_device* %26, %struct.drm_modeset_acquire_ctx* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @EDEADLK, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %4, align 8
  %38 = call i32 @drm_modeset_backoff(%struct.drm_modeset_acquire_ctx* %37)
  br label %25

39:                                               ; preds = %31
  %40 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %4, align 8
  %41 = call i32 @drm_modeset_acquire_fini(%struct.drm_modeset_acquire_ctx* %40)
  %42 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %4, align 8
  %43 = call i32 @kfree(%struct.drm_modeset_acquire_ctx* %42)
  br label %58

44:                                               ; preds = %25
  %45 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %4, align 8
  %46 = getelementptr inbounds %struct.drm_modeset_acquire_ctx, %struct.drm_modeset_acquire_ctx* %45, i32 0, i32 0
  %47 = call i32 @ww_acquire_done(i32* %46)
  %48 = load %struct.drm_mode_config*, %struct.drm_mode_config** %3, align 8
  %49 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @WARN_ON(i32 %50)
  %52 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %4, align 8
  %53 = ptrtoint %struct.drm_modeset_acquire_ctx* %52 to i32
  %54 = load %struct.drm_mode_config*, %struct.drm_mode_config** %3, align 8
  %55 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %57 = call i32 @drm_warn_on_modeset_not_all_locked(%struct.drm_device* %56)
  br label %58

58:                                               ; preds = %44, %39, %18
  ret void
}

declare dso_local %struct.drm_modeset_acquire_ctx* @kzalloc(i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @drm_modeset_acquire_init(%struct.drm_modeset_acquire_ctx*, i32) #1

declare dso_local i32 @drm_modeset_lock_all_ctx(%struct.drm_device*, %struct.drm_modeset_acquire_ctx*) #1

declare dso_local i32 @drm_modeset_backoff(%struct.drm_modeset_acquire_ctx*) #1

declare dso_local i32 @drm_modeset_acquire_fini(%struct.drm_modeset_acquire_ctx*) #1

declare dso_local i32 @kfree(%struct.drm_modeset_acquire_ctx*) #1

declare dso_local i32 @ww_acquire_done(i32*) #1

declare dso_local i32 @drm_warn_on_modeset_not_all_locked(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
