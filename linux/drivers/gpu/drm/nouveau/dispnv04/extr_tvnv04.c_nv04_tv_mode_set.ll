; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_tvnv04.c_nv04_tv_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_tvnv04.c_nv04_tv_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32, %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_display_mode = type { i32, i32 }
%struct.nouveau_crtc = type { i64 }
%struct.nv04_crtc_reg = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nv04_crtc_reg* }
%struct.TYPE_6__ = type { i32 (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @nv04_tv_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv04_tv_mode_set(%struct.drm_encoder* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.nouveau_crtc*, align 8
  %9 = alloca %struct.nv04_crtc_reg*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %10 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %11 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %10, i32 0, i32 1
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %7, align 8
  %13 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %14 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.nouveau_crtc* @nouveau_crtc(i32 %15)
  store %struct.nouveau_crtc* %16, %struct.nouveau_crtc** %8, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %18 = call %struct.TYPE_5__* @nv04_display(%struct.drm_device* %17)
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %20, align 8
  %22 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %8, align 8
  %23 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %21, i64 %24
  store %struct.nv04_crtc_reg* %25, %struct.nv04_crtc_reg** %9, align 8
  %26 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %27 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %9, align 8
  %30 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 4
  %31 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %32 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %9, align 8
  %35 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 4
  %36 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %9, align 8
  %37 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %9, align 8
  %39 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  %40 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %9, align 8
  %41 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %40, i32 0, i32 2
  store i32 64, i32* %41, align 4
  %42 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %9, align 8
  %43 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %42, i32 0, i32 3
  store i32 1, i32* %43, align 4
  %44 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %9, align 8
  %45 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %44, i32 0, i32 4
  store i32 1, i32* %45, align 4
  %46 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %47 = call %struct.TYPE_6__* @get_slave_funcs(%struct.drm_encoder* %46)
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32 (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)*, i32 (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)** %48, align 8
  %50 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %51 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %52 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %53 = call i32 %49(%struct.drm_encoder* %50, %struct.drm_display_mode* %51, %struct.drm_display_mode* %52)
  ret void
}

declare dso_local %struct.nouveau_crtc* @nouveau_crtc(i32) #1

declare dso_local %struct.TYPE_5__* @nv04_display(%struct.drm_device*) #1

declare dso_local %struct.TYPE_6__* @get_slave_funcs(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
