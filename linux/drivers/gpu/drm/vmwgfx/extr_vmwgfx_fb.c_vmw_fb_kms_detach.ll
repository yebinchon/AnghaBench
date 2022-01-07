; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fb.c_vmw_fb_kms_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fb.c_vmw_fb_kms_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_fb_par = type { i64, %struct.drm_framebuffer*, i32*, %struct.TYPE_2__*, i32, i32 }
%struct.drm_framebuffer = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.drm_mode_set = type { i32*, i64, i32*, i32*, i64, i64, i32 }

@.str = private unnamed_addr constant [25 x i8] c"Could not unset a mode.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_fb_par*, i32, i32)* @vmw_fb_kms_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_fb_kms_detach(%struct.vmw_fb_par* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmw_fb_par*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_framebuffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_mode_set, align 8
  store %struct.vmw_fb_par* %0, %struct.vmw_fb_par** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %5, align 8
  %12 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %11, i32 0, i32 1
  %13 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  store %struct.drm_framebuffer* %13, %struct.drm_framebuffer** %8, align 8
  %14 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %5, align 8
  %15 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %49

18:                                               ; preds = %3
  %19 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %5, align 8
  %20 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %10, i32 0, i32 6
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %10, i32 0, i32 5
  store i64 0, i64* %23, align 8
  %24 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %10, i32 0, i32 4
  store i64 0, i64* %24, align 8
  %25 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %10, i32 0, i32 3
  store i32* null, i32** %25, align 8
  %26 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %10, i32 0, i32 2
  store i32* null, i32** %26, align 8
  %27 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %10, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %5, align 8
  %29 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %10, i32 0, i32 0
  store i32* %29, i32** %30, align 8
  %31 = call i32 @vmwgfx_set_config_internal(%struct.drm_mode_set* %10)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %18
  %35 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %4, align 4
  br label %73

37:                                               ; preds = %18
  %38 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %5, align 8
  %39 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %38, i32 0, i32 3
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %5, align 8
  %44 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @drm_mode_destroy(i32 %42, i32* %45)
  %47 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %5, align 8
  %48 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %47, i32 0, i32 2
  store i32* null, i32** %48, align 8
  br label %49

49:                                               ; preds = %37, %3
  %50 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %51 = icmp ne %struct.drm_framebuffer* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %54 = call i32 @drm_framebuffer_put(%struct.drm_framebuffer* %53)
  %55 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %5, align 8
  %56 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %55, i32 0, i32 1
  store %struct.drm_framebuffer* null, %struct.drm_framebuffer** %56, align 8
  br label %57

57:                                               ; preds = %52, %49
  %58 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %5, align 8
  %59 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %57
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %5, align 8
  %70 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %69, i32 0, i32 0
  %71 = call i32 @vmw_bo_unreference(i64* %70)
  br label %72

72:                                               ; preds = %68, %65, %62, %57
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %72, %34
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @vmwgfx_set_config_internal(%struct.drm_mode_set*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_mode_destroy(i32, i32*) #1

declare dso_local i32 @drm_framebuffer_put(%struct.drm_framebuffer*) #1

declare dso_local i32 @vmw_bo_unreference(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
