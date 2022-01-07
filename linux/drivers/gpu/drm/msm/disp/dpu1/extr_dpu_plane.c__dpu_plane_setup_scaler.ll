; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_plane.c__dpu_plane_setup_scaler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_plane.c__dpu_plane_setup_scaler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_plane = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.dpu_plane_state = type { i32 }
%struct.dpu_format = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_format_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_plane*, %struct.dpu_plane_state*, %struct.dpu_format*, i32)* @_dpu_plane_setup_scaler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_dpu_plane_setup_scaler(%struct.dpu_plane* %0, %struct.dpu_plane_state* %1, %struct.dpu_format* %2, i32 %3) #0 {
  %5 = alloca %struct.dpu_plane*, align 8
  %6 = alloca %struct.dpu_plane_state*, align 8
  %7 = alloca %struct.dpu_format*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_format_info*, align 8
  store %struct.dpu_plane* %0, %struct.dpu_plane** %5, align 8
  store %struct.dpu_plane_state* %1, %struct.dpu_plane_state** %6, align 8
  store %struct.dpu_format* %2, %struct.dpu_format** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.dpu_format*, %struct.dpu_format** %7, align 8
  %11 = getelementptr inbounds %struct.dpu_format, %struct.dpu_format* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.drm_format_info* @drm_format_info(i32 %13)
  store %struct.drm_format_info* %14, %struct.drm_format_info** %9, align 8
  %15 = load %struct.dpu_plane*, %struct.dpu_plane** %5, align 8
  %16 = load %struct.dpu_plane_state*, %struct.dpu_plane_state** %6, align 8
  %17 = load %struct.dpu_plane*, %struct.dpu_plane** %5, align 8
  %18 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = call i32 @drm_rect_width(i32* %19)
  %21 = load %struct.dpu_plane*, %struct.dpu_plane** %5, align 8
  %22 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = call i32 @drm_rect_height(i32* %23)
  %25 = load %struct.dpu_plane*, %struct.dpu_plane** %5, align 8
  %26 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = call i32 @drm_rect_width(i32* %27)
  %29 = load %struct.dpu_plane*, %struct.dpu_plane** %5, align 8
  %30 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @drm_rect_height(i32* %31)
  %33 = load %struct.dpu_plane_state*, %struct.dpu_plane_state** %6, align 8
  %34 = getelementptr inbounds %struct.dpu_plane_state, %struct.dpu_plane_state* %33, i32 0, i32 0
  %35 = load %struct.dpu_format*, %struct.dpu_format** %7, align 8
  %36 = load %struct.drm_format_info*, %struct.drm_format_info** %9, align 8
  %37 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.drm_format_info*, %struct.drm_format_info** %9, align 8
  %40 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @_dpu_plane_setup_scaler3(%struct.dpu_plane* %15, %struct.dpu_plane_state* %16, i32 %20, i32 %24, i32 %28, i32 %32, i32* %34, %struct.dpu_format* %35, i32 %38, i32 %41)
  ret void
}

declare dso_local %struct.drm_format_info* @drm_format_info(i32) #1

declare dso_local i32 @_dpu_plane_setup_scaler3(%struct.dpu_plane*, %struct.dpu_plane_state*, i32, i32, i32, i32, i32*, %struct.dpu_format*, i32, i32) #1

declare dso_local i32 @drm_rect_width(i32*) #1

declare dso_local i32 @drm_rect_height(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
