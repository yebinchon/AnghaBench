; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_crtc.c_nv_crtc_set_digital_vibrance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_crtc.c_nv_crtc_set_digital_vibrance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.nouveau_crtc = type { i64, i32 }
%struct.nv04_crtc_reg = type { i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nv04_crtc_reg* }

@NV_CIO_CRE_CSB = common dso_local global i64 0, align 8
@NV_CIO_CRE_5B = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, i32)* @nv_crtc_set_digital_vibrance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv_crtc_set_digital_vibrance(%struct.drm_crtc* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_crtc*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.nv04_crtc_reg*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %9 = call %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc* %8)
  store %struct.nouveau_crtc* %9, %struct.nouveau_crtc** %5, align 8
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %11 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %6, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %14 = call %struct.TYPE_4__* @nv04_display(%struct.drm_device* %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %16, align 8
  %18 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %5, align 8
  %19 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %17, i64 %20
  store %struct.nv04_crtc_reg* %21, %struct.nv04_crtc_reg** %7, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %5, align 8
  %24 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %7, align 8
  %26 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @NV_CIO_CRE_CSB, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  store i32 %22, i32* %29, align 4
  %30 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %5, align 8
  %31 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %2
  %35 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %36 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %35, i32 0, i32 0
  %37 = load %struct.drm_device*, %struct.drm_device** %36, align 8
  %38 = call i64 @nv_gf4_disp_arch(%struct.drm_device* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %34
  %41 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %7, align 8
  %42 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @NV_CIO_CRE_CSB, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32 128, i32* %45, align 4
  %46 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %5, align 8
  %47 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = shl i32 %48, 2
  %50 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %7, align 8
  %51 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @NV_CIO_CRE_5B, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32 %49, i32* %54, align 4
  %55 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %56 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %7, align 8
  %57 = load i64, i64* @NV_CIO_CRE_5B, align 8
  %58 = call i32 @crtc_wr_cio_state(%struct.drm_crtc* %55, %struct.nv04_crtc_reg* %56, i64 %57)
  br label %59

59:                                               ; preds = %40, %34, %2
  %60 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %61 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %7, align 8
  %62 = load i64, i64* @NV_CIO_CRE_CSB, align 8
  %63 = call i32 @crtc_wr_cio_state(%struct.drm_crtc* %60, %struct.nv04_crtc_reg* %61, i64 %62)
  ret void
}

declare dso_local %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.TYPE_4__* @nv04_display(%struct.drm_device*) #1

declare dso_local i64 @nv_gf4_disp_arch(%struct.drm_device*) #1

declare dso_local i32 @crtc_wr_cio_state(%struct.drm_crtc*, %struct.nv04_crtc_reg*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
