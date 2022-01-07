; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_crtc.c_omap_crtc_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_crtc.c_omap_crtc_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.omap_drm_private* }
%struct.omap_drm_private = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (i32, i32, %struct.videomode*)* }
%struct.videomode = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32 }
%struct.omap_crtc = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@OMAP_DISPLAY_TYPE_DSI = common dso_local global i64 0, align 8
@MODE_BAD = common dso_local global i32 0, align 4
@MODE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_display_mode*)* @omap_crtc_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_crtc_mode_valid(%struct.drm_crtc* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.omap_drm_private*, align 8
  %7 = alloca %struct.omap_crtc*, align 8
  %8 = alloca %struct.videomode, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %13 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.omap_drm_private*, %struct.omap_drm_private** %15, align 8
  store %struct.omap_drm_private* %16, %struct.omap_drm_private** %6, align 8
  %17 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %18 = call %struct.omap_crtc* @to_omap_crtc(%struct.drm_crtc* %17)
  store %struct.omap_crtc* %18, %struct.omap_crtc** %7, align 8
  %19 = bitcast %struct.videomode* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 4, i1 false)
  %20 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %21 = call i32 @drm_display_mode_to_videomode(%struct.drm_display_mode* %20, %struct.videomode* %8)
  %22 = load %struct.omap_crtc*, %struct.omap_crtc** %7, align 8
  %23 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %22, i32 0, i32 1
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = icmp eq %struct.TYPE_7__* %28, null
  br i1 %29, label %42, label %30

30:                                               ; preds = %2
  %31 = load %struct.omap_crtc*, %struct.omap_crtc** %7, align 8
  %32 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %31, i32 0, i32 1
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @OMAP_DISPLAY_TYPE_DSI, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %30, %2
  %43 = load %struct.omap_drm_private*, %struct.omap_drm_private** %6, align 8
  %44 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %43, i32 0, i32 2
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32 (i32, i32, %struct.videomode*)*, i32 (i32, i32, %struct.videomode*)** %46, align 8
  %48 = load %struct.omap_drm_private*, %struct.omap_drm_private** %6, align 8
  %49 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.omap_crtc*, %struct.omap_crtc** %7, align 8
  %52 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 %47(i32 %50, i32 %53, %struct.videomode* %8)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %42
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %3, align 4
  br label %100

59:                                               ; preds = %42
  br label %60

60:                                               ; preds = %59, %30
  %61 = load %struct.omap_drm_private*, %struct.omap_drm_private** %6, align 8
  %62 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %98

65:                                               ; preds = %60
  %66 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %67 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %68, 1000
  store i32 %69, i32* %10, align 4
  store i32 4, i32* %11, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %72 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = mul i32 %70, %73
  %75 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %76 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = mul i32 %74, %77
  %79 = load i32, i32* %11, align 4
  %80 = mul i32 %78, %79
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %83 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %86 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = mul nsw i32 %84, %87
  %89 = call i32 @div_u64(i32 %81, i32 %88)
  store i32 %89, i32* %10, align 4
  %90 = load %struct.omap_drm_private*, %struct.omap_drm_private** %6, align 8
  %91 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = icmp ult i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %65
  %96 = load i32, i32* @MODE_BAD, align 4
  store i32 %96, i32* %3, align 4
  br label %100

97:                                               ; preds = %65
  br label %98

98:                                               ; preds = %97, %60
  %99 = load i32, i32* @MODE_OK, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %98, %95, %57
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local %struct.omap_crtc* @to_omap_crtc(%struct.drm_crtc*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @drm_display_mode_to_videomode(%struct.drm_display_mode*, %struct.videomode*) #1

declare dso_local i32 @div_u64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
