; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_fbdev.c_msm_fbdev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_fbdev.c_msm_fbdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_fb_helper = type { i32 }
%struct.drm_device = type { i32, %struct.msm_drm_private* }
%struct.msm_drm_private = type { %struct.drm_fb_helper*, i32 }
%struct.msm_fbdev = type { %struct.drm_fb_helper }

@GFP_KERNEL = common dso_local global i32 0, align 4
@msm_fb_helper_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not init fbdev: ret=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"msm\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_fb_helper* @msm_fbdev_init(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_fb_helper*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.msm_drm_private*, align 8
  %5 = alloca %struct.msm_fbdev*, align 8
  %6 = alloca %struct.drm_fb_helper*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 1
  %10 = load %struct.msm_drm_private*, %struct.msm_drm_private** %9, align 8
  store %struct.msm_drm_private* %10, %struct.msm_drm_private** %4, align 8
  store %struct.msm_fbdev* null, %struct.msm_fbdev** %5, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.msm_fbdev* @kzalloc(i32 4, i32 %11)
  store %struct.msm_fbdev* %12, %struct.msm_fbdev** %5, align 8
  %13 = load %struct.msm_fbdev*, %struct.msm_fbdev** %5, align 8
  %14 = icmp ne %struct.msm_fbdev* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %57

16:                                               ; preds = %1
  %17 = load %struct.msm_fbdev*, %struct.msm_fbdev** %5, align 8
  %18 = getelementptr inbounds %struct.msm_fbdev, %struct.msm_fbdev* %17, i32 0, i32 0
  store %struct.drm_fb_helper* %18, %struct.drm_fb_helper** %6, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %20 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %6, align 8
  %21 = call i32 @drm_fb_helper_prepare(%struct.drm_device* %19, %struct.drm_fb_helper* %20, i32* @msm_fb_helper_funcs)
  %22 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %23 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %6, align 8
  %24 = load %struct.msm_drm_private*, %struct.msm_drm_private** %4, align 8
  %25 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @drm_fb_helper_init(%struct.drm_device* %22, %struct.drm_fb_helper* %23, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %16
  %31 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %32 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @DRM_DEV_ERROR(i32 %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %57

36:                                               ; preds = %16
  %37 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %6, align 8
  %38 = call i32 @drm_fb_helper_single_add_all_connectors(%struct.drm_fb_helper* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %54

42:                                               ; preds = %36
  %43 = call i32 @drm_fb_helper_remove_conflicting_framebuffers(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %44 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %6, align 8
  %45 = call i32 @drm_fb_helper_initial_config(%struct.drm_fb_helper* %44, i32 32)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %54

49:                                               ; preds = %42
  %50 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %6, align 8
  %51 = load %struct.msm_drm_private*, %struct.msm_drm_private** %4, align 8
  %52 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %51, i32 0, i32 0
  store %struct.drm_fb_helper* %50, %struct.drm_fb_helper** %52, align 8
  %53 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %6, align 8
  store %struct.drm_fb_helper* %53, %struct.drm_fb_helper** %2, align 8
  br label %60

54:                                               ; preds = %48, %41
  %55 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %6, align 8
  %56 = call i32 @drm_fb_helper_fini(%struct.drm_fb_helper* %55)
  br label %57

57:                                               ; preds = %54, %30, %15
  %58 = load %struct.msm_fbdev*, %struct.msm_fbdev** %5, align 8
  %59 = call i32 @kfree(%struct.msm_fbdev* %58)
  store %struct.drm_fb_helper* null, %struct.drm_fb_helper** %2, align 8
  br label %60

60:                                               ; preds = %57, %49
  %61 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %2, align 8
  ret %struct.drm_fb_helper* %61
}

declare dso_local %struct.msm_fbdev* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_fb_helper_prepare(%struct.drm_device*, %struct.drm_fb_helper*, i32*) #1

declare dso_local i32 @drm_fb_helper_init(%struct.drm_device*, %struct.drm_fb_helper*, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

declare dso_local i32 @drm_fb_helper_single_add_all_connectors(%struct.drm_fb_helper*) #1

declare dso_local i32 @drm_fb_helper_remove_conflicting_framebuffers(i32*, i8*, i32) #1

declare dso_local i32 @drm_fb_helper_initial_config(%struct.drm_fb_helper*, i32) #1

declare dso_local i32 @drm_fb_helper_fini(%struct.drm_fb_helper*) #1

declare dso_local i32 @kfree(%struct.msm_fbdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
