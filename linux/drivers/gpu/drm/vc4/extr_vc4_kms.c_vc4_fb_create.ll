; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_kms.c_vc4_fb_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_kms.c_vc4_fb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_mode_fb_cmd2 = type { i32, i32*, i32* }
%struct.drm_gem_object = type { i32 }
%struct.vc4_bo = type { i64 }

@DRM_MODE_FB_MODIFIERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to look up GEM BO %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@DRM_FORMAT_MOD_BROADCOM_VC4_T_TILED = common dso_local global i32 0, align 4
@DRM_FORMAT_MOD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_framebuffer* (%struct.drm_device*, %struct.drm_file*, %struct.drm_mode_fb_cmd2*)* @vc4_fb_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_framebuffer* @vc4_fb_create(%struct.drm_device* %0, %struct.drm_file* %1, %struct.drm_mode_fb_cmd2* %2) #0 {
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %8 = alloca %struct.drm_mode_fb_cmd2, align 8
  %9 = alloca %struct.drm_gem_object*, align 8
  %10 = alloca %struct.vc4_bo*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_file* %1, %struct.drm_file** %6, align 8
  store %struct.drm_mode_fb_cmd2* %2, %struct.drm_mode_fb_cmd2** %7, align 8
  %11 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %12 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @DRM_MODE_FB_MODIFIERS, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %60, label %17

17:                                               ; preds = %3
  %18 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %19 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %20 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %18, i32 %23)
  store %struct.drm_gem_object* %24, %struct.drm_gem_object** %9, align 8
  %25 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %26 = icmp ne %struct.drm_gem_object* %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %17
  %28 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %29 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @ENOENT, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.drm_framebuffer* @ERR_PTR(i32 %35)
  store %struct.drm_framebuffer* %36, %struct.drm_framebuffer** %4, align 8
  br label %65

37:                                               ; preds = %17
  %38 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %39 = call %struct.vc4_bo* @to_vc4_bo(%struct.drm_gem_object* %38)
  store %struct.vc4_bo* %39, %struct.vc4_bo** %10, align 8
  %40 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %41 = bitcast %struct.drm_mode_fb_cmd2* %8 to i8*
  %42 = bitcast %struct.drm_mode_fb_cmd2* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 24, i1 false)
  %43 = load %struct.vc4_bo*, %struct.vc4_bo** %10, align 8
  %44 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %37
  %48 = load i32, i32* @DRM_FORMAT_MOD_BROADCOM_VC4_T_TILED, align 4
  %49 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %8, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 %48, i32* %51, align 4
  br label %57

52:                                               ; preds = %37
  %53 = load i32, i32* @DRM_FORMAT_MOD_NONE, align 4
  %54 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %8, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  store i32 %53, i32* %56, align 4
  br label %57

57:                                               ; preds = %52, %47
  %58 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %59 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %58)
  store %struct.drm_mode_fb_cmd2* %8, %struct.drm_mode_fb_cmd2** %7, align 8
  br label %60

60:                                               ; preds = %57, %3
  %61 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %62 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %63 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %64 = call %struct.drm_framebuffer* @drm_gem_fb_create(%struct.drm_device* %61, %struct.drm_file* %62, %struct.drm_mode_fb_cmd2* %63)
  store %struct.drm_framebuffer* %64, %struct.drm_framebuffer** %4, align 8
  br label %65

65:                                               ; preds = %60, %27
  %66 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  ret %struct.drm_framebuffer* %66
}

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

declare dso_local %struct.drm_framebuffer* @ERR_PTR(i32) #1

declare dso_local %struct.vc4_bo* @to_vc4_bo(%struct.drm_gem_object*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

declare dso_local %struct.drm_framebuffer* @drm_gem_fb_create(%struct.drm_device*, %struct.drm_file*, %struct.drm_mode_fb_cmd2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
