; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_fb.c_amdgpu_fbdev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_fb.c_amdgpu_fbdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_10__*, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { %struct.amdgpu_fbdev*, i32 }
%struct.amdgpu_fbdev = type { i32, %struct.amdgpu_device* }
%struct.TYPE_8__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@amdgpu_fb_helper_funcs = common dso_local global i32 0, align 4
@AMDGPUFB_CONN_LIMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_fbdev_init(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_fbdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 32, i32* %5, align 4
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %8 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %81

13:                                               ; preds = %1
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = call i64 @list_empty(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %81

22:                                               ; preds = %13
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sle i32 %26, 33554432
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 8, i32* %5, align 4
  br label %29

29:                                               ; preds = %28, %22
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.amdgpu_fbdev* @kzalloc(i32 16, i32 %30)
  store %struct.amdgpu_fbdev* %31, %struct.amdgpu_fbdev** %4, align 8
  %32 = load %struct.amdgpu_fbdev*, %struct.amdgpu_fbdev** %4, align 8
  %33 = icmp ne %struct.amdgpu_fbdev* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %81

37:                                               ; preds = %29
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %39 = load %struct.amdgpu_fbdev*, %struct.amdgpu_fbdev** %4, align 8
  %40 = getelementptr inbounds %struct.amdgpu_fbdev, %struct.amdgpu_fbdev* %39, i32 0, i32 1
  store %struct.amdgpu_device* %38, %struct.amdgpu_device** %40, align 8
  %41 = load %struct.amdgpu_fbdev*, %struct.amdgpu_fbdev** %4, align 8
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %43 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  store %struct.amdgpu_fbdev* %41, %struct.amdgpu_fbdev** %44, align 8
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %46 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %45, i32 0, i32 0
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = load %struct.amdgpu_fbdev*, %struct.amdgpu_fbdev** %4, align 8
  %49 = getelementptr inbounds %struct.amdgpu_fbdev, %struct.amdgpu_fbdev* %48, i32 0, i32 0
  %50 = call i32 @drm_fb_helper_prepare(%struct.TYPE_10__* %47, i32* %49, i32* @amdgpu_fb_helper_funcs)
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %52 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %51, i32 0, i32 0
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = load %struct.amdgpu_fbdev*, %struct.amdgpu_fbdev** %4, align 8
  %55 = getelementptr inbounds %struct.amdgpu_fbdev, %struct.amdgpu_fbdev* %54, i32 0, i32 0
  %56 = load i32, i32* @AMDGPUFB_CONN_LIMIT, align 4
  %57 = call i32 @drm_fb_helper_init(%struct.TYPE_10__* %53, i32* %55, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %37
  %61 = load %struct.amdgpu_fbdev*, %struct.amdgpu_fbdev** %4, align 8
  %62 = call i32 @kfree(%struct.amdgpu_fbdev* %61)
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  br label %81

64:                                               ; preds = %37
  %65 = load %struct.amdgpu_fbdev*, %struct.amdgpu_fbdev** %4, align 8
  %66 = getelementptr inbounds %struct.amdgpu_fbdev, %struct.amdgpu_fbdev* %65, i32 0, i32 0
  %67 = call i32 @drm_fb_helper_single_add_all_connectors(i32* %66)
  %68 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %69 = call i32 @amdgpu_device_has_dc_support(%struct.amdgpu_device* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %64
  %72 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %73 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %72, i32 0, i32 0
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = call i32 @drm_helper_disable_unused_functions(%struct.TYPE_10__* %74)
  br label %76

76:                                               ; preds = %71, %64
  %77 = load %struct.amdgpu_fbdev*, %struct.amdgpu_fbdev** %4, align 8
  %78 = getelementptr inbounds %struct.amdgpu_fbdev, %struct.amdgpu_fbdev* %77, i32 0, i32 0
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @drm_fb_helper_initial_config(i32* %78, i32 %79)
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %76, %60, %34, %21, %12
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local %struct.amdgpu_fbdev* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_fb_helper_prepare(%struct.TYPE_10__*, i32*, i32*) #1

declare dso_local i32 @drm_fb_helper_init(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.amdgpu_fbdev*) #1

declare dso_local i32 @drm_fb_helper_single_add_all_connectors(i32*) #1

declare dso_local i32 @amdgpu_device_has_dc_support(%struct.amdgpu_device*) #1

declare dso_local i32 @drm_helper_disable_unused_functions(%struct.TYPE_10__*) #1

declare dso_local i32 @drm_fb_helper_initial_config(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
