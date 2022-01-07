; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_modeset.c_udl_crtc_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_modeset.c_udl_crtc_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_3__*, %struct.drm_device* }
%struct.TYPE_3__ = type { %struct.drm_framebuffer* }
%struct.drm_device = type { %struct.udl_device* }
%struct.udl_device = type { i32, i64, %struct.drm_crtc* }
%struct.drm_display_mode = type { i32, i32 }
%struct.drm_framebuffer = type { i32 }
%struct.udl_framebuffer = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@DRM_MODE_DPMS_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_display_mode*, %struct.drm_display_mode*, i32, i32, %struct.drm_framebuffer*)* @udl_crtc_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udl_crtc_mode_set(%struct.drm_crtc* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2, i32 %3, i32 %4, %struct.drm_framebuffer* %5) #0 {
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_display_mode*, align 8
  %9 = alloca %struct.drm_display_mode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_framebuffer*, align 8
  %13 = alloca %struct.drm_device*, align 8
  %14 = alloca %struct.udl_framebuffer*, align 8
  %15 = alloca %struct.udl_device*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.udl_framebuffer*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %7, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %8, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.drm_framebuffer* %5, %struct.drm_framebuffer** %12, align 8
  %20 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %21 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %20, i32 0, i32 1
  %22 = load %struct.drm_device*, %struct.drm_device** %21, align 8
  store %struct.drm_device* %22, %struct.drm_device** %13, align 8
  %23 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %24 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %26, align 8
  %28 = call %struct.udl_framebuffer* @to_udl_fb(%struct.drm_framebuffer* %27)
  store %struct.udl_framebuffer* %28, %struct.udl_framebuffer** %14, align 8
  %29 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %30 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %29, i32 0, i32 0
  %31 = load %struct.udl_device*, %struct.udl_device** %30, align 8
  store %struct.udl_device* %31, %struct.udl_device** %15, align 8
  store i32 0, i32* %18, align 4
  %32 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %33 = load %struct.udl_device*, %struct.udl_device** %15, align 8
  %34 = getelementptr inbounds %struct.udl_device, %struct.udl_device* %33, i32 0, i32 2
  store %struct.drm_crtc* %32, %struct.drm_crtc** %34, align 8
  %35 = load %struct.udl_device*, %struct.udl_device** %15, align 8
  %36 = getelementptr inbounds %struct.udl_device, %struct.udl_device* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** %16, align 8
  %39 = load i8*, i8** %16, align 8
  %40 = call i8* @udl_vidreg_lock(i8* %39)
  store i8* %40, i8** %17, align 8
  %41 = load i8*, i8** %17, align 8
  %42 = load i32, i32* %18, align 4
  %43 = call i8* @udl_set_color_depth(i8* %41, i32 %42)
  store i8* %43, i8** %17, align 8
  %44 = load i8*, i8** %17, align 8
  %45 = call i8* @udl_set_base16bpp(i8* %44, i32 0)
  store i8* %45, i8** %17, align 8
  %46 = load i8*, i8** %17, align 8
  %47 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %48 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 2, %49
  %51 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %52 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %50, %53
  %55 = call i8* @udl_set_base8bpp(i8* %46, i32 %54)
  store i8* %55, i8** %17, align 8
  %56 = load i8*, i8** %17, align 8
  %57 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %58 = call i8* @udl_set_vid_cmds(i8* %56, %struct.drm_display_mode* %57)
  store i8* %58, i8** %17, align 8
  %59 = load i8*, i8** %17, align 8
  %60 = load i32, i32* @DRM_MODE_DPMS_ON, align 4
  %61 = call i8* @udl_set_blank(i8* %59, i32 %60)
  store i8* %61, i8** %17, align 8
  %62 = load i8*, i8** %17, align 8
  %63 = call i8* @udl_vidreg_unlock(i8* %62)
  store i8* %63, i8** %17, align 8
  %64 = load i8*, i8** %17, align 8
  %65 = call i8* @udl_dummy_render(i8* %64)
  store i8* %65, i8** %17, align 8
  %66 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %67 = icmp ne %struct.drm_framebuffer* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %6
  %69 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %70 = call %struct.udl_framebuffer* @to_udl_fb(%struct.drm_framebuffer* %69)
  store %struct.udl_framebuffer* %70, %struct.udl_framebuffer** %19, align 8
  %71 = load %struct.udl_framebuffer*, %struct.udl_framebuffer** %19, align 8
  %72 = getelementptr inbounds %struct.udl_framebuffer, %struct.udl_framebuffer* %71, i32 0, i32 0
  store i32 0, i32* %72, align 4
  br label %73

73:                                               ; preds = %68, %6
  %74 = load %struct.udl_framebuffer*, %struct.udl_framebuffer** %14, align 8
  %75 = getelementptr inbounds %struct.udl_framebuffer, %struct.udl_framebuffer* %74, i32 0, i32 0
  store i32 1, i32* %75, align 4
  %76 = load i8*, i8** %17, align 8
  %77 = load i8*, i8** %16, align 8
  %78 = ptrtoint i8* %76 to i64
  %79 = ptrtoint i8* %77 to i64
  %80 = sub i64 %78, %79
  %81 = trunc i64 %80 to i32
  %82 = load %struct.udl_device*, %struct.udl_device** %15, align 8
  %83 = getelementptr inbounds %struct.udl_device, %struct.udl_device* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.udl_framebuffer*, %struct.udl_framebuffer** %14, align 8
  %85 = load %struct.udl_framebuffer*, %struct.udl_framebuffer** %14, align 8
  %86 = getelementptr inbounds %struct.udl_framebuffer, %struct.udl_framebuffer* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.udl_framebuffer*, %struct.udl_framebuffer** %14, align 8
  %90 = getelementptr inbounds %struct.udl_framebuffer, %struct.udl_framebuffer* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @udl_handle_damage(%struct.udl_framebuffer* %84, i32 0, i32 0, i32 %88, i32 %92)
  ret i32 0
}

declare dso_local %struct.udl_framebuffer* @to_udl_fb(%struct.drm_framebuffer*) #1

declare dso_local i8* @udl_vidreg_lock(i8*) #1

declare dso_local i8* @udl_set_color_depth(i8*, i32) #1

declare dso_local i8* @udl_set_base16bpp(i8*, i32) #1

declare dso_local i8* @udl_set_base8bpp(i8*, i32) #1

declare dso_local i8* @udl_set_vid_cmds(i8*, %struct.drm_display_mode*) #1

declare dso_local i8* @udl_set_blank(i8*, i32) #1

declare dso_local i8* @udl_vidreg_unlock(i8*) #1

declare dso_local i8* @udl_dummy_render(i8*) #1

declare dso_local i32 @udl_handle_damage(%struct.udl_framebuffer*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
