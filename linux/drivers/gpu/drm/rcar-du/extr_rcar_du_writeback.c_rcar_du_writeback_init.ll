; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_writeback.c_rcar_du_writeback_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_writeback.c_rcar_du_writeback_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_du_device = type { i32 }
%struct.rcar_du_crtc = type { i32, %struct.drm_writeback_connector }
%struct.drm_writeback_connector = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@rcar_du_wb_conn_helper_funcs = common dso_local global i32 0, align 4
@rcar_du_wb_conn_funcs = common dso_local global i32 0, align 4
@rcar_du_wb_enc_helper_funcs = common dso_local global i32 0, align 4
@writeback_formats = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rcar_du_writeback_init(%struct.rcar_du_device* %0, %struct.rcar_du_crtc* %1) #0 {
  %3 = alloca %struct.rcar_du_device*, align 8
  %4 = alloca %struct.rcar_du_crtc*, align 8
  %5 = alloca %struct.drm_writeback_connector*, align 8
  store %struct.rcar_du_device* %0, %struct.rcar_du_device** %3, align 8
  store %struct.rcar_du_crtc* %1, %struct.rcar_du_crtc** %4, align 8
  %6 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %4, align 8
  %7 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %6, i32 0, i32 1
  store %struct.drm_writeback_connector* %7, %struct.drm_writeback_connector** %5, align 8
  %8 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %4, align 8
  %9 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %8, i32 0, i32 0
  %10 = call i32 @drm_crtc_index(i32* %9)
  %11 = shl i32 1, %10
  %12 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %5, align 8
  %13 = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 4
  %15 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %5, align 8
  %16 = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %15, i32 0, i32 0
  %17 = call i32 @drm_connector_helper_add(i32* %16, i32* @rcar_du_wb_conn_helper_funcs)
  %18 = load %struct.rcar_du_device*, %struct.rcar_du_device** %3, align 8
  %19 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %5, align 8
  %22 = load i32, i32* @writeback_formats, align 4
  %23 = load i32, i32* @writeback_formats, align 4
  %24 = call i32 @ARRAY_SIZE(i32 %23)
  %25 = call i32 @drm_writeback_connector_init(i32 %20, %struct.drm_writeback_connector* %21, i32* @rcar_du_wb_conn_funcs, i32* @rcar_du_wb_enc_helper_funcs, i32 %22, i32 %24)
  ret i32 %25
}

declare dso_local i32 @drm_crtc_index(i32*) #1

declare dso_local i32 @drm_connector_helper_add(i32*, i32*) #1

declare dso_local i32 @drm_writeback_connector_init(i32, %struct.drm_writeback_connector*, i32*, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
