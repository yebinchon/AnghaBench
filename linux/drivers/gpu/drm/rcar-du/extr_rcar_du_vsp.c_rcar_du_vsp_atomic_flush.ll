; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_vsp.c_rcar_du_vsp_atomic_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_vsp.c_rcar_du_vsp_atomic_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_du_crtc = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.vsp1_du_atomic_pipe_config = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.rcar_du_crtc_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rcar_du_vsp_atomic_flush(%struct.rcar_du_crtc* %0) #0 {
  %2 = alloca %struct.rcar_du_crtc*, align 8
  %3 = alloca %struct.vsp1_du_atomic_pipe_config, align 4
  %4 = alloca %struct.rcar_du_crtc_state*, align 8
  store %struct.rcar_du_crtc* %0, %struct.rcar_du_crtc** %2, align 8
  %5 = bitcast %struct.vsp1_du_atomic_pipe_config* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 12, i1 false)
  %6 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %7 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.rcar_du_crtc_state* @to_rcar_crtc_state(i32 %9)
  store %struct.rcar_du_crtc_state* %10, %struct.rcar_du_crtc_state** %4, align 8
  %11 = load %struct.rcar_du_crtc_state*, %struct.rcar_du_crtc_state** %4, align 8
  %12 = getelementptr inbounds %struct.rcar_du_crtc_state, %struct.rcar_du_crtc_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.vsp1_du_atomic_pipe_config, %struct.vsp1_du_atomic_pipe_config* %3, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %16 = getelementptr inbounds %struct.vsp1_du_atomic_pipe_config, %struct.vsp1_du_atomic_pipe_config* %3, i32 0, i32 0
  %17 = call i32 @rcar_du_writeback_setup(%struct.rcar_du_crtc* %15, i32* %16)
  %18 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %19 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %24 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @vsp1_du_atomic_flush(i32 %22, i32 %25, %struct.vsp1_du_atomic_pipe_config* %3)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.rcar_du_crtc_state* @to_rcar_crtc_state(i32) #2

declare dso_local i32 @rcar_du_writeback_setup(%struct.rcar_du_crtc*, i32*) #2

declare dso_local i32 @vsp1_du_atomic_flush(i32, i32, %struct.vsp1_du_atomic_pipe_config*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
