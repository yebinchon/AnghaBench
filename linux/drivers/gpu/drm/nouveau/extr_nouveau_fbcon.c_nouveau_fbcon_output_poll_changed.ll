; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_fbcon.c_nouveau_fbcon_output_poll_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_fbcon.c_nouveau_fbcon_output_poll_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_2__*, %struct.nouveau_fbdev* }
%struct.TYPE_2__ = type { i32 }
%struct.nouveau_fbdev = type { i32, i32, i32 }

@EACCES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"fbcon HPD event deferred until runtime resume\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"fbcon HPD event lost due to RPM failure: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_fbcon_output_poll_changed(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.nouveau_drm*, align 8
  %4 = alloca %struct.nouveau_fbdev*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %7 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %6)
  store %struct.nouveau_drm* %7, %struct.nouveau_drm** %3, align 8
  %8 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %9 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %8, i32 0, i32 1
  %10 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %9, align 8
  store %struct.nouveau_fbdev* %10, %struct.nouveau_fbdev** %4, align 8
  %11 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %12 = icmp ne %struct.nouveau_fbdev* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %63

14:                                               ; preds = %1
  %15 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %16 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %15, i32 0, i32 1
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pm_runtime_get(i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %29, label %24

24:                                               ; preds = %14
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @EACCES, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %24, %14
  %30 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %31 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %30, i32 0, i32 2
  %32 = call i32 @drm_fb_helper_hotplug_event(i32* %31)
  %33 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %34 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @pm_runtime_mark_last_busy(i32 %35)
  %37 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %38 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pm_runtime_put_autosuspend(i32 %39)
  br label %59

41:                                               ; preds = %24
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %41
  %45 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %46 = call i32 @NV_DEBUG(%struct.nouveau_drm* %45, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %48 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  %49 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %50 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @pm_runtime_put_noidle(i32 %53)
  br label %58

55:                                               ; preds = %41
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @DRM_WARN(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %55, %44
  br label %59

59:                                               ; preds = %58, %29
  %60 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %61 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %60, i32 0, i32 1
  %62 = call i32 @mutex_unlock(i32* %61)
  br label %63

63:                                               ; preds = %59, %13
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pm_runtime_get(i32) #1

declare dso_local i32 @drm_fb_helper_hotplug_event(i32*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @NV_DEBUG(%struct.nouveau_drm*, i8*) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @DRM_WARN(i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
