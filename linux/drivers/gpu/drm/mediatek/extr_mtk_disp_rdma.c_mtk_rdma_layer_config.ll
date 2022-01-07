; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_disp_rdma.c_mtk_rdma_layer_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_disp_rdma.c_mtk_rdma_layer_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_ddp_comp = type { i64 }
%struct.mtk_plane_state = type { %struct.mtk_plane_pending_state }
%struct.mtk_plane_pending_state = type { i32, i32, i32 }
%struct.mtk_disp_rdma = type { i32 }

@DISP_RDMA_MEM_CON = common dso_local global i64 0, align 8
@DRM_FORMAT_UYVY = common dso_local global i32 0, align 4
@DRM_FORMAT_YUYV = common dso_local global i32 0, align 4
@DISP_REG_RDMA_SIZE_CON_0 = common dso_local global i32 0, align 4
@RDMA_MATRIX_ENABLE = common dso_local global i32 0, align 4
@RDMA_MATRIX_INT_MTX_SEL = common dso_local global i32 0, align 4
@RDMA_MATRIX_INT_MTX_BT601_to_RGB = common dso_local global i32 0, align 4
@DISP_RDMA_MEM_START_ADDR = common dso_local global i64 0, align 8
@DISP_RDMA_MEM_SRC_PITCH = common dso_local global i64 0, align 8
@RDMA_MEM_GMC = common dso_local global i32 0, align 4
@DISP_RDMA_MEM_GMC_SETTING_0 = common dso_local global i64 0, align 8
@DISP_REG_RDMA_GLOBAL_CON = common dso_local global i32 0, align 4
@RDMA_MODE_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_ddp_comp*, i32, %struct.mtk_plane_state*)* @mtk_rdma_layer_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_rdma_layer_config(%struct.mtk_ddp_comp* %0, i32 %1, %struct.mtk_plane_state* %2) #0 {
  %4 = alloca %struct.mtk_ddp_comp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtk_plane_state*, align 8
  %7 = alloca %struct.mtk_disp_rdma*, align 8
  %8 = alloca %struct.mtk_plane_pending_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mtk_ddp_comp* %0, %struct.mtk_ddp_comp** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mtk_plane_state* %2, %struct.mtk_plane_state** %6, align 8
  %13 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %4, align 8
  %14 = call %struct.mtk_disp_rdma* @comp_to_rdma(%struct.mtk_ddp_comp* %13)
  store %struct.mtk_disp_rdma* %14, %struct.mtk_disp_rdma** %7, align 8
  %15 = load %struct.mtk_plane_state*, %struct.mtk_plane_state** %6, align 8
  %16 = getelementptr inbounds %struct.mtk_plane_state, %struct.mtk_plane_state* %15, i32 0, i32 0
  store %struct.mtk_plane_pending_state* %16, %struct.mtk_plane_pending_state** %8, align 8
  %17 = load %struct.mtk_plane_pending_state*, %struct.mtk_plane_pending_state** %8, align 8
  %18 = getelementptr inbounds %struct.mtk_plane_pending_state, %struct.mtk_plane_pending_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.mtk_plane_pending_state*, %struct.mtk_plane_pending_state** %8, align 8
  %21 = getelementptr inbounds %struct.mtk_plane_pending_state, %struct.mtk_plane_pending_state* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 65535
  store i32 %23, i32* %10, align 4
  %24 = load %struct.mtk_plane_pending_state*, %struct.mtk_plane_pending_state** %8, align 8
  %25 = getelementptr inbounds %struct.mtk_plane_pending_state, %struct.mtk_plane_pending_state* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %11, align 4
  %27 = load %struct.mtk_disp_rdma*, %struct.mtk_disp_rdma** %7, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @rdma_fmt_convert(%struct.mtk_disp_rdma* %27, i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %4, align 8
  %32 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DISP_RDMA_MEM_CON, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel_relaxed(i32 %30, i64 %35)
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @DRM_FORMAT_UYVY, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %3
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @DRM_FORMAT_YUYV, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %40, %3
  %45 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %4, align 8
  %46 = load i32, i32* @DISP_REG_RDMA_SIZE_CON_0, align 4
  %47 = load i32, i32* @RDMA_MATRIX_ENABLE, align 4
  %48 = load i32, i32* @RDMA_MATRIX_ENABLE, align 4
  %49 = call i32 @rdma_update_bits(%struct.mtk_ddp_comp* %45, i32 %46, i32 %47, i32 %48)
  %50 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %4, align 8
  %51 = load i32, i32* @DISP_REG_RDMA_SIZE_CON_0, align 4
  %52 = load i32, i32* @RDMA_MATRIX_INT_MTX_SEL, align 4
  %53 = load i32, i32* @RDMA_MATRIX_INT_MTX_BT601_to_RGB, align 4
  %54 = call i32 @rdma_update_bits(%struct.mtk_ddp_comp* %50, i32 %51, i32 %52, i32 %53)
  br label %60

55:                                               ; preds = %40
  %56 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %4, align 8
  %57 = load i32, i32* @DISP_REG_RDMA_SIZE_CON_0, align 4
  %58 = load i32, i32* @RDMA_MATRIX_ENABLE, align 4
  %59 = call i32 @rdma_update_bits(%struct.mtk_ddp_comp* %56, i32 %57, i32 %58, i32 0)
  br label %60

60:                                               ; preds = %55, %44
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %4, align 8
  %63 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @DISP_RDMA_MEM_START_ADDR, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel_relaxed(i32 %61, i64 %66)
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %4, align 8
  %70 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @DISP_RDMA_MEM_SRC_PITCH, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel_relaxed(i32 %68, i64 %73)
  %75 = load i32, i32* @RDMA_MEM_GMC, align 4
  %76 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %4, align 8
  %77 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @DISP_RDMA_MEM_GMC_SETTING_0, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @writel(i32 %75, i64 %80)
  %82 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %4, align 8
  %83 = load i32, i32* @DISP_REG_RDMA_GLOBAL_CON, align 4
  %84 = load i32, i32* @RDMA_MODE_MEMORY, align 4
  %85 = load i32, i32* @RDMA_MODE_MEMORY, align 4
  %86 = call i32 @rdma_update_bits(%struct.mtk_ddp_comp* %82, i32 %83, i32 %84, i32 %85)
  ret void
}

declare dso_local %struct.mtk_disp_rdma* @comp_to_rdma(%struct.mtk_ddp_comp*) #1

declare dso_local i32 @rdma_fmt_convert(%struct.mtk_disp_rdma*, i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @rdma_update_bits(%struct.mtk_ddp_comp*, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
