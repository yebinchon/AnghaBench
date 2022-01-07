; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_hotplug_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_hotplug_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_fb_helper = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@drm_fbdev_emulation = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_fb_helper_hotplug_event(%struct.drm_fb_helper* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_fb_helper*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_fb_helper* %0, %struct.drm_fb_helper** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @drm_fbdev_emulation, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %9 = icmp ne %struct.drm_fb_helper* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7, %1
  store i32 0, i32* %2, align 4
  br label %72

11:                                               ; preds = %7
  %12 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %13 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %12, i32 0, i32 2
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %16 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %15, i32 0, i32 7
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %11
  %20 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %21 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %22 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @__drm_fb_helper_initial_config_and_unlock(%struct.drm_fb_helper* %20, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %72

26:                                               ; preds = %11
  %27 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %28 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %27, i32 0, i32 3
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = icmp ne %struct.TYPE_2__* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %33 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @drm_master_internal_acquire(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %31, %26
  %38 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %39 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %41 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %40, i32 0, i32 2
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %72

44:                                               ; preds = %31
  %45 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %46 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @drm_master_internal_release(i32 %47)
  %49 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %51 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %50, i32 0, i32 4
  %52 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %53 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %52, i32 0, i32 3
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %58 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %57, i32 0, i32 3
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @drm_client_modeset_probe(i32* %51, i32 %56, i32 %61)
  %63 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %64 = call i32 @drm_setup_crtcs_fb(%struct.drm_fb_helper* %63)
  %65 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %66 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %65, i32 0, i32 2
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %69 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @drm_fb_helper_set_par(i32 %70)
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %44, %37, %19, %10
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__drm_fb_helper_initial_config_and_unlock(%struct.drm_fb_helper*, i32) #1

declare dso_local i32 @drm_master_internal_acquire(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @drm_master_internal_release(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @drm_client_modeset_probe(i32*, i32, i32) #1

declare dso_local i32 @drm_setup_crtcs_fb(%struct.drm_fb_helper*) #1

declare dso_local i32 @drm_fb_helper_set_par(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
