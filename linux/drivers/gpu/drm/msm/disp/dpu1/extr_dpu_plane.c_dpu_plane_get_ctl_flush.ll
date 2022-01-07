; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_plane.c_dpu_plane_get_ctl_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_plane.c_dpu_plane_get_ctl_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.dpu_hw_ctl = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.dpu_hw_ctl.0*, i32)* }
%struct.dpu_hw_ctl.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpu_plane_get_ctl_flush(%struct.drm_plane* %0, %struct.dpu_hw_ctl* %1, i32* %2) #0 {
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.dpu_hw_ctl*, align 8
  %6 = alloca i32*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %4, align 8
  store %struct.dpu_hw_ctl* %1, %struct.dpu_hw_ctl** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %5, align 8
  %8 = getelementptr inbounds %struct.dpu_hw_ctl, %struct.dpu_hw_ctl* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (%struct.dpu_hw_ctl.0*, i32)*, i32 (%struct.dpu_hw_ctl.0*, i32)** %9, align 8
  %11 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %5, align 8
  %12 = bitcast %struct.dpu_hw_ctl* %11 to %struct.dpu_hw_ctl.0*
  %13 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %14 = call i32 @dpu_plane_pipe(%struct.drm_plane* %13)
  %15 = call i32 %10(%struct.dpu_hw_ctl.0* %12, i32 %14)
  %16 = load i32*, i32** %6, align 8
  store i32 %15, i32* %16, align 4
  ret void
}

declare dso_local i32 @dpu_plane_pipe(%struct.drm_plane*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
