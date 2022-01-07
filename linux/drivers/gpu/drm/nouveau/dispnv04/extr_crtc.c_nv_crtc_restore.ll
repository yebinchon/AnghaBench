; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_crtc.c_nv_crtc_restore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_crtc.c_nv_crtc_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.nouveau_crtc = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@NV_CIO_CRE_21 = common dso_local global i64 0, align 8
@NV_DPMS_CLEARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @nv_crtc_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv_crtc_restore(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.nouveau_crtc*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %8 = call %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc* %7)
  store %struct.nouveau_crtc* %8, %struct.nouveau_crtc** %3, align 8
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %10 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %9, i32 0, i32 0
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %4, align 8
  %12 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %13 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %16 = call %struct.TYPE_5__* @nv04_display(%struct.drm_device* %15)
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @NV_CIO_CRE_21, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %6, align 4
  %28 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %29 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %28, i32 0, i32 0
  %30 = load %struct.drm_device*, %struct.drm_device** %29, align 8
  %31 = call i64 @nv_two_heads(%struct.drm_device* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %1
  %34 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %35 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %34, i32 0, i32 0
  %36 = load %struct.drm_device*, %struct.drm_device** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @NVSetOwner(%struct.drm_device* %36, i32 %37)
  br label %39

39:                                               ; preds = %33, %1
  %40 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %41 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %40, i32 0, i32 0
  %42 = load %struct.drm_device*, %struct.drm_device** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %45 = call %struct.TYPE_5__* @nv04_display(%struct.drm_device* %44)
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = call i32 @nouveau_hw_load_state(%struct.drm_device* %42, i32 %43, %struct.TYPE_6__* %46)
  %48 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %49 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %48, i32 0, i32 0
  %50 = load %struct.drm_device*, %struct.drm_device** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @nv_lock_vga_crtc_shadow(%struct.drm_device* %50, i32 %51, i32 %52)
  %54 = load i32, i32* @NV_DPMS_CLEARED, align 4
  %55 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %56 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  ret void
}

declare dso_local %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.TYPE_5__* @nv04_display(%struct.drm_device*) #1

declare dso_local i64 @nv_two_heads(%struct.drm_device*) #1

declare dso_local i32 @NVSetOwner(%struct.drm_device*, i32) #1

declare dso_local i32 @nouveau_hw_load_state(%struct.drm_device*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @nv_lock_vga_crtc_shadow(%struct.drm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
