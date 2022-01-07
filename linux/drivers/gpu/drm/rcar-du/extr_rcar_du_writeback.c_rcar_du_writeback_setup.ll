; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_writeback.c_rcar_du_writeback_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_writeback.c_rcar_du_writeback_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_du_crtc = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.drm_connector_state* }
%struct.drm_connector_state = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.rcar_du_wb_job*, %struct.drm_framebuffer* }
%struct.rcar_du_wb_job = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.drm_framebuffer = type { i64*, i32* }
%struct.vsp1_du_writeback_config = type { i64*, i32, i32 }
%struct.rcar_du_wb_conn_state = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rcar_du_writeback_setup(%struct.rcar_du_crtc* %0, %struct.vsp1_du_writeback_config* %1) #0 {
  %3 = alloca %struct.rcar_du_crtc*, align 8
  %4 = alloca %struct.vsp1_du_writeback_config*, align 8
  %5 = alloca %struct.rcar_du_wb_conn_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.rcar_du_wb_job*, align 8
  %8 = alloca %struct.drm_framebuffer*, align 8
  %9 = alloca i32, align 4
  store %struct.rcar_du_crtc* %0, %struct.rcar_du_crtc** %3, align 8
  store %struct.vsp1_du_writeback_config* %1, %struct.vsp1_du_writeback_config** %4, align 8
  %10 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %3, align 8
  %11 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.drm_connector_state*, %struct.drm_connector_state** %13, align 8
  store %struct.drm_connector_state* %14, %struct.drm_connector_state** %6, align 8
  %15 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %16 = icmp ne %struct.drm_connector_state* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %19 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = icmp ne %struct.TYPE_7__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %2
  br label %90

23:                                               ; preds = %17
  %24 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %25 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %27, align 8
  store %struct.drm_framebuffer* %28, %struct.drm_framebuffer** %8, align 8
  %29 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %30 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.rcar_du_wb_job*, %struct.rcar_du_wb_job** %32, align 8
  store %struct.rcar_du_wb_job* %33, %struct.rcar_du_wb_job** %7, align 8
  %34 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %35 = call %struct.rcar_du_wb_conn_state* @to_rcar_wb_conn_state(%struct.drm_connector_state* %34)
  store %struct.rcar_du_wb_conn_state* %35, %struct.rcar_du_wb_conn_state** %5, align 8
  %36 = load %struct.rcar_du_wb_conn_state*, %struct.rcar_du_wb_conn_state** %5, align 8
  %37 = getelementptr inbounds %struct.rcar_du_wb_conn_state, %struct.rcar_du_wb_conn_state* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.vsp1_du_writeback_config*, %struct.vsp1_du_writeback_config** %4, align 8
  %42 = getelementptr inbounds %struct.vsp1_du_writeback_config, %struct.vsp1_du_writeback_config* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %44 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.vsp1_du_writeback_config*, %struct.vsp1_du_writeback_config** %4, align 8
  %49 = getelementptr inbounds %struct.vsp1_du_writeback_config, %struct.vsp1_du_writeback_config* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %82, %23
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.rcar_du_wb_conn_state*, %struct.rcar_du_wb_conn_state** %5, align 8
  %53 = getelementptr inbounds %struct.rcar_du_wb_conn_state, %struct.rcar_du_wb_conn_state* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ult i32 %51, %56
  br i1 %57, label %58, label %85

58:                                               ; preds = %50
  %59 = load %struct.rcar_du_wb_job*, %struct.rcar_du_wb_job** %7, align 8
  %60 = getelementptr inbounds %struct.rcar_du_wb_job, %struct.rcar_du_wb_job* %59, i32 0, i32 0
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @sg_dma_address(i32 %66)
  %68 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %69 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %67, %74
  %76 = load %struct.vsp1_du_writeback_config*, %struct.vsp1_du_writeback_config** %4, align 8
  %77 = getelementptr inbounds %struct.vsp1_du_writeback_config, %struct.vsp1_du_writeback_config* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  store i64 %75, i64* %81, align 8
  br label %82

82:                                               ; preds = %58
  %83 = load i32, i32* %9, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %50

85:                                               ; preds = %50
  %86 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %3, align 8
  %87 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %86, i32 0, i32 0
  %88 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %89 = call i32 @drm_writeback_queue_job(%struct.TYPE_10__* %87, %struct.drm_connector_state* %88)
  br label %90

90:                                               ; preds = %85, %22
  ret void
}

declare dso_local %struct.rcar_du_wb_conn_state* @to_rcar_wb_conn_state(%struct.drm_connector_state*) #1

declare dso_local i64 @sg_dma_address(i32) #1

declare dso_local i32 @drm_writeback_queue_job(%struct.TYPE_10__*, %struct.drm_connector_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
