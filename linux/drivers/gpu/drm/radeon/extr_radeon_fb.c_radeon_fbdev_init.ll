; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_fb.c_radeon_fbdev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_fb.c_radeon_fbdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_10__*, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { %struct.radeon_fbdev* }
%struct.radeon_fbdev = type { i32, %struct.radeon_device* }
%struct.TYPE_8__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@radeon_fb_helper_funcs = common dso_local global i32 0, align 4
@RADEONFB_CONN_LIMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_fbdev_init(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_fbdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 32, i32* %5, align 4
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = call i64 @list_empty(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %94

15:                                               ; preds = %1
  %16 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %17 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sle i32 %19, 8388608
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 8, i32* %5, align 4
  br label %34

22:                                               ; preds = %15
  %23 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %24 = call i64 @ASIC_IS_RN50(%struct.radeon_device* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %28 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sle i32 %30, 33554432
  br i1 %31, label %32, label %33

32:                                               ; preds = %26, %22
  store i32 16, i32* %5, align 4
  br label %33

33:                                               ; preds = %32, %26
  br label %34

34:                                               ; preds = %33, %21
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.radeon_fbdev* @kzalloc(i32 16, i32 %35)
  store %struct.radeon_fbdev* %36, %struct.radeon_fbdev** %4, align 8
  %37 = load %struct.radeon_fbdev*, %struct.radeon_fbdev** %4, align 8
  %38 = icmp ne %struct.radeon_fbdev* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %94

42:                                               ; preds = %34
  %43 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %44 = load %struct.radeon_fbdev*, %struct.radeon_fbdev** %4, align 8
  %45 = getelementptr inbounds %struct.radeon_fbdev, %struct.radeon_fbdev* %44, i32 0, i32 1
  store %struct.radeon_device* %43, %struct.radeon_device** %45, align 8
  %46 = load %struct.radeon_fbdev*, %struct.radeon_fbdev** %4, align 8
  %47 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %48 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  store %struct.radeon_fbdev* %46, %struct.radeon_fbdev** %49, align 8
  %50 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %51 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %50, i32 0, i32 0
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = load %struct.radeon_fbdev*, %struct.radeon_fbdev** %4, align 8
  %54 = getelementptr inbounds %struct.radeon_fbdev, %struct.radeon_fbdev* %53, i32 0, i32 0
  %55 = call i32 @drm_fb_helper_prepare(%struct.TYPE_10__* %52, i32* %54, i32* @radeon_fb_helper_funcs)
  %56 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %57 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %56, i32 0, i32 0
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = load %struct.radeon_fbdev*, %struct.radeon_fbdev** %4, align 8
  %60 = getelementptr inbounds %struct.radeon_fbdev, %struct.radeon_fbdev* %59, i32 0, i32 0
  %61 = load i32, i32* @RADEONFB_CONN_LIMIT, align 4
  %62 = call i32 @drm_fb_helper_init(%struct.TYPE_10__* %58, i32* %60, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %42
  br label %90

66:                                               ; preds = %42
  %67 = load %struct.radeon_fbdev*, %struct.radeon_fbdev** %4, align 8
  %68 = getelementptr inbounds %struct.radeon_fbdev, %struct.radeon_fbdev* %67, i32 0, i32 0
  %69 = call i32 @drm_fb_helper_single_add_all_connectors(i32* %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %86

73:                                               ; preds = %66
  %74 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %75 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %74, i32 0, i32 0
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = call i32 @drm_helper_disable_unused_functions(%struct.TYPE_10__* %76)
  %78 = load %struct.radeon_fbdev*, %struct.radeon_fbdev** %4, align 8
  %79 = getelementptr inbounds %struct.radeon_fbdev, %struct.radeon_fbdev* %78, i32 0, i32 0
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @drm_fb_helper_initial_config(i32* %79, i32 %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %73
  br label %86

85:                                               ; preds = %73
  store i32 0, i32* %2, align 4
  br label %94

86:                                               ; preds = %84, %72
  %87 = load %struct.radeon_fbdev*, %struct.radeon_fbdev** %4, align 8
  %88 = getelementptr inbounds %struct.radeon_fbdev, %struct.radeon_fbdev* %87, i32 0, i32 0
  %89 = call i32 @drm_fb_helper_fini(i32* %88)
  br label %90

90:                                               ; preds = %86, %65
  %91 = load %struct.radeon_fbdev*, %struct.radeon_fbdev** %4, align 8
  %92 = call i32 @kfree(%struct.radeon_fbdev* %91)
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %90, %85, %39, %14
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i64 @ASIC_IS_RN50(%struct.radeon_device*) #1

declare dso_local %struct.radeon_fbdev* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_fb_helper_prepare(%struct.TYPE_10__*, i32*, i32*) #1

declare dso_local i32 @drm_fb_helper_init(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @drm_fb_helper_single_add_all_connectors(i32*) #1

declare dso_local i32 @drm_helper_disable_unused_functions(%struct.TYPE_10__*) #1

declare dso_local i32 @drm_fb_helper_initial_config(i32*, i32) #1

declare dso_local i32 @drm_fb_helper_fini(i32*) #1

declare dso_local i32 @kfree(%struct.radeon_fbdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
