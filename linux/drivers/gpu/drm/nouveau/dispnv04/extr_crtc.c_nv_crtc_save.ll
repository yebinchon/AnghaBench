; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_crtc.c_nv_crtc_save.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_crtc.c_nv_crtc_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.nouveau_crtc = type { i64 }
%struct.nv04_mode_state = type { i32, i32, %struct.nv04_crtc_reg* }
%struct.nv04_crtc_reg = type { i32, i32* }
%struct.TYPE_2__ = type { %struct.nv04_mode_state, %struct.nv04_mode_state }

@NV_CIO_CRE_LCD__INDEX = common dso_local global i64 0, align 8
@PLLSEL_VPLL1_MASK = common dso_local global i32 0, align 4
@PLLSEL_VPLL2_MASK = common dso_local global i32 0, align 4
@PLLSEL_TV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @nv_crtc_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv_crtc_save(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.nouveau_crtc*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.nv04_mode_state*, align 8
  %6 = alloca %struct.nv04_crtc_reg*, align 8
  %7 = alloca %struct.nv04_mode_state*, align 8
  %8 = alloca %struct.nv04_crtc_reg*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %10 = call %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc* %9)
  store %struct.nouveau_crtc* %10, %struct.nouveau_crtc** %3, align 8
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %12 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %11, i32 0, i32 0
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %4, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %15 = call %struct.TYPE_2__* @nv04_display(%struct.drm_device* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store %struct.nv04_mode_state* %16, %struct.nv04_mode_state** %5, align 8
  %17 = load %struct.nv04_mode_state*, %struct.nv04_mode_state** %5, align 8
  %18 = getelementptr inbounds %struct.nv04_mode_state, %struct.nv04_mode_state* %17, i32 0, i32 2
  %19 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %18, align 8
  %20 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %21 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %19, i64 %22
  store %struct.nv04_crtc_reg* %23, %struct.nv04_crtc_reg** %6, align 8
  %24 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %25 = call %struct.TYPE_2__* @nv04_display(%struct.drm_device* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store %struct.nv04_mode_state* %26, %struct.nv04_mode_state** %7, align 8
  %27 = load %struct.nv04_mode_state*, %struct.nv04_mode_state** %7, align 8
  %28 = getelementptr inbounds %struct.nv04_mode_state, %struct.nv04_mode_state* %27, i32 0, i32 2
  %29 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %28, align 8
  %30 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %31 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %29, i64 %32
  store %struct.nv04_crtc_reg* %33, %struct.nv04_crtc_reg** %8, align 8
  %34 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %35 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %34, i32 0, i32 0
  %36 = load %struct.drm_device*, %struct.drm_device** %35, align 8
  %37 = call i64 @nv_two_heads(%struct.drm_device* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %1
  %40 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %41 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %40, i32 0, i32 0
  %42 = load %struct.drm_device*, %struct.drm_device** %41, align 8
  %43 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %44 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @NVSetOwner(%struct.drm_device* %42, i64 %45)
  br label %47

47:                                               ; preds = %39, %1
  %48 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %49 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %48, i32 0, i32 0
  %50 = load %struct.drm_device*, %struct.drm_device** %49, align 8
  %51 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %3, align 8
  %52 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.nv04_mode_state*, %struct.nv04_mode_state** %7, align 8
  %55 = call i32 @nouveau_hw_save_state(%struct.drm_device* %50, i64 %53, %struct.nv04_mode_state* %54)
  %56 = load %struct.nv04_mode_state*, %struct.nv04_mode_state** %7, align 8
  %57 = getelementptr inbounds %struct.nv04_mode_state, %struct.nv04_mode_state* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, -327681
  %60 = load %struct.nv04_mode_state*, %struct.nv04_mode_state** %5, align 8
  %61 = getelementptr inbounds %struct.nv04_mode_state, %struct.nv04_mode_state* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %63 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @NV_CIO_CRE_LCD__INDEX, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %6, align 8
  %69 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* @NV_CIO_CRE_LCD__INDEX, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32 %67, i32* %72, align 4
  %73 = load %struct.nv04_mode_state*, %struct.nv04_mode_state** %7, align 8
  %74 = getelementptr inbounds %struct.nv04_mode_state, %struct.nv04_mode_state* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @PLLSEL_VPLL1_MASK, align 4
  %77 = load i32, i32* @PLLSEL_VPLL2_MASK, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @PLLSEL_TV_MASK, align 4
  %80 = or i32 %78, %79
  %81 = xor i32 %80, -1
  %82 = and i32 %75, %81
  %83 = load %struct.nv04_mode_state*, %struct.nv04_mode_state** %5, align 8
  %84 = getelementptr inbounds %struct.nv04_mode_state, %struct.nv04_mode_state* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %86 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %6, align 8
  %89 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  ret void
}

declare dso_local %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.TYPE_2__* @nv04_display(%struct.drm_device*) #1

declare dso_local i64 @nv_two_heads(%struct.drm_device*) #1

declare dso_local i32 @NVSetOwner(%struct.drm_device*, i64) #1

declare dso_local i32 @nouveau_hw_save_state(%struct.drm_device*, i64, %struct.nv04_mode_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
