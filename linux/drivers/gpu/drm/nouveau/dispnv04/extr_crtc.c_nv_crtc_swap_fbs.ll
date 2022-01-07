; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_crtc.c_nv_crtc_swap_fbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_crtc.c_nv_crtc_swap_fbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.drm_framebuffer = type { i32 }
%struct.nv04_display = type { i64* }
%struct.nouveau_framebuffer = type { i32 }
%struct.nouveau_crtc = type { i64 }

@TTM_PL_FLAG_VRAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_framebuffer*)* @nv_crtc_swap_fbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv_crtc_swap_fbs(%struct.drm_crtc* %0, %struct.drm_framebuffer* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca %struct.nv04_display*, align 8
  %6 = alloca %struct.nouveau_framebuffer*, align 8
  %7 = alloca %struct.nouveau_crtc*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_framebuffer* %1, %struct.drm_framebuffer** %4, align 8
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %10 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.nv04_display* @nv04_display(i32 %11)
  store %struct.nv04_display* %12, %struct.nv04_display** %5, align 8
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %14 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.nouveau_framebuffer* @nouveau_framebuffer(i32 %17)
  store %struct.nouveau_framebuffer* %18, %struct.nouveau_framebuffer** %6, align 8
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %20 = call %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc* %19)
  store %struct.nouveau_crtc* %20, %struct.nouveau_crtc** %7, align 8
  %21 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %6, align 8
  %22 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @TTM_PL_FLAG_VRAM, align 4
  %25 = call i32 @nouveau_bo_pin(i32 %23, i32 %24, i32 0)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %60

28:                                               ; preds = %2
  %29 = load %struct.nv04_display*, %struct.nv04_display** %5, align 8
  %30 = getelementptr inbounds %struct.nv04_display, %struct.nv04_display* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %7, align 8
  %33 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i64, i64* %31, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %28
  %39 = load %struct.nv04_display*, %struct.nv04_display** %5, align 8
  %40 = getelementptr inbounds %struct.nv04_display, %struct.nv04_display* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %7, align 8
  %43 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i64, i64* %41, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @nouveau_bo_unpin(i64 %46)
  br label %48

48:                                               ; preds = %38, %28
  %49 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %6, align 8
  %50 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.nv04_display*, %struct.nv04_display** %5, align 8
  %53 = getelementptr inbounds %struct.nv04_display, %struct.nv04_display* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %7, align 8
  %56 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i64, i64* %54, i64 %57
  %59 = call i32 @nouveau_bo_ref(i32 %51, i64* %58)
  br label %60

60:                                               ; preds = %48, %2
  %61 = load i32, i32* %8, align 4
  ret i32 %61
}

declare dso_local %struct.nv04_display* @nv04_display(i32) #1

declare dso_local %struct.nouveau_framebuffer* @nouveau_framebuffer(i32) #1

declare dso_local %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @nouveau_bo_pin(i32, i32, i32) #1

declare dso_local i32 @nouveau_bo_unpin(i64) #1

declare dso_local i32 @nouveau_bo_ref(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
