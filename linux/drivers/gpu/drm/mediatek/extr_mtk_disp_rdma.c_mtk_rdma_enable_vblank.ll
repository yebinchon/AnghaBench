; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_disp_rdma.c_mtk_rdma_enable_vblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_disp_rdma.c_mtk_rdma_enable_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_ddp_comp = type { i32 }
%struct.drm_crtc = type { i32 }
%struct.mtk_disp_rdma = type { %struct.drm_crtc* }

@DISP_REG_RDMA_INT_ENABLE = common dso_local global i32 0, align 4
@RDMA_FRAME_END_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_ddp_comp*, %struct.drm_crtc*)* @mtk_rdma_enable_vblank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_rdma_enable_vblank(%struct.mtk_ddp_comp* %0, %struct.drm_crtc* %1) #0 {
  %3 = alloca %struct.mtk_ddp_comp*, align 8
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.mtk_disp_rdma*, align 8
  store %struct.mtk_ddp_comp* %0, %struct.mtk_ddp_comp** %3, align 8
  store %struct.drm_crtc* %1, %struct.drm_crtc** %4, align 8
  %6 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %3, align 8
  %7 = call %struct.mtk_disp_rdma* @comp_to_rdma(%struct.mtk_ddp_comp* %6)
  store %struct.mtk_disp_rdma* %7, %struct.mtk_disp_rdma** %5, align 8
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %9 = load %struct.mtk_disp_rdma*, %struct.mtk_disp_rdma** %5, align 8
  %10 = getelementptr inbounds %struct.mtk_disp_rdma, %struct.mtk_disp_rdma* %9, i32 0, i32 0
  store %struct.drm_crtc* %8, %struct.drm_crtc** %10, align 8
  %11 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %3, align 8
  %12 = load i32, i32* @DISP_REG_RDMA_INT_ENABLE, align 4
  %13 = load i32, i32* @RDMA_FRAME_END_INT, align 4
  %14 = load i32, i32* @RDMA_FRAME_END_INT, align 4
  %15 = call i32 @rdma_update_bits(%struct.mtk_ddp_comp* %11, i32 %12, i32 %13, i32 %14)
  ret void
}

declare dso_local %struct.mtk_disp_rdma* @comp_to_rdma(%struct.mtk_ddp_comp*) #1

declare dso_local i32 @rdma_update_bits(%struct.mtk_ddp_comp*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
