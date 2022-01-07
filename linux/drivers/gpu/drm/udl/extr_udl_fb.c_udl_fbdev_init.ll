; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_fb.c_udl_fbdev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_fb.c_udl_fbdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.udl_device = type { %struct.udl_fbdev* }
%struct.udl_fbdev = type { i32 }

@fb_bpp = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@udl_fb_helper_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udl_fbdev_init(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.udl_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.udl_fbdev*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = call %struct.udl_device* @to_udl(%struct.drm_device* %8)
  store %struct.udl_device* %9, %struct.udl_device** %4, align 8
  %10 = load i32, i32* @fb_bpp, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.udl_fbdev* @kzalloc(i32 4, i32 %11)
  store %struct.udl_fbdev* %12, %struct.udl_fbdev** %6, align 8
  %13 = load %struct.udl_fbdev*, %struct.udl_fbdev** %6, align 8
  %14 = icmp ne %struct.udl_fbdev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %59

18:                                               ; preds = %1
  %19 = load %struct.udl_fbdev*, %struct.udl_fbdev** %6, align 8
  %20 = load %struct.udl_device*, %struct.udl_device** %4, align 8
  %21 = getelementptr inbounds %struct.udl_device, %struct.udl_device* %20, i32 0, i32 0
  store %struct.udl_fbdev* %19, %struct.udl_fbdev** %21, align 8
  %22 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %23 = load %struct.udl_fbdev*, %struct.udl_fbdev** %6, align 8
  %24 = getelementptr inbounds %struct.udl_fbdev, %struct.udl_fbdev* %23, i32 0, i32 0
  %25 = call i32 @drm_fb_helper_prepare(%struct.drm_device* %22, i32* %24, i32* @udl_fb_helper_funcs)
  %26 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %27 = load %struct.udl_fbdev*, %struct.udl_fbdev** %6, align 8
  %28 = getelementptr inbounds %struct.udl_fbdev, %struct.udl_fbdev* %27, i32 0, i32 0
  %29 = call i32 @drm_fb_helper_init(%struct.drm_device* %26, i32* %28, i32 1)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %18
  br label %55

33:                                               ; preds = %18
  %34 = load %struct.udl_fbdev*, %struct.udl_fbdev** %6, align 8
  %35 = getelementptr inbounds %struct.udl_fbdev, %struct.udl_fbdev* %34, i32 0, i32 0
  %36 = call i32 @drm_fb_helper_single_add_all_connectors(i32* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %51

40:                                               ; preds = %33
  %41 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %42 = call i32 @drm_helper_disable_unused_functions(%struct.drm_device* %41)
  %43 = load %struct.udl_fbdev*, %struct.udl_fbdev** %6, align 8
  %44 = getelementptr inbounds %struct.udl_fbdev, %struct.udl_fbdev* %43, i32 0, i32 0
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @drm_fb_helper_initial_config(i32* %44, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %51

50:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %59

51:                                               ; preds = %49, %39
  %52 = load %struct.udl_fbdev*, %struct.udl_fbdev** %6, align 8
  %53 = getelementptr inbounds %struct.udl_fbdev, %struct.udl_fbdev* %52, i32 0, i32 0
  %54 = call i32 @drm_fb_helper_fini(i32* %53)
  br label %55

55:                                               ; preds = %51, %32
  %56 = load %struct.udl_fbdev*, %struct.udl_fbdev** %6, align 8
  %57 = call i32 @kfree(%struct.udl_fbdev* %56)
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %55, %50, %15
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.udl_device* @to_udl(%struct.drm_device*) #1

declare dso_local %struct.udl_fbdev* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_fb_helper_prepare(%struct.drm_device*, i32*, i32*) #1

declare dso_local i32 @drm_fb_helper_init(%struct.drm_device*, i32*, i32) #1

declare dso_local i32 @drm_fb_helper_single_add_all_connectors(i32*) #1

declare dso_local i32 @drm_helper_disable_unused_functions(%struct.drm_device*) #1

declare dso_local i32 @drm_fb_helper_initial_config(i32*, i32) #1

declare dso_local i32 @drm_fb_helper_fini(i32*) #1

declare dso_local i32 @kfree(%struct.udl_fbdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
