; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_mlx5_ib_reg_dm_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_mlx5_ib_reg_dm_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32 }
%struct.ib_pd = type { i32 }
%struct.ib_dm = type { i32 }
%struct.ib_dm_mr_attr = type { i32, i32, i64 }
%struct.uverbs_attr_bundle = type { i32 }
%struct.mlx5_ib_dm = type { i32, i64 }
%struct.mlx5_core_dev = type { i32 }
%struct.TYPE_2__ = type { %struct.mlx5_core_dev* }

@MLX5_IB_DM_MEMIC_ALLOWED_ACCESS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MLX5_MKC_ACCESS_MODE_MEMIC = common dso_local global i32 0, align 4
@MLX5_IB_DM_SW_ICM_ALLOWED_ACCESS = common dso_local global i32 0, align 4
@MLX5_MKC_ACCESS_MODE_SW_ICM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mr* @mlx5_ib_reg_dm_mr(%struct.ib_pd* %0, %struct.ib_dm* %1, %struct.ib_dm_mr_attr* %2, %struct.uverbs_attr_bundle* %3) #0 {
  %5 = alloca %struct.ib_mr*, align 8
  %6 = alloca %struct.ib_pd*, align 8
  %7 = alloca %struct.ib_dm*, align 8
  %8 = alloca %struct.ib_dm_mr_attr*, align 8
  %9 = alloca %struct.uverbs_attr_bundle*, align 8
  %10 = alloca %struct.mlx5_ib_dm*, align 8
  %11 = alloca %struct.mlx5_core_dev*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %6, align 8
  store %struct.ib_dm* %1, %struct.ib_dm** %7, align 8
  store %struct.ib_dm_mr_attr* %2, %struct.ib_dm_mr_attr** %8, align 8
  store %struct.uverbs_attr_bundle* %3, %struct.uverbs_attr_bundle** %9, align 8
  %14 = load %struct.ib_dm*, %struct.ib_dm** %7, align 8
  %15 = call %struct.mlx5_ib_dm* @to_mdm(%struct.ib_dm* %14)
  store %struct.mlx5_ib_dm* %15, %struct.mlx5_ib_dm** %10, align 8
  %16 = load %struct.ib_dm*, %struct.ib_dm** %7, align 8
  %17 = getelementptr inbounds %struct.ib_dm, %struct.ib_dm* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.TYPE_2__* @to_mdev(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %20, align 8
  store %struct.mlx5_core_dev* %21, %struct.mlx5_core_dev** %11, align 8
  %22 = load %struct.mlx5_ib_dm*, %struct.mlx5_ib_dm** %10, align 8
  %23 = getelementptr inbounds %struct.mlx5_ib_dm, %struct.mlx5_ib_dm* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.ib_dm_mr_attr*, %struct.ib_dm_mr_attr** %8, align 8
  %26 = getelementptr inbounds %struct.ib_dm_mr_attr, %struct.ib_dm_mr_attr* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  store i64 %28, i64* %12, align 8
  %29 = load %struct.mlx5_ib_dm*, %struct.mlx5_ib_dm** %10, align 8
  %30 = getelementptr inbounds %struct.mlx5_ib_dm, %struct.mlx5_ib_dm* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %66 [
    i32 129, label %32
    i32 128, label %52
    i32 130, label %52
  ]

32:                                               ; preds = %4
  %33 = load %struct.ib_dm_mr_attr*, %struct.ib_dm_mr_attr** %8, align 8
  %34 = getelementptr inbounds %struct.ib_dm_mr_attr, %struct.ib_dm_mr_attr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @MLX5_IB_DM_MEMIC_ALLOWED_ACCESS, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.ib_mr* @ERR_PTR(i32 %42)
  store %struct.ib_mr* %43, %struct.ib_mr** %5, align 8
  br label %81

44:                                               ; preds = %32
  %45 = load i32, i32* @MLX5_MKC_ACCESS_MODE_MEMIC, align 4
  store i32 %45, i32* %13, align 4
  %46 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %11, align 8
  %47 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @pci_resource_start(i32 %48, i32 0)
  %50 = load i64, i64* %12, align 8
  %51 = sub nsw i64 %50, %49
  store i64 %51, i64* %12, align 8
  br label %70

52:                                               ; preds = %4, %4
  %53 = load %struct.ib_dm_mr_attr*, %struct.ib_dm_mr_attr** %8, align 8
  %54 = getelementptr inbounds %struct.ib_dm_mr_attr, %struct.ib_dm_mr_attr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @MLX5_IB_DM_SW_ICM_ALLOWED_ACCESS, align 4
  %57 = xor i32 %56, -1
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  %63 = call %struct.ib_mr* @ERR_PTR(i32 %62)
  store %struct.ib_mr* %63, %struct.ib_mr** %5, align 8
  br label %81

64:                                               ; preds = %52
  %65 = load i32, i32* @MLX5_MKC_ACCESS_MODE_SW_ICM, align 4
  store i32 %65, i32* %13, align 4
  br label %70

66:                                               ; preds = %4
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  %69 = call %struct.ib_mr* @ERR_PTR(i32 %68)
  store %struct.ib_mr* %69, %struct.ib_mr** %5, align 8
  br label %81

70:                                               ; preds = %64, %44
  %71 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %72 = load i64, i64* %12, align 8
  %73 = load %struct.ib_dm_mr_attr*, %struct.ib_dm_mr_attr** %8, align 8
  %74 = getelementptr inbounds %struct.ib_dm_mr_attr, %struct.ib_dm_mr_attr* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ib_dm_mr_attr*, %struct.ib_dm_mr_attr** %8, align 8
  %77 = getelementptr inbounds %struct.ib_dm_mr_attr, %struct.ib_dm_mr_attr* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %13, align 4
  %80 = call %struct.ib_mr* @mlx5_ib_get_dm_mr(%struct.ib_pd* %71, i64 %72, i32 %75, i32 %78, i32 %79)
  store %struct.ib_mr* %80, %struct.ib_mr** %5, align 8
  br label %81

81:                                               ; preds = %70, %66, %60, %40
  %82 = load %struct.ib_mr*, %struct.ib_mr** %5, align 8
  ret %struct.ib_mr* %82
}

declare dso_local %struct.mlx5_ib_dm* @to_mdm(%struct.ib_dm*) #1

declare dso_local %struct.TYPE_2__* @to_mdev(i32) #1

declare dso_local %struct.ib_mr* @ERR_PTR(i32) #1

declare dso_local i64 @pci_resource_start(i32, i32) #1

declare dso_local %struct.ib_mr* @mlx5_ib_get_dm_mr(%struct.ib_pd*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
