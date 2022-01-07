; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_kms_new_framebuffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_kms_new_framebuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_framebuffer = type { i32, i32 }
%struct.vmw_private = type { i64, i32 }
%struct.vmw_buffer_object = type { i32 }
%struct.vmw_surface = type { i32 }
%struct.drm_mode_fb_cmd2 = type { i32, i32 }

@vmw_du_screen_target = common dso_local global i64 0, align 8
@vmw_framebuffer_pin = common dso_local global i32 0, align 4
@vmw_framebuffer_unpin = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vmw_framebuffer* @vmw_kms_new_framebuffer(%struct.vmw_private* %0, %struct.vmw_buffer_object* %1, %struct.vmw_surface* %2, i32 %3, %struct.drm_mode_fb_cmd2* %4) #0 {
  %6 = alloca %struct.vmw_framebuffer*, align 8
  %7 = alloca %struct.vmw_private*, align 8
  %8 = alloca %struct.vmw_buffer_object*, align 8
  %9 = alloca %struct.vmw_surface*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %12 = alloca %struct.vmw_framebuffer*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %7, align 8
  store %struct.vmw_buffer_object* %1, %struct.vmw_buffer_object** %8, align 8
  store %struct.vmw_surface* %2, %struct.vmw_surface** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.drm_mode_fb_cmd2* %4, %struct.drm_mode_fb_cmd2** %11, align 8
  store %struct.vmw_framebuffer* null, %struct.vmw_framebuffer** %12, align 8
  store i32 0, i32* %13, align 4
  %15 = load %struct.vmw_private*, %struct.vmw_private** %7, align 8
  %16 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %11, align 8
  %17 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %11, align 8
  %20 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @vmw_kms_srf_ok(%struct.vmw_private* %15, i32 %18, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %54

24:                                               ; preds = %5
  %25 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %8, align 8
  %26 = icmp ne %struct.vmw_buffer_object* %25, null
  br i1 %26, label %27, label %54

27:                                               ; preds = %24
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %27
  %31 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %11, align 8
  %32 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %33, 64
  br i1 %34, label %35, label %54

35:                                               ; preds = %30
  %36 = load %struct.vmw_private*, %struct.vmw_private** %7, align 8
  %37 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @vmw_du_screen_target, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %35
  %42 = load %struct.vmw_private*, %struct.vmw_private** %7, align 8
  %43 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %11, align 8
  %46 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %8, align 8
  %47 = call i32 @vmw_create_bo_proxy(i32 %44, %struct.drm_mode_fb_cmd2* %45, %struct.vmw_buffer_object* %46, %struct.vmw_surface** %9)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load i32, i32* %14, align 4
  %52 = call %struct.vmw_framebuffer* @ERR_PTR(i32 %51)
  store %struct.vmw_framebuffer* %52, %struct.vmw_framebuffer** %6, align 8
  br label %93

53:                                               ; preds = %41
  store i32 1, i32* %13, align 4
  br label %54

54:                                               ; preds = %53, %35, %30, %27, %24, %5
  %55 = load %struct.vmw_surface*, %struct.vmw_surface** %9, align 8
  %56 = icmp ne %struct.vmw_surface* %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load %struct.vmw_private*, %struct.vmw_private** %7, align 8
  %59 = load %struct.vmw_surface*, %struct.vmw_surface** %9, align 8
  %60 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %11, align 8
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @vmw_kms_new_framebuffer_surface(%struct.vmw_private* %58, %struct.vmw_surface* %59, %struct.vmw_framebuffer** %12, %struct.drm_mode_fb_cmd2* %60, i32 %61)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = call i32 @vmw_surface_unreference(%struct.vmw_surface** %9)
  br label %67

67:                                               ; preds = %65, %57
  br label %79

68:                                               ; preds = %54
  %69 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %8, align 8
  %70 = icmp ne %struct.vmw_buffer_object* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load %struct.vmw_private*, %struct.vmw_private** %7, align 8
  %73 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %8, align 8
  %74 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %11, align 8
  %75 = call i32 @vmw_kms_new_framebuffer_bo(%struct.vmw_private* %72, %struct.vmw_buffer_object* %73, %struct.vmw_framebuffer** %12, %struct.drm_mode_fb_cmd2* %74)
  store i32 %75, i32* %14, align 4
  br label %78

76:                                               ; preds = %68
  %77 = call i32 (...) @BUG()
  br label %78

78:                                               ; preds = %76, %71
  br label %79

79:                                               ; preds = %78, %67
  %80 = load i32, i32* %14, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32, i32* %14, align 4
  %84 = call %struct.vmw_framebuffer* @ERR_PTR(i32 %83)
  store %struct.vmw_framebuffer* %84, %struct.vmw_framebuffer** %6, align 8
  br label %93

85:                                               ; preds = %79
  %86 = load i32, i32* @vmw_framebuffer_pin, align 4
  %87 = load %struct.vmw_framebuffer*, %struct.vmw_framebuffer** %12, align 8
  %88 = getelementptr inbounds %struct.vmw_framebuffer, %struct.vmw_framebuffer* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* @vmw_framebuffer_unpin, align 4
  %90 = load %struct.vmw_framebuffer*, %struct.vmw_framebuffer** %12, align 8
  %91 = getelementptr inbounds %struct.vmw_framebuffer, %struct.vmw_framebuffer* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  %92 = load %struct.vmw_framebuffer*, %struct.vmw_framebuffer** %12, align 8
  store %struct.vmw_framebuffer* %92, %struct.vmw_framebuffer** %6, align 8
  br label %93

93:                                               ; preds = %85, %82, %50
  %94 = load %struct.vmw_framebuffer*, %struct.vmw_framebuffer** %6, align 8
  ret %struct.vmw_framebuffer* %94
}

declare dso_local i64 @vmw_kms_srf_ok(%struct.vmw_private*, i32, i32) #1

declare dso_local i32 @vmw_create_bo_proxy(i32, %struct.drm_mode_fb_cmd2*, %struct.vmw_buffer_object*, %struct.vmw_surface**) #1

declare dso_local %struct.vmw_framebuffer* @ERR_PTR(i32) #1

declare dso_local i32 @vmw_kms_new_framebuffer_surface(%struct.vmw_private*, %struct.vmw_surface*, %struct.vmw_framebuffer**, %struct.drm_mode_fb_cmd2*, i32) #1

declare dso_local i32 @vmw_surface_unreference(%struct.vmw_surface**) #1

declare dso_local i32 @vmw_kms_new_framebuffer_bo(%struct.vmw_private*, %struct.vmw_buffer_object*, %struct.vmw_framebuffer**, %struct.drm_mode_fb_cmd2*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
