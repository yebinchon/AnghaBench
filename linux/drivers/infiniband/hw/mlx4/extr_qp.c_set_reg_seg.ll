; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_qp.c_set_reg_seg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_qp.c_set_reg_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_wqe_fmr_seg = type { i64*, i8*, i64, i8*, i8*, i8*, i8*, i32 }
%struct.ib_reg_wr = type { i32, i32, i32 }
%struct.mlx4_ib_mr = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_wqe_fmr_seg*, %struct.ib_reg_wr*)* @set_reg_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_reg_seg(%struct.mlx4_wqe_fmr_seg* %0, %struct.ib_reg_wr* %1) #0 {
  %3 = alloca %struct.mlx4_wqe_fmr_seg*, align 8
  %4 = alloca %struct.ib_reg_wr*, align 8
  %5 = alloca %struct.mlx4_ib_mr*, align 8
  store %struct.mlx4_wqe_fmr_seg* %0, %struct.mlx4_wqe_fmr_seg** %3, align 8
  store %struct.ib_reg_wr* %1, %struct.ib_reg_wr** %4, align 8
  %6 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %4, align 8
  %7 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.mlx4_ib_mr* @to_mmr(i32 %8)
  store %struct.mlx4_ib_mr* %9, %struct.mlx4_ib_mr** %5, align 8
  %10 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %4, align 8
  %11 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @convert_access(i32 %12)
  %14 = load %struct.mlx4_wqe_fmr_seg*, %struct.mlx4_wqe_fmr_seg** %3, align 8
  %15 = getelementptr inbounds %struct.mlx4_wqe_fmr_seg, %struct.mlx4_wqe_fmr_seg* %14, i32 0, i32 7
  store i32 %13, i32* %15, align 8
  %16 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %4, align 8
  %17 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @cpu_to_be32(i32 %18)
  %20 = load %struct.mlx4_wqe_fmr_seg*, %struct.mlx4_wqe_fmr_seg** %3, align 8
  %21 = getelementptr inbounds %struct.mlx4_wqe_fmr_seg, %struct.mlx4_wqe_fmr_seg* %20, i32 0, i32 6
  store i8* %19, i8** %21, align 8
  %22 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %5, align 8
  %23 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @cpu_to_be64(i32 %24)
  %26 = load %struct.mlx4_wqe_fmr_seg*, %struct.mlx4_wqe_fmr_seg** %3, align 8
  %27 = getelementptr inbounds %struct.mlx4_wqe_fmr_seg, %struct.mlx4_wqe_fmr_seg* %26, i32 0, i32 5
  store i8* %25, i8** %27, align 8
  %28 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %5, align 8
  %29 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @cpu_to_be64(i32 %31)
  %33 = load %struct.mlx4_wqe_fmr_seg*, %struct.mlx4_wqe_fmr_seg** %3, align 8
  %34 = getelementptr inbounds %struct.mlx4_wqe_fmr_seg, %struct.mlx4_wqe_fmr_seg* %33, i32 0, i32 4
  store i8* %32, i8** %34, align 8
  %35 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %5, align 8
  %36 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @cpu_to_be64(i32 %38)
  %40 = load %struct.mlx4_wqe_fmr_seg*, %struct.mlx4_wqe_fmr_seg** %3, align 8
  %41 = getelementptr inbounds %struct.mlx4_wqe_fmr_seg, %struct.mlx4_wqe_fmr_seg* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  %42 = load %struct.mlx4_wqe_fmr_seg*, %struct.mlx4_wqe_fmr_seg** %3, align 8
  %43 = getelementptr inbounds %struct.mlx4_wqe_fmr_seg, %struct.mlx4_wqe_fmr_seg* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %5, align 8
  %45 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ilog2(i32 %47)
  %49 = call i8* @cpu_to_be32(i32 %48)
  %50 = load %struct.mlx4_wqe_fmr_seg*, %struct.mlx4_wqe_fmr_seg** %3, align 8
  %51 = getelementptr inbounds %struct.mlx4_wqe_fmr_seg, %struct.mlx4_wqe_fmr_seg* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load %struct.mlx4_wqe_fmr_seg*, %struct.mlx4_wqe_fmr_seg** %3, align 8
  %53 = getelementptr inbounds %struct.mlx4_wqe_fmr_seg, %struct.mlx4_wqe_fmr_seg* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  store i64 0, i64* %55, align 8
  %56 = load %struct.mlx4_wqe_fmr_seg*, %struct.mlx4_wqe_fmr_seg** %3, align 8
  %57 = getelementptr inbounds %struct.mlx4_wqe_fmr_seg, %struct.mlx4_wqe_fmr_seg* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 1
  store i64 0, i64* %59, align 8
  ret void
}

declare dso_local %struct.mlx4_ib_mr* @to_mmr(i32) #1

declare dso_local i32 @convert_access(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @ilog2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
