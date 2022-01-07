; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_set_sig_umr_segment.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_set_sig_umr_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_wqe_umr_ctrl_seg = type { i32, i32, i8*, i8* }

@MLX5_FLAGS_INLINE = common dso_local global i32 0, align 4
@MLX5_FLAGS_CHECK_FREE = common dso_local global i32 0, align 4
@MLX5_MKEY_BSF_OCTO_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_wqe_umr_ctrl_seg*, i32)* @set_sig_umr_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_sig_umr_segment(%struct.mlx5_wqe_umr_ctrl_seg* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5_wqe_umr_ctrl_seg*, align 8
  %4 = alloca i32, align 4
  store %struct.mlx5_wqe_umr_ctrl_seg* %0, %struct.mlx5_wqe_umr_ctrl_seg** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %3, align 8
  %6 = call i32 @memset(%struct.mlx5_wqe_umr_ctrl_seg* %5, i32 0, i32 24)
  %7 = load i32, i32* @MLX5_FLAGS_INLINE, align 4
  %8 = load i32, i32* @MLX5_FLAGS_CHECK_FREE, align 4
  %9 = or i32 %7, %8
  %10 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %3, align 8
  %11 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @get_xlt_octo(i32 %12)
  %14 = call i8* @cpu_to_be16(i32 %13)
  %15 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %3, align 8
  %16 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg* %15, i32 0, i32 3
  store i8* %14, i8** %16, align 8
  %17 = load i32, i32* @MLX5_MKEY_BSF_OCTO_SIZE, align 4
  %18 = call i8* @cpu_to_be16(i32 %17)
  %19 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %3, align 8
  %20 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  %21 = call i32 (...) @sig_mkey_mask()
  %22 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %3, align 8
  %23 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  ret void
}

declare dso_local i32 @memset(%struct.mlx5_wqe_umr_ctrl_seg*, i32, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @get_xlt_octo(i32) #1

declare dso_local i32 @sig_mkey_mask(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
