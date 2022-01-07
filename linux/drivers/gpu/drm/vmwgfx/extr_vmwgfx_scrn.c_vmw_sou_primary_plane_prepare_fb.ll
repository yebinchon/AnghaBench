; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_scrn.c_vmw_sou_primary_plane_prepare_fb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_scrn.c_vmw_sou_primary_plane_prepare_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_plane_state = type { i32, i32, %struct.drm_crtc*, %struct.drm_framebuffer* }
%struct.drm_crtc = type { i32 }
%struct.drm_framebuffer = type { i32 }
%struct.vmw_plane_state = type { i64, i32* }
%struct.vmw_private = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vmw_vram_ne_placement = common dso_local global i32 0, align 4
@vmw_bo_bo_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_plane_state*)* @vmw_sou_primary_plane_prepare_fb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_sou_primary_plane_prepare_fb(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.drm_framebuffer*, align 8
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.vmw_plane_state*, align 8
  %9 = alloca %struct.vmw_private*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %4, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %5, align 8
  %12 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %13 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %12, i32 0, i32 3
  %14 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %13, align 8
  store %struct.drm_framebuffer* %14, %struct.drm_framebuffer** %6, align 8
  %15 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %16 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = sext i32 %19 to i64
  %23 = inttoptr i64 %22 to %struct.drm_crtc*
  br label %28

24:                                               ; preds = %2
  %25 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %26 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %25, i32 0, i32 2
  %27 = load %struct.drm_crtc*, %struct.drm_crtc** %26, align 8
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi %struct.drm_crtc* [ %23, %21 ], [ %27, %24 ]
  store %struct.drm_crtc* %29, %struct.drm_crtc** %7, align 8
  %30 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %31 = call %struct.vmw_plane_state* @vmw_plane_state_to_vps(%struct.drm_plane_state* %30)
  store %struct.vmw_plane_state* %31, %struct.vmw_plane_state** %8, align 8
  %32 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %33 = icmp ne %struct.drm_framebuffer* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %8, align 8
  %36 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %35, i32 0, i32 1
  %37 = call i32 @vmw_bo_unreference(i32** %36)
  %38 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %8, align 8
  %39 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  store i32 0, i32* %3, align 4
  br label %116

40:                                               ; preds = %28
  %41 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %42 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %45 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %43, %46
  %48 = mul nsw i32 %47, 4
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %10, align 8
  %50 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %51 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.vmw_private* @vmw_priv(i32 %52)
  store %struct.vmw_private* %53, %struct.vmw_private** %9, align 8
  %54 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %8, align 8
  %55 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %76

58:                                               ; preds = %40
  %59 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %8, align 8
  %60 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %10, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load %struct.vmw_private*, %struct.vmw_private** %9, align 8
  %66 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %8, align 8
  %67 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @vmw_bo_pin_in_vram(%struct.vmw_private* %65, i32* %68, i32 1)
  store i32 %69, i32* %3, align 4
  br label %116

70:                                               ; preds = %58
  %71 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %8, align 8
  %72 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %71, i32 0, i32 1
  %73 = call i32 @vmw_bo_unreference(i32** %72)
  %74 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %8, align 8
  %75 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %74, i32 0, i32 0
  store i64 0, i64* %75, align 8
  br label %76

76:                                               ; preds = %70, %40
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = call i32* @kzalloc(i32 4, i32 %77)
  %79 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %8, align 8
  %80 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %79, i32 0, i32 1
  store i32* %78, i32** %80, align 8
  %81 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %8, align 8
  %82 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %76
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %116

88:                                               ; preds = %76
  %89 = load %struct.vmw_private*, %struct.vmw_private** %9, align 8
  %90 = call i32 @vmw_svga_enable(%struct.vmw_private* %89)
  %91 = load %struct.vmw_private*, %struct.vmw_private** %9, align 8
  %92 = call i32 @vmw_overlay_pause_all(%struct.vmw_private* %91)
  %93 = load %struct.vmw_private*, %struct.vmw_private** %9, align 8
  %94 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %8, align 8
  %95 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i64, i64* %10, align 8
  %98 = call i32 @vmw_bo_init(%struct.vmw_private* %93, i32* %96, i64 %97, i32* @vmw_vram_ne_placement, i32 0, i32* @vmw_bo_bo_free)
  store i32 %98, i32* %11, align 4
  %99 = load %struct.vmw_private*, %struct.vmw_private** %9, align 8
  %100 = call i32 @vmw_overlay_resume_all(%struct.vmw_private* %99)
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %88
  %104 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %8, align 8
  %105 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %104, i32 0, i32 1
  store i32* null, i32** %105, align 8
  %106 = load i32, i32* %11, align 4
  store i32 %106, i32* %3, align 4
  br label %116

107:                                              ; preds = %88
  %108 = load i64, i64* %10, align 8
  %109 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %8, align 8
  %110 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  %111 = load %struct.vmw_private*, %struct.vmw_private** %9, align 8
  %112 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %8, align 8
  %113 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @vmw_bo_pin_in_vram(%struct.vmw_private* %111, i32* %114, i32 1)
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %107, %103, %85, %64, %34
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local %struct.vmw_plane_state* @vmw_plane_state_to_vps(%struct.drm_plane_state*) #1

declare dso_local i32 @vmw_bo_unreference(i32**) #1

declare dso_local %struct.vmw_private* @vmw_priv(i32) #1

declare dso_local i32 @vmw_bo_pin_in_vram(%struct.vmw_private*, i32*, i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @vmw_svga_enable(%struct.vmw_private*) #1

declare dso_local i32 @vmw_overlay_pause_all(%struct.vmw_private*) #1

declare dso_local i32 @vmw_bo_init(%struct.vmw_private*, i32*, i64, i32*, i32, i32*) #1

declare dso_local i32 @vmw_overlay_resume_all(%struct.vmw_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
