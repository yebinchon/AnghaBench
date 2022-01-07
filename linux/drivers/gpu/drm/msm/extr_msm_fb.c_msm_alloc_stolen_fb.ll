; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_fb.c_msm_alloc_stolen_fb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_fb.c_msm_alloc_stolen_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type opaque
%struct.drm_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32*, i32 }
%struct.drm_gem_object = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"allocating %d bytes for fb %d\00", align 1
@MSM_BO_SCANOUT = common dso_local global i32 0, align 4
@MSM_BO_WC = common dso_local global i32 0, align 4
@MSM_BO_STOLEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"could not allocate stolen bo\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to allocate buffer object\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"stolenfb\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"failed to allocate fb\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_framebuffer* @msm_alloc_stolen_fb(%struct.drm_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.drm_framebuffer*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_mode_fb_cmd2, align 8
  %13 = alloca %struct.drm_gem_object*, align 8
  %14 = alloca %struct.drm_framebuffer*, align 8
  %15 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %12, i32 0, i32 0
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %12, i32 0, i32 1
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %12, i32 0, i32 2
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %20, align 8
  %24 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %12, i32 0, i32 3
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %24, align 8
  %26 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %12, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %12, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %29, %31
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %35 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %38)
  %40 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* @MSM_BO_SCANOUT, align 4
  %43 = load i32, i32* @MSM_BO_WC, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @MSM_BO_STOLEN, align 4
  %46 = or i32 %44, %45
  %47 = call %struct.drm_gem_object* @msm_gem_new(%struct.drm_device* %40, i32 %41, i32 %46)
  store %struct.drm_gem_object* %47, %struct.drm_gem_object** %13, align 8
  %48 = load %struct.drm_gem_object*, %struct.drm_gem_object** %13, align 8
  %49 = call i64 @IS_ERR(%struct.drm_gem_object* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %5
  %52 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %53 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @dev_warn(i32 %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* @MSM_BO_SCANOUT, align 4
  %59 = load i32, i32* @MSM_BO_WC, align 4
  %60 = or i32 %58, %59
  %61 = call %struct.drm_gem_object* @msm_gem_new(%struct.drm_device* %56, i32 %57, i32 %60)
  store %struct.drm_gem_object* %61, %struct.drm_gem_object** %13, align 8
  br label %62

62:                                               ; preds = %51, %5
  %63 = load %struct.drm_gem_object*, %struct.drm_gem_object** %13, align 8
  %64 = call i64 @IS_ERR(%struct.drm_gem_object* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %68 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @DRM_DEV_ERROR(i32 %69, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %71 = load %struct.drm_gem_object*, %struct.drm_gem_object** %13, align 8
  %72 = call %struct.drm_gem_object* @ERR_CAST(%struct.drm_gem_object* %71)
  %73 = bitcast %struct.drm_gem_object* %72 to %struct.drm_framebuffer*
  store %struct.drm_framebuffer* %73, %struct.drm_framebuffer** %6, align 8
  br label %97

74:                                               ; preds = %62
  %75 = load %struct.drm_gem_object*, %struct.drm_gem_object** %13, align 8
  %76 = call i32 @msm_gem_object_set_name(%struct.drm_gem_object* %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %77 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %78 = call %struct.drm_gem_object* @msm_framebuffer_init(%struct.drm_device* %77, %struct.drm_mode_fb_cmd2* %12, %struct.drm_gem_object** %13)
  %79 = bitcast %struct.drm_gem_object* %78 to %struct.drm_framebuffer*
  store %struct.drm_framebuffer* %79, %struct.drm_framebuffer** %14, align 8
  %80 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %14, align 8
  %81 = bitcast %struct.drm_framebuffer* %80 to %struct.drm_gem_object*
  %82 = call i64 @IS_ERR(%struct.drm_gem_object* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %74
  %85 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %86 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @DRM_DEV_ERROR(i32 %87, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %89 = load %struct.drm_gem_object*, %struct.drm_gem_object** %13, align 8
  %90 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %89)
  %91 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %14, align 8
  %92 = bitcast %struct.drm_framebuffer* %91 to %struct.drm_gem_object*
  %93 = call %struct.drm_gem_object* @ERR_CAST(%struct.drm_gem_object* %92)
  %94 = bitcast %struct.drm_gem_object* %93 to %struct.drm_framebuffer*
  store %struct.drm_framebuffer* %94, %struct.drm_framebuffer** %6, align 8
  br label %97

95:                                               ; preds = %74
  %96 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %14, align 8
  store %struct.drm_framebuffer* %96, %struct.drm_framebuffer** %6, align 8
  br label %97

97:                                               ; preds = %95, %84, %66
  %98 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  ret %struct.drm_framebuffer* %98
}

declare dso_local i32 @DBG(i8*, i32, i32) #1

declare dso_local %struct.drm_gem_object* @msm_gem_new(%struct.drm_device*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.drm_gem_object*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*) #1

declare dso_local %struct.drm_gem_object* @ERR_CAST(%struct.drm_gem_object*) #1

declare dso_local i32 @msm_gem_object_set_name(%struct.drm_gem_object*, i8*) #1

declare dso_local %struct.drm_gem_object* @msm_framebuffer_init(%struct.drm_device*, %struct.drm_mode_fb_cmd2*, %struct.drm_gem_object**) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
