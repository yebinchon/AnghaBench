; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_set_reg_mkey_seg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_set_reg_mkey_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_mkey_seg = type { i32, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.mlx5_ib_mr = type { i32, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@MLX5_MKC_ACCESS_MODE_MTT = common dso_local global i32 0, align 4
@MLX5_MKC_ACCESS_MODE_KLMS = common dso_local global i32 0, align 4
@MLX5_MKEY_REMOTE_INVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_mkey_seg*, %struct.mlx5_ib_mr*, i32, i32)* @set_reg_mkey_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_reg_mkey_seg(%struct.mlx5_mkey_seg* %0, %struct.mlx5_ib_mr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mlx5_mkey_seg*, align 8
  %6 = alloca %struct.mlx5_ib_mr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlx5_mkey_seg* %0, %struct.mlx5_mkey_seg** %5, align 8
  store %struct.mlx5_ib_mr* %1, %struct.mlx5_ib_mr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %6, align 8
  %11 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %6, align 8
  %15 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %13, %16
  %18 = call i32 @ALIGN(i64 %17, i32 8)
  %19 = ashr i32 %18, 1
  store i32 %19, i32* %9, align 4
  %20 = load %struct.mlx5_mkey_seg*, %struct.mlx5_mkey_seg** %5, align 8
  %21 = call i32 @memset(%struct.mlx5_mkey_seg* %20, i32 0, i32 56)
  %22 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %6, align 8
  %23 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @MLX5_MKC_ACCESS_MODE_MTT, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %4
  %28 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %6, align 8
  %29 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ilog2(i32 %31)
  %33 = load %struct.mlx5_mkey_seg*, %struct.mlx5_mkey_seg** %5, align 8
  %34 = getelementptr inbounds %struct.mlx5_mkey_seg, %struct.mlx5_mkey_seg* %33, i32 0, i32 6
  store i32 %32, i32* %34, align 8
  br label %45

35:                                               ; preds = %4
  %36 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %6, align 8
  %37 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @MLX5_MKC_ACCESS_MODE_KLMS, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* %9, align 4
  %43 = mul nsw i32 %42, 2
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %41, %35
  br label %45

45:                                               ; preds = %44, %27
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @get_umr_flags(i32 %46)
  %48 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %6, align 8
  %49 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %47, %50
  %52 = load %struct.mlx5_mkey_seg*, %struct.mlx5_mkey_seg** %5, align 8
  %53 = getelementptr inbounds %struct.mlx5_mkey_seg, %struct.mlx5_mkey_seg* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* %7, align 4
  %55 = and i32 %54, 255
  %56 = or i32 %55, -256
  %57 = call i8* @cpu_to_be32(i32 %56)
  %58 = load %struct.mlx5_mkey_seg*, %struct.mlx5_mkey_seg** %5, align 8
  %59 = getelementptr inbounds %struct.mlx5_mkey_seg, %struct.mlx5_mkey_seg* %58, i32 0, i32 5
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* @MLX5_MKEY_REMOTE_INVAL, align 4
  %61 = call i8* @cpu_to_be32(i32 %60)
  %62 = load %struct.mlx5_mkey_seg*, %struct.mlx5_mkey_seg** %5, align 8
  %63 = getelementptr inbounds %struct.mlx5_mkey_seg, %struct.mlx5_mkey_seg* %62, i32 0, i32 4
  store i8* %61, i8** %63, align 8
  %64 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %6, align 8
  %65 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @cpu_to_be64(i32 %67)
  %69 = load %struct.mlx5_mkey_seg*, %struct.mlx5_mkey_seg** %5, align 8
  %70 = getelementptr inbounds %struct.mlx5_mkey_seg, %struct.mlx5_mkey_seg* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  %71 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %6, align 8
  %72 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @cpu_to_be64(i32 %74)
  %76 = load %struct.mlx5_mkey_seg*, %struct.mlx5_mkey_seg** %5, align 8
  %77 = getelementptr inbounds %struct.mlx5_mkey_seg, %struct.mlx5_mkey_seg* %76, i32 0, i32 2
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i8* @cpu_to_be32(i32 %78)
  %80 = load %struct.mlx5_mkey_seg*, %struct.mlx5_mkey_seg** %5, align 8
  %81 = getelementptr inbounds %struct.mlx5_mkey_seg, %struct.mlx5_mkey_seg* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  ret void
}

declare dso_local i32 @ALIGN(i64, i32) #1

declare dso_local i32 @memset(%struct.mlx5_mkey_seg*, i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @get_umr_flags(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
