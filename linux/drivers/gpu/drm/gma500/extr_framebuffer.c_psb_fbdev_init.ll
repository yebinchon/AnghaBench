; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_framebuffer.c_psb_fbdev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_framebuffer.c_psb_fbdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.drm_psb_private* }
%struct.drm_psb_private = type { %struct.psb_fbdev* }
%struct.psb_fbdev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"no memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@psb_fb_helper_funcs = common dso_local global i32 0, align 4
@INTELFB_CONN_LIMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psb_fbdev_init(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.psb_fbdev*, align 8
  %5 = alloca %struct.drm_psb_private*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 1
  %9 = load %struct.drm_psb_private*, %struct.drm_psb_private** %8, align 8
  store %struct.drm_psb_private* %9, %struct.drm_psb_private** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.psb_fbdev* @kzalloc(i32 4, i32 %10)
  store %struct.psb_fbdev* %11, %struct.psb_fbdev** %4, align 8
  %12 = load %struct.psb_fbdev*, %struct.psb_fbdev** %4, align 8
  %13 = icmp ne %struct.psb_fbdev* %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %1
  %15 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %62

21:                                               ; preds = %1
  %22 = load %struct.psb_fbdev*, %struct.psb_fbdev** %4, align 8
  %23 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  %24 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %23, i32 0, i32 0
  store %struct.psb_fbdev* %22, %struct.psb_fbdev** %24, align 8
  %25 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %26 = load %struct.psb_fbdev*, %struct.psb_fbdev** %4, align 8
  %27 = getelementptr inbounds %struct.psb_fbdev, %struct.psb_fbdev* %26, i32 0, i32 0
  %28 = call i32 @drm_fb_helper_prepare(%struct.drm_device* %25, i32* %27, i32* @psb_fb_helper_funcs)
  %29 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %30 = load %struct.psb_fbdev*, %struct.psb_fbdev** %4, align 8
  %31 = getelementptr inbounds %struct.psb_fbdev, %struct.psb_fbdev* %30, i32 0, i32 0
  %32 = load i32, i32* @INTELFB_CONN_LIMIT, align 4
  %33 = call i32 @drm_fb_helper_init(%struct.drm_device* %29, i32* %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %21
  br label %58

37:                                               ; preds = %21
  %38 = load %struct.psb_fbdev*, %struct.psb_fbdev** %4, align 8
  %39 = getelementptr inbounds %struct.psb_fbdev, %struct.psb_fbdev* %38, i32 0, i32 0
  %40 = call i32 @drm_fb_helper_single_add_all_connectors(i32* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %54

44:                                               ; preds = %37
  %45 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %46 = call i32 @drm_helper_disable_unused_functions(%struct.drm_device* %45)
  %47 = load %struct.psb_fbdev*, %struct.psb_fbdev** %4, align 8
  %48 = getelementptr inbounds %struct.psb_fbdev, %struct.psb_fbdev* %47, i32 0, i32 0
  %49 = call i32 @drm_fb_helper_initial_config(i32* %48, i32 32)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %54

53:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %62

54:                                               ; preds = %52, %43
  %55 = load %struct.psb_fbdev*, %struct.psb_fbdev** %4, align 8
  %56 = getelementptr inbounds %struct.psb_fbdev, %struct.psb_fbdev* %55, i32 0, i32 0
  %57 = call i32 @drm_fb_helper_fini(i32* %56)
  br label %58

58:                                               ; preds = %54, %36
  %59 = load %struct.psb_fbdev*, %struct.psb_fbdev** %4, align 8
  %60 = call i32 @kfree(%struct.psb_fbdev* %59)
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %58, %53, %14
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.psb_fbdev* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @drm_fb_helper_prepare(%struct.drm_device*, i32*, i32*) #1

declare dso_local i32 @drm_fb_helper_init(%struct.drm_device*, i32*, i32) #1

declare dso_local i32 @drm_fb_helper_single_add_all_connectors(i32*) #1

declare dso_local i32 @drm_helper_disable_unused_functions(%struct.drm_device*) #1

declare dso_local i32 @drm_fb_helper_initial_config(i32*, i32) #1

declare dso_local i32 @drm_fb_helper_fini(i32*) #1

declare dso_local i32 @kfree(%struct.psb_fbdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
