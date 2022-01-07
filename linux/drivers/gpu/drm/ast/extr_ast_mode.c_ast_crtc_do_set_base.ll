; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_mode.c_ast_crtc_do_set_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_mode.c_ast_crtc_do_set_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.drm_framebuffer = type { i32* }
%struct.drm_gem_vram_object = type { i32 }

@DRM_GEM_VRAM_PL_FLAG_VRAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_framebuffer*, i32, i32, i32)* @ast_crtc_do_set_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ast_crtc_do_set_base(%struct.drm_crtc* %0, %struct.drm_framebuffer* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_framebuffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_gem_vram_object*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %7, align 8
  store %struct.drm_framebuffer* %1, %struct.drm_framebuffer** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %5
  %18 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %19 = icmp ne %struct.drm_framebuffer* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %22 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.drm_gem_vram_object* @drm_gem_vram_of_gem(i32 %25)
  store %struct.drm_gem_vram_object* %26, %struct.drm_gem_vram_object** %12, align 8
  %27 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %12, align 8
  %28 = call i32 @drm_gem_vram_unpin(%struct.drm_gem_vram_object* %27)
  br label %29

29:                                               ; preds = %20, %17, %5
  %30 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %31 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.drm_gem_vram_object* @drm_gem_vram_of_gem(i32 %38)
  store %struct.drm_gem_vram_object* %39, %struct.drm_gem_vram_object** %12, align 8
  %40 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %12, align 8
  %41 = load i32, i32* @DRM_GEM_VRAM_PL_FLAG_VRAM, align 4
  %42 = call i32 @drm_gem_vram_pin(%struct.drm_gem_vram_object* %40, i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %29
  %46 = load i32, i32* %13, align 4
  store i32 %46, i32* %6, align 4
  br label %66

47:                                               ; preds = %29
  %48 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %12, align 8
  %49 = call i64 @drm_gem_vram_offset(%struct.drm_gem_vram_object* %48)
  store i64 %49, i64* %14, align 8
  %50 = load i64, i64* %14, align 8
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i64, i64* %14, align 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %13, align 4
  br label %62

55:                                               ; preds = %47
  %56 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %57 = call i32 @ast_set_offset_reg(%struct.drm_crtc* %56)
  %58 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %59 = load i64, i64* %14, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 @ast_set_start_address_crt1(%struct.drm_crtc* %58, i32 %60)
  store i32 0, i32* %6, align 4
  br label %66

62:                                               ; preds = %52
  %63 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %12, align 8
  %64 = call i32 @drm_gem_vram_unpin(%struct.drm_gem_vram_object* %63)
  %65 = load i32, i32* %13, align 4
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %62, %55, %45
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local %struct.drm_gem_vram_object* @drm_gem_vram_of_gem(i32) #1

declare dso_local i32 @drm_gem_vram_unpin(%struct.drm_gem_vram_object*) #1

declare dso_local i32 @drm_gem_vram_pin(%struct.drm_gem_vram_object*, i32) #1

declare dso_local i64 @drm_gem_vram_offset(%struct.drm_gem_vram_object*) #1

declare dso_local i32 @ast_set_offset_reg(%struct.drm_crtc*) #1

declare dso_local i32 @ast_set_start_address_crt1(%struct.drm_crtc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
