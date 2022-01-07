; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_plane.c_atmel_hlcdc_plane_update_clut.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_plane.c_atmel_hlcdc_plane_update_clut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_hlcdc_plane = type { i32 }
%struct.atmel_hlcdc_plane_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_crtc* }
%struct.drm_crtc = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.drm_color_lut = type { i32, i32, i32 }

@ATMEL_HLCDC_CLUT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane_state*)* @atmel_hlcdc_plane_update_clut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_hlcdc_plane_update_clut(%struct.atmel_hlcdc_plane* %0, %struct.atmel_hlcdc_plane_state* %1) #0 {
  %3 = alloca %struct.atmel_hlcdc_plane*, align 8
  %4 = alloca %struct.atmel_hlcdc_plane_state*, align 8
  %5 = alloca %struct.drm_crtc*, align 8
  %6 = alloca %struct.drm_color_lut*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.atmel_hlcdc_plane* %0, %struct.atmel_hlcdc_plane** %3, align 8
  store %struct.atmel_hlcdc_plane_state* %1, %struct.atmel_hlcdc_plane_state** %4, align 8
  %9 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %4, align 8
  %10 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %11, align 8
  store %struct.drm_crtc* %12, %struct.drm_crtc** %5, align 8
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %14 = icmp ne %struct.drm_crtc* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %17 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %2
  br label %75

21:                                               ; preds = %15
  %22 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %23 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %30 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = icmp ne %struct.TYPE_5__* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %28, %21
  br label %75

36:                                               ; preds = %28
  %37 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %38 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.drm_color_lut*
  store %struct.drm_color_lut* %44, %struct.drm_color_lut** %6, align 8
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %70, %36
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @ATMEL_HLCDC_CLUT_SIZE, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %75

49:                                               ; preds = %45
  %50 = load %struct.drm_color_lut*, %struct.drm_color_lut** %6, align 8
  %51 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 8
  %54 = and i32 %53, 16711680
  %55 = load %struct.drm_color_lut*, %struct.drm_color_lut** %6, align 8
  %56 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 65280
  %59 = or i32 %54, %58
  %60 = load %struct.drm_color_lut*, %struct.drm_color_lut** %6, align 8
  %61 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = ashr i32 %62, 8
  %64 = or i32 %59, %63
  store i32 %64, i32* %8, align 4
  %65 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %3, align 8
  %66 = getelementptr inbounds %struct.atmel_hlcdc_plane, %struct.atmel_hlcdc_plane* %65, i32 0, i32 0
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @atmel_hlcdc_layer_write_clut(i32* %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %49
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  %73 = load %struct.drm_color_lut*, %struct.drm_color_lut** %6, align 8
  %74 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %73, i32 1
  store %struct.drm_color_lut* %74, %struct.drm_color_lut** %6, align 8
  br label %45

75:                                               ; preds = %20, %35, %45
  ret void
}

declare dso_local i32 @atmel_hlcdc_layer_write_clut(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
