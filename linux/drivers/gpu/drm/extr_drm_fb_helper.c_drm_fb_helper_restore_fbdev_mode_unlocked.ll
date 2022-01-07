; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_restore_fbdev_mode_unlocked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_restore_fbdev_mode_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_fb_helper = type { i32, i32, i32, i32 }

@drm_fbdev_emulation = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_fb_helper_restore_fbdev_mode_unlocked(%struct.drm_fb_helper* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_fb_helper*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_fb_helper* %0, %struct.drm_fb_helper** %3, align 8
  %6 = load i32, i32* @drm_fbdev_emulation, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %10 = icmp ne %struct.drm_fb_helper* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %8, %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %47

14:                                               ; preds = %8
  %15 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %16 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @READ_ONCE(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %47

21:                                               ; preds = %14
  %22 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %23 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %26 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %25, i32 0, i32 2
  %27 = call i32 @drm_client_modeset_commit_force(i32* %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %29 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %21
  %34 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %35 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %34, i32 0, i32 0
  store i32 0, i32* %35, align 4
  br label %36

36:                                               ; preds = %33, %21
  %37 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %38 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %37, i32 0, i32 1
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %44 = call i32 @drm_fb_helper_hotplug_event(%struct.drm_fb_helper* %43)
  br label %45

45:                                               ; preds = %42, %36
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %20, %11
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @drm_client_modeset_commit_force(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @drm_fb_helper_hotplug_event(%struct.drm_fb_helper*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
