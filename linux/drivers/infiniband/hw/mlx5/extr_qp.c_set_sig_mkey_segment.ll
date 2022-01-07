; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_set_sig_mkey_segment.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_set_sig_mkey_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_mkey_seg = type { i32, i8*, i8*, i32, i8*, i8* }
%struct.ib_mr = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@MLX5_MKC_ACCESS_MODE_KLMS = common dso_local global i32 0, align 4
@MLX5_MKEY_REMOTE_INVAL = common dso_local global i32 0, align 4
@MLX5_MKEY_BSF_EN = common dso_local global i32 0, align 4
@MLX5_MKEY_BSF_OCTO_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_mkey_seg*, %struct.ib_mr*, i32, i32, i32, i32)* @set_sig_mkey_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_sig_mkey_segment(%struct.mlx5_mkey_seg* %0, %struct.ib_mr* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.mlx5_mkey_seg*, align 8
  %8 = alloca %struct.ib_mr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mlx5_mkey_seg* %0, %struct.mlx5_mkey_seg** %7, align 8
  store %struct.ib_mr* %1, %struct.ib_mr** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load %struct.ib_mr*, %struct.ib_mr** %8, align 8
  %16 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %13, align 4
  %18 = load %struct.ib_mr*, %struct.ib_mr** %8, align 8
  %19 = call %struct.TYPE_4__* @to_mmr(%struct.ib_mr* %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 1
  store i32 %24, i32* %14, align 4
  %25 = load %struct.mlx5_mkey_seg*, %struct.mlx5_mkey_seg** %7, align 8
  %26 = call i32 @memset(%struct.mlx5_mkey_seg* %25, i32 0, i32 48)
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @get_umr_flags(i32 %27)
  %29 = load i32, i32* @MLX5_MKC_ACCESS_MODE_KLMS, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.mlx5_mkey_seg*, %struct.mlx5_mkey_seg** %7, align 8
  %32 = getelementptr inbounds %struct.mlx5_mkey_seg, %struct.mlx5_mkey_seg* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %13, align 4
  %34 = and i32 %33, 255
  %35 = or i32 %34, -256
  %36 = call i8* @cpu_to_be32(i32 %35)
  %37 = load %struct.mlx5_mkey_seg*, %struct.mlx5_mkey_seg** %7, align 8
  %38 = getelementptr inbounds %struct.mlx5_mkey_seg, %struct.mlx5_mkey_seg* %37, i32 0, i32 5
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* @MLX5_MKEY_REMOTE_INVAL, align 4
  %40 = load i32, i32* %14, align 4
  %41 = shl i32 %40, 26
  %42 = or i32 %39, %41
  %43 = load i32, i32* @MLX5_MKEY_BSF_EN, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %12, align 4
  %46 = or i32 %44, %45
  %47 = call i8* @cpu_to_be32(i32 %46)
  %48 = load %struct.mlx5_mkey_seg*, %struct.mlx5_mkey_seg** %7, align 8
  %49 = getelementptr inbounds %struct.mlx5_mkey_seg, %struct.mlx5_mkey_seg* %48, i32 0, i32 4
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @cpu_to_be64(i32 %50)
  %52 = load %struct.mlx5_mkey_seg*, %struct.mlx5_mkey_seg** %7, align 8
  %53 = getelementptr inbounds %struct.mlx5_mkey_seg, %struct.mlx5_mkey_seg* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @get_xlt_octo(i32 %54)
  %56 = call i8* @cpu_to_be32(i32 %55)
  %57 = load %struct.mlx5_mkey_seg*, %struct.mlx5_mkey_seg** %7, align 8
  %58 = getelementptr inbounds %struct.mlx5_mkey_seg, %struct.mlx5_mkey_seg* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* @MLX5_MKEY_BSF_OCTO_SIZE, align 4
  %60 = call i8* @cpu_to_be32(i32 %59)
  %61 = load %struct.mlx5_mkey_seg*, %struct.mlx5_mkey_seg** %7, align 8
  %62 = getelementptr inbounds %struct.mlx5_mkey_seg, %struct.mlx5_mkey_seg* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  ret void
}

declare dso_local %struct.TYPE_4__* @to_mmr(%struct.ib_mr*) #1

declare dso_local i32 @memset(%struct.mlx5_mkey_seg*, i32, i32) #1

declare dso_local i32 @get_umr_flags(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @get_xlt_octo(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
