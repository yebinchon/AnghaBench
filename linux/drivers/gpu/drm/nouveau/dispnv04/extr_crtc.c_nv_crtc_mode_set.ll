; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_crtc.c_nv_crtc_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_crtc.c_nv_crtc_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.drm_framebuffer = type { i32 }
%struct.nouveau_crtc = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"CTRC mode on CRTC %d:\0A\00", align 1
@NV_DEVICE_INFO_V0_CURIE = common dso_local global i64 0, align 8
@NV_PRAMDAC_SEL_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_display_mode*, %struct.drm_display_mode*, i32, i32, %struct.drm_framebuffer*)* @nv_crtc_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv_crtc_mode_set(%struct.drm_crtc* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2, i32 %3, i32 %4, %struct.drm_framebuffer* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_crtc*, align 8
  %9 = alloca %struct.drm_display_mode*, align 8
  %10 = alloca %struct.drm_display_mode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.drm_framebuffer*, align 8
  %14 = alloca %struct.drm_device*, align 8
  %15 = alloca %struct.nouveau_crtc*, align 8
  %16 = alloca %struct.nouveau_drm*, align 8
  %17 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %8, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %9, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.drm_framebuffer* %5, %struct.drm_framebuffer** %13, align 8
  %18 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %19 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %18, i32 0, i32 0
  %20 = load %struct.drm_device*, %struct.drm_device** %19, align 8
  store %struct.drm_device* %20, %struct.drm_device** %14, align 8
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %22 = call %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc* %21)
  store %struct.nouveau_crtc* %22, %struct.nouveau_crtc** %15, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  %24 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %23)
  store %struct.nouveau_drm* %24, %struct.nouveau_drm** %16, align 8
  %25 = load %struct.nouveau_drm*, %struct.nouveau_drm** %16, align 8
  %26 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %15, align 8
  %27 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @NV_DEBUG(%struct.nouveau_drm* %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %31 = call i32 @drm_mode_debug_printmodeline(%struct.drm_display_mode* %30)
  %32 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %33 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %13, align 8
  %34 = call i32 @nv_crtc_swap_fbs(%struct.drm_crtc* %32, %struct.drm_framebuffer* %33)
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* %17, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %6
  %38 = load i32, i32* %17, align 4
  store i32 %38, i32* %7, align 4
  br label %75

39:                                               ; preds = %6
  %40 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  %41 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %15, align 8
  %42 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @nv_lock_vga_crtc_shadow(%struct.drm_device* %40, i32 %43, i32 -1)
  %45 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %46 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %47 = call i32 @nv_crtc_mode_set_vga(%struct.drm_crtc* %45, %struct.drm_display_mode* %46)
  %48 = load %struct.nouveau_drm*, %struct.nouveau_drm** %16, align 8
  %49 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @NV_DEVICE_INFO_V0_CURIE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %39
  %57 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  %58 = load i32, i32* @NV_PRAMDAC_SEL_CLK, align 4
  %59 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  %60 = call %struct.TYPE_10__* @nv04_display(%struct.drm_device* %59)
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @NVWriteRAMDAC(%struct.drm_device* %57, i32 0, i32 %58, i32 %63)
  br label %65

65:                                               ; preds = %56, %39
  %66 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %67 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %68 = call i32 @nv_crtc_mode_set_regs(%struct.drm_crtc* %66, %struct.drm_display_mode* %67)
  %69 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %70 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %71 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %72 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @nv_crtc_calc_state_ext(%struct.drm_crtc* %69, %struct.drm_display_mode* %70, i32 %73)
  store i32 0, i32* %7, align 4
  br label %75

75:                                               ; preds = %65, %37
  %76 = load i32, i32* %7, align 4
  ret i32 %76
}

declare dso_local %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @NV_DEBUG(%struct.nouveau_drm*, i8*, i32) #1

declare dso_local i32 @drm_mode_debug_printmodeline(%struct.drm_display_mode*) #1

declare dso_local i32 @nv_crtc_swap_fbs(%struct.drm_crtc*, %struct.drm_framebuffer*) #1

declare dso_local i32 @nv_lock_vga_crtc_shadow(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @nv_crtc_mode_set_vga(%struct.drm_crtc*, %struct.drm_display_mode*) #1

declare dso_local i32 @NVWriteRAMDAC(%struct.drm_device*, i32, i32, i32) #1

declare dso_local %struct.TYPE_10__* @nv04_display(%struct.drm_device*) #1

declare dso_local i32 @nv_crtc_mode_set_regs(%struct.drm_crtc*, %struct.drm_display_mode*) #1

declare dso_local i32 @nv_crtc_calc_state_ext(%struct.drm_crtc*, %struct.drm_display_mode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
