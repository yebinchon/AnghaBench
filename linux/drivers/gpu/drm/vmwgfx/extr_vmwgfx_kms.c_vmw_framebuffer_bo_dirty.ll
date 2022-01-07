; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_framebuffer_bo_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_framebuffer_bo_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32, i32, i32 }
%struct.drm_file = type { i32 }
%struct.drm_clip_rect = type { i32, i32, i64, i64 }
%struct.vmw_private = type { i32, i32, i32 }
%struct.vmw_framebuffer_bo = type { i32 }

@DRM_MODE_FB_DIRTY_ANNOTATE_COPY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Dirty called with invalid display system.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_framebuffer*, %struct.drm_file*, i32, i32, %struct.drm_clip_rect*, i32)* @vmw_framebuffer_bo_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_framebuffer_bo_dirty(%struct.drm_framebuffer* %0, %struct.drm_file* %1, i32 %2, i32 %3, %struct.drm_clip_rect* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_framebuffer*, align 8
  %9 = alloca %struct.drm_file*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_clip_rect*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.vmw_private*, align 8
  %15 = alloca %struct.vmw_framebuffer_bo*, align 8
  %16 = alloca %struct.drm_clip_rect, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.drm_framebuffer* %0, %struct.drm_framebuffer** %8, align 8
  store %struct.drm_file* %1, %struct.drm_file** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.drm_clip_rect* %4, %struct.drm_clip_rect** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %20 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.vmw_private* @vmw_priv(i32 %21)
  store %struct.vmw_private* %22, %struct.vmw_private** %14, align 8
  %23 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %24 = call %struct.vmw_framebuffer_bo* @vmw_framebuffer_to_vfbd(%struct.drm_framebuffer* %23)
  store %struct.vmw_framebuffer_bo* %24, %struct.vmw_framebuffer_bo** %15, align 8
  store i32 1, i32* %18, align 4
  %25 = load %struct.vmw_private*, %struct.vmw_private** %14, align 8
  %26 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @drm_modeset_lock_all(i32 %27)
  %29 = load %struct.vmw_private*, %struct.vmw_private** %14, align 8
  %30 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %29, i32 0, i32 2
  %31 = call i32 @ttm_read_lock(i32* %30, i32 1)
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* %17, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %6
  %38 = load %struct.vmw_private*, %struct.vmw_private** %14, align 8
  %39 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @drm_modeset_unlock_all(i32 %40)
  %42 = load i32, i32* %17, align 4
  store i32 %42, i32* %7, align 4
  br label %93

43:                                               ; preds = %6
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %43
  store i32 1, i32* %13, align 4
  store %struct.drm_clip_rect* %16, %struct.drm_clip_rect** %12, align 8
  %47 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %16, i32 0, i32 2
  store i64 0, i64* %47, align 8
  %48 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %16, i32 0, i32 3
  store i64 0, i64* %48, align 8
  %49 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %50 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %16, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %54 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %16, i32 0, i32 0
  store i32 %55, i32* %56, align 8
  br label %66

57:                                               ; preds = %43
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @DRM_MODE_FB_DIRTY_ANNOTATE_COPY, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* %13, align 4
  %64 = udiv i32 %63, 2
  store i32 %64, i32* %13, align 4
  store i32 2, i32* %18, align 4
  br label %65

65:                                               ; preds = %62, %57
  br label %66

66:                                               ; preds = %65, %46
  %67 = load %struct.vmw_private*, %struct.vmw_private** %14, align 8
  %68 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  switch i32 %69, label %78 [
    i32 128, label %70
  ]

70:                                               ; preds = %66
  %71 = load %struct.vmw_private*, %struct.vmw_private** %14, align 8
  %72 = load %struct.vmw_framebuffer_bo*, %struct.vmw_framebuffer_bo** %15, align 8
  %73 = getelementptr inbounds %struct.vmw_framebuffer_bo, %struct.vmw_framebuffer_bo* %72, i32 0, i32 0
  %74 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %12, align 8
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %18, align 4
  %77 = call i32 @vmw_kms_ldu_do_bo_dirty(%struct.vmw_private* %71, i32* %73, i32 0, i32 0, %struct.drm_clip_rect* %74, i32 %75, i32 %76)
  store i32 %77, i32* %17, align 4
  br label %82

78:                                               ; preds = %66
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %17, align 4
  %81 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %82

82:                                               ; preds = %78, %70
  %83 = load %struct.vmw_private*, %struct.vmw_private** %14, align 8
  %84 = call i32 @vmw_fifo_flush(%struct.vmw_private* %83, i32 0)
  %85 = load %struct.vmw_private*, %struct.vmw_private** %14, align 8
  %86 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %85, i32 0, i32 2
  %87 = call i32 @ttm_read_unlock(i32* %86)
  %88 = load %struct.vmw_private*, %struct.vmw_private** %14, align 8
  %89 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @drm_modeset_unlock_all(i32 %90)
  %92 = load i32, i32* %17, align 4
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %82, %37
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

declare dso_local %struct.vmw_private* @vmw_priv(i32) #1

declare dso_local %struct.vmw_framebuffer_bo* @vmw_framebuffer_to_vfbd(%struct.drm_framebuffer*) #1

declare dso_local i32 @drm_modeset_lock_all(i32) #1

declare dso_local i32 @ttm_read_lock(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @drm_modeset_unlock_all(i32) #1

declare dso_local i32 @vmw_kms_ldu_do_bo_dirty(%struct.vmw_private*, i32*, i32, i32, %struct.drm_clip_rect*, i32, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @vmw_fifo_flush(%struct.vmw_private*, i32) #1

declare dso_local i32 @ttm_read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
