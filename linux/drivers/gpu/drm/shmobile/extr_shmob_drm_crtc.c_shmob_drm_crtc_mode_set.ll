; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/shmobile/extr_shmob_drm_crtc.c_shmob_drm_crtc_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/shmobile/extr_shmob_drm_crtc.c_shmob_drm_crtc_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_8__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.shmob_drm_device* }
%struct.shmob_drm_device = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.drm_framebuffer = type { i32 }
%struct.shmob_drm_crtc = type { i32, %struct.shmob_drm_format_info* }
%struct.shmob_drm_format_info = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"mode_set: unsupported format %08x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_display_mode*, %struct.drm_display_mode*, i32, i32, %struct.drm_framebuffer*)* @shmob_drm_crtc_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shmob_drm_crtc_mode_set(%struct.drm_crtc* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2, i32 %3, i32 %4, %struct.drm_framebuffer* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_crtc*, align 8
  %9 = alloca %struct.drm_display_mode*, align 8
  %10 = alloca %struct.drm_display_mode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.drm_framebuffer*, align 8
  %14 = alloca %struct.shmob_drm_crtc*, align 8
  %15 = alloca %struct.shmob_drm_device*, align 8
  %16 = alloca %struct.shmob_drm_format_info*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %8, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %9, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.drm_framebuffer* %5, %struct.drm_framebuffer** %13, align 8
  %17 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %18 = call %struct.shmob_drm_crtc* @to_shmob_crtc(%struct.drm_crtc* %17)
  store %struct.shmob_drm_crtc* %18, %struct.shmob_drm_crtc** %14, align 8
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %20 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %22, align 8
  store %struct.shmob_drm_device* %23, %struct.shmob_drm_device** %15, align 8
  %24 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %25 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.shmob_drm_format_info* @shmob_drm_format_info(i32 %32)
  store %struct.shmob_drm_format_info* %33, %struct.shmob_drm_format_info** %16, align 8
  %34 = load %struct.shmob_drm_format_info*, %struct.shmob_drm_format_info** %16, align 8
  %35 = icmp eq %struct.shmob_drm_format_info* %34, null
  br i1 %35, label %36, label %52

36:                                               ; preds = %6
  %37 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %15, align 8
  %38 = getelementptr inbounds %struct.shmob_drm_device, %struct.shmob_drm_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %41 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_dbg(i32 %39, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  br label %71

52:                                               ; preds = %6
  %53 = load %struct.shmob_drm_format_info*, %struct.shmob_drm_format_info** %16, align 8
  %54 = load %struct.shmob_drm_crtc*, %struct.shmob_drm_crtc** %14, align 8
  %55 = getelementptr inbounds %struct.shmob_drm_crtc, %struct.shmob_drm_crtc* %54, i32 0, i32 1
  store %struct.shmob_drm_format_info* %53, %struct.shmob_drm_format_info** %55, align 8
  %56 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %57 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.shmob_drm_crtc*, %struct.shmob_drm_crtc** %14, align 8
  %66 = getelementptr inbounds %struct.shmob_drm_crtc, %struct.shmob_drm_crtc* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.shmob_drm_crtc*, %struct.shmob_drm_crtc** %14, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @shmob_drm_crtc_compute_base(%struct.shmob_drm_crtc* %67, i32 %68, i32 %69)
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %52, %36
  %72 = load i32, i32* %7, align 4
  ret i32 %72
}

declare dso_local %struct.shmob_drm_crtc* @to_shmob_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.shmob_drm_format_info* @shmob_drm_format_info(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @shmob_drm_crtc_compute_base(%struct.shmob_drm_crtc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
