; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mr.c_mlx4_ib_map_phys_fmr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mr.c_mlx4_ib_map_phys_fmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_fmr = type { i32 }
%struct.mlx4_ib_fmr = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.mlx4_ib_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_map_phys_fmr(%struct.ib_fmr* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ib_fmr*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_ib_fmr*, align 8
  %10 = alloca %struct.mlx4_ib_dev*, align 8
  store %struct.ib_fmr* %0, %struct.ib_fmr** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ib_fmr*, %struct.ib_fmr** %5, align 8
  %12 = call %struct.mlx4_ib_fmr* @to_mfmr(%struct.ib_fmr* %11)
  store %struct.mlx4_ib_fmr* %12, %struct.mlx4_ib_fmr** %9, align 8
  %13 = load %struct.mlx4_ib_fmr*, %struct.mlx4_ib_fmr** %9, align 8
  %14 = getelementptr inbounds %struct.mlx4_ib_fmr, %struct.mlx4_ib_fmr* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.mlx4_ib_dev* @to_mdev(i32 %16)
  store %struct.mlx4_ib_dev* %17, %struct.mlx4_ib_dev** %10, align 8
  %18 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %19 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mlx4_ib_fmr*, %struct.mlx4_ib_fmr** %9, align 8
  %22 = getelementptr inbounds %struct.mlx4_ib_fmr, %struct.mlx4_ib_fmr* %21, i32 0, i32 1
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.mlx4_ib_fmr*, %struct.mlx4_ib_fmr** %9, align 8
  %27 = getelementptr inbounds %struct.mlx4_ib_fmr, %struct.mlx4_ib_fmr* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load %struct.mlx4_ib_fmr*, %struct.mlx4_ib_fmr** %9, align 8
  %30 = getelementptr inbounds %struct.mlx4_ib_fmr, %struct.mlx4_ib_fmr* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @mlx4_map_phys_fmr(i32 %20, i32* %22, i32* %23, i32 %24, i32 %25, i32* %28, i32* %31)
  ret i32 %32
}

declare dso_local %struct.mlx4_ib_fmr* @to_mfmr(%struct.ib_fmr*) #1

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local i32 @mlx4_map_phys_fmr(i32, i32*, i32*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
