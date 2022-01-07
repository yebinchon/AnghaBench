; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_plane.c__dpu_plane_set_ot_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_plane.c__dpu_plane_set_ot_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_crtc = type { i32 }
%struct.dpu_plane = type { %struct.TYPE_6__*, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dpu_vbif_set_ot_params = type { i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.dpu_kms = type { i32 }

@SSPP_NONE = common dso_local global i64 0, align 8
@VBIF_RT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_crtc*)* @_dpu_plane_set_ot_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_dpu_plane_set_ot_limit(%struct.drm_plane* %0, %struct.drm_crtc* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.dpu_plane*, align 8
  %6 = alloca %struct.dpu_vbif_set_ot_params, align 8
  %7 = alloca %struct.dpu_kms*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_crtc* %1, %struct.drm_crtc** %4, align 8
  %8 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %9 = call %struct.dpu_plane* @to_dpu_plane(%struct.drm_plane* %8)
  store %struct.dpu_plane* %9, %struct.dpu_plane** %5, align 8
  %10 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %11 = call %struct.dpu_kms* @_dpu_plane_get_kms(%struct.drm_plane* %10)
  store %struct.dpu_kms* %11, %struct.dpu_kms** %7, align 8
  %12 = call i32 @memset(%struct.dpu_vbif_set_ot_params* %6, i32 0, i32 48)
  %13 = load %struct.dpu_plane*, %struct.dpu_plane** %5, align 8
  %14 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, %struct.dpu_vbif_set_ot_params* %6, i32 0, i32 8
  store i32 %19, i32* %20, align 8
  %21 = load %struct.dpu_plane*, %struct.dpu_plane** %5, align 8
  %22 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SSPP_NONE, align 8
  %27 = sub nsw i64 %25, %26
  %28 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, %struct.dpu_vbif_set_ot_params* %6, i32 0, i32 7
  store i64 %27, i64* %28, align 8
  %29 = load %struct.dpu_plane*, %struct.dpu_plane** %5, align 8
  %30 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @drm_rect_width(i32* %31)
  %33 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, %struct.dpu_vbif_set_ot_params* %6, i32 0, i32 6
  store i32 %32, i32* %33, align 8
  %34 = load %struct.dpu_plane*, %struct.dpu_plane** %5, align 8
  %35 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = call i32 @drm_rect_height(i32* %36)
  %38 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, %struct.dpu_vbif_set_ot_params* %6, i32 0, i32 5
  store i32 %37, i32* %38, align 4
  %39 = load %struct.dpu_plane*, %struct.dpu_plane** %5, align 8
  %40 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, %struct.dpu_vbif_set_ot_params* %6, i32 0, i32 0
  store i32 %44, i32* %45, align 8
  %46 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %47 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %46, i32 0, i32 0
  %48 = call i32 @drm_mode_vrefresh(i32* %47)
  %49 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, %struct.dpu_vbif_set_ot_params* %6, i32 0, i32 4
  store i32 %48, i32* %49, align 8
  %50 = load i32, i32* @VBIF_RT, align 4
  %51 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, %struct.dpu_vbif_set_ot_params* %6, i32 0, i32 3
  store i32 %50, i32* %51, align 4
  %52 = load %struct.dpu_plane*, %struct.dpu_plane** %5, align 8
  %53 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, %struct.dpu_vbif_set_ot_params* %6, i32 0, i32 2
  store i32 %58, i32* %59, align 8
  %60 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, %struct.dpu_vbif_set_ot_params* %6, i32 0, i32 1
  store i32 1, i32* %60, align 4
  %61 = load %struct.dpu_kms*, %struct.dpu_kms** %7, align 8
  %62 = call i32 @dpu_vbif_set_ot_limit(%struct.dpu_kms* %61, %struct.dpu_vbif_set_ot_params* %6)
  ret void
}

declare dso_local %struct.dpu_plane* @to_dpu_plane(%struct.drm_plane*) #1

declare dso_local %struct.dpu_kms* @_dpu_plane_get_kms(%struct.drm_plane*) #1

declare dso_local i32 @memset(%struct.dpu_vbif_set_ot_params*, i32, i32) #1

declare dso_local i32 @drm_rect_width(i32*) #1

declare dso_local i32 @drm_rect_height(i32*) #1

declare dso_local i32 @drm_mode_vrefresh(i32*) #1

declare dso_local i32 @dpu_vbif_set_ot_limit(%struct.dpu_kms*, %struct.dpu_vbif_set_ot_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
