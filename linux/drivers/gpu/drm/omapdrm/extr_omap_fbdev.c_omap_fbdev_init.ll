; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_fbdev.c_omap_fbdev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_fbdev.c_omap_fbdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.omap_drm_private* }
%struct.omap_drm_private = type { %struct.drm_fb_helper*, i32 }
%struct.drm_fb_helper = type { i32 }
%struct.omap_fbdev = type { %struct.drm_fb_helper, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@pan_worker = common dso_local global i32 0, align 4
@omap_fb_helper_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"omap_fbdev_init failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_fbdev_init(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.omap_drm_private*, align 8
  %4 = alloca %struct.omap_fbdev*, align 8
  %5 = alloca %struct.drm_fb_helper*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 1
  %9 = load %struct.omap_drm_private*, %struct.omap_drm_private** %8, align 8
  store %struct.omap_drm_private* %9, %struct.omap_drm_private** %3, align 8
  store %struct.omap_fbdev* null, %struct.omap_fbdev** %4, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.omap_drm_private*, %struct.omap_drm_private** %3, align 8
  %11 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %66

15:                                               ; preds = %1
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.omap_fbdev* @kzalloc(i32 8, i32 %16)
  store %struct.omap_fbdev* %17, %struct.omap_fbdev** %4, align 8
  %18 = load %struct.omap_fbdev*, %struct.omap_fbdev** %4, align 8
  %19 = icmp ne %struct.omap_fbdev* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %59

21:                                               ; preds = %15
  %22 = load %struct.omap_fbdev*, %struct.omap_fbdev** %4, align 8
  %23 = getelementptr inbounds %struct.omap_fbdev, %struct.omap_fbdev* %22, i32 0, i32 1
  %24 = load i32, i32* @pan_worker, align 4
  %25 = call i32 @INIT_WORK(i32* %23, i32 %24)
  %26 = load %struct.omap_fbdev*, %struct.omap_fbdev** %4, align 8
  %27 = getelementptr inbounds %struct.omap_fbdev, %struct.omap_fbdev* %26, i32 0, i32 0
  store %struct.drm_fb_helper* %27, %struct.drm_fb_helper** %5, align 8
  %28 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %29 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %5, align 8
  %30 = call i32 @drm_fb_helper_prepare(%struct.drm_device* %28, %struct.drm_fb_helper* %29, i32* @omap_fb_helper_funcs)
  %31 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %32 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %5, align 8
  %33 = load %struct.omap_drm_private*, %struct.omap_drm_private** %3, align 8
  %34 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @drm_fb_helper_init(%struct.drm_device* %31, %struct.drm_fb_helper* %32, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %21
  br label %59

40:                                               ; preds = %21
  %41 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %5, align 8
  %42 = call i32 @drm_fb_helper_single_add_all_connectors(%struct.drm_fb_helper* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %56

46:                                               ; preds = %40
  %47 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %5, align 8
  %48 = call i32 @drm_fb_helper_initial_config(%struct.drm_fb_helper* %47, i32 32)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %56

52:                                               ; preds = %46
  %53 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %5, align 8
  %54 = load %struct.omap_drm_private*, %struct.omap_drm_private** %3, align 8
  %55 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %54, i32 0, i32 0
  store %struct.drm_fb_helper* %53, %struct.drm_fb_helper** %55, align 8
  br label %66

56:                                               ; preds = %51, %45
  %57 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %5, align 8
  %58 = call i32 @drm_fb_helper_fini(%struct.drm_fb_helper* %57)
  br label %59

59:                                               ; preds = %56, %39, %20
  %60 = load %struct.omap_fbdev*, %struct.omap_fbdev** %4, align 8
  %61 = call i32 @kfree(%struct.omap_fbdev* %60)
  %62 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %63 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @dev_warn(i32 %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %66

66:                                               ; preds = %59, %52, %14
  ret void
}

declare dso_local %struct.omap_fbdev* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @drm_fb_helper_prepare(%struct.drm_device*, %struct.drm_fb_helper*, i32*) #1

declare dso_local i32 @drm_fb_helper_init(%struct.drm_device*, %struct.drm_fb_helper*, i32) #1

declare dso_local i32 @drm_fb_helper_single_add_all_connectors(%struct.drm_fb_helper*) #1

declare dso_local i32 @drm_fb_helper_initial_config(%struct.drm_fb_helper*, i32) #1

declare dso_local i32 @drm_fb_helper_fini(%struct.drm_fb_helper*) #1

declare dso_local i32 @kfree(%struct.omap_fbdev*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
