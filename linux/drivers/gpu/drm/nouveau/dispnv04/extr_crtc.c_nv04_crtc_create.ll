; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_crtc.c_nv04_crtc_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_crtc.c_nv04_crtc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_crtc = type { i32, %struct.TYPE_5__, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NV_DPMS_CLEARED = common dso_local global i32 0, align 4
@nv_crtc_save = common dso_local global i32 0, align 4
@nv_crtc_restore = common dso_local global i32 0, align 4
@nv04_crtc_funcs = common dso_local global i32 0, align 4
@nv04_crtc_helper_funcs = common dso_local global i32 0, align 4
@TTM_PL_FLAG_VRAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv04_crtc_create(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_crtc*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.nouveau_crtc* @kzalloc(i32 32, i32 %8)
  store %struct.nouveau_crtc* %9, %struct.nouveau_crtc** %6, align 8
  %10 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %6, align 8
  %11 = icmp ne %struct.nouveau_crtc* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %89

15:                                               ; preds = %2
  %16 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %6, align 8
  %17 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %16, i32 0, i32 6
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %6, align 8
  %21 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @NV_DPMS_CLEARED, align 4
  %23 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %6, align 8
  %24 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @nv_crtc_save, align 4
  %26 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %6, align 8
  %27 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @nv_crtc_restore, align 4
  %29 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %6, align 8
  %30 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %32 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %6, align 8
  %33 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %32, i32 0, i32 2
  %34 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %35 = call i32 @create_primary_plane(%struct.drm_device* %34)
  %36 = call i32 @drm_crtc_init_with_planes(%struct.drm_device* %31, i32* %33, i32 %35, i32* null, i32* @nv04_crtc_funcs, i32* null)
  %37 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %6, align 8
  %38 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %37, i32 0, i32 2
  %39 = call i32 @drm_crtc_helper_add(i32* %38, i32* @nv04_crtc_helper_funcs)
  %40 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %6, align 8
  %41 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %40, i32 0, i32 2
  %42 = call i32 @drm_mode_crtc_set_gamma_size(i32* %41, i32 256)
  %43 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %44 = call %struct.TYPE_6__* @nouveau_drm(%struct.drm_device* %43)
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* @TTM_PL_FLAG_VRAM, align 4
  %47 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %6, align 8
  %48 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = call i32 @nouveau_bo_new(i32* %45, i32 16384, i32 256, i32 %46, i32 0, i32 0, i32* null, i32* null, i32* %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %86, label %53

53:                                               ; preds = %15
  %54 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %6, align 8
  %55 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @TTM_PL_FLAG_VRAM, align 4
  %59 = call i32 @nouveau_bo_pin(i32 %57, i32 %58, i32 0)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %77, label %62

62:                                               ; preds = %53
  %63 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %6, align 8
  %64 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @nouveau_bo_map(i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %62
  %71 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %6, align 8
  %72 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @nouveau_bo_unpin(i32 %74)
  br label %76

76:                                               ; preds = %70, %62
  br label %77

77:                                               ; preds = %76, %53
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %6, align 8
  %82 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = call i32 @nouveau_bo_ref(i32* null, i32* %83)
  br label %85

85:                                               ; preds = %80, %77
  br label %86

86:                                               ; preds = %85, %15
  %87 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %6, align 8
  %88 = call i32 @nv04_cursor_init(%struct.nouveau_crtc* %87)
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %86, %12
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.nouveau_crtc* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_crtc_init_with_planes(%struct.drm_device*, i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @create_primary_plane(%struct.drm_device*) #1

declare dso_local i32 @drm_crtc_helper_add(i32*, i32*) #1

declare dso_local i32 @drm_mode_crtc_set_gamma_size(i32*, i32) #1

declare dso_local i32 @nouveau_bo_new(i32*, i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_6__* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @nouveau_bo_pin(i32, i32, i32) #1

declare dso_local i32 @nouveau_bo_map(i32) #1

declare dso_local i32 @nouveau_bo_unpin(i32) #1

declare dso_local i32 @nouveau_bo_ref(i32*, i32*) #1

declare dso_local i32 @nv04_cursor_init(%struct.nouveau_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
