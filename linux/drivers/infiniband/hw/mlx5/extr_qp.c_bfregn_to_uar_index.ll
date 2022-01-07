; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_bfregn_to_uar_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_bfregn_to_uar_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_bfreg_info = type { i32, i32, i64*, i64, i32 }

@MLX5_NON_FP_BFREGS_PER_UAR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MLX5_IB_INVALID_UAR_INDEX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Invalid dynamic uar index\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfregn_to_uar_index(%struct.mlx5_ib_dev* %0, %struct.mlx5_bfreg_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_ib_dev*, align 8
  %7 = alloca %struct.mlx5_bfreg_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %6, align 8
  store %struct.mlx5_bfreg_info* %1, %struct.mlx5_bfreg_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %14 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %7, align 8
  %15 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @get_uars_per_sys_page(%struct.mlx5_ib_dev* %13, i32 %16)
  %18 = load i32, i32* @MLX5_NON_FP_BFREGS_PER_UAR, align 4
  %19 = mul i32 %17, %18
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %10, align 4
  %22 = udiv i32 %20, %21
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %63

25:                                               ; preds = %4
  %26 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %7, align 8
  %27 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = zext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %7, align 8
  %35 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp uge i32 %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %25
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %80

41:                                               ; preds = %25
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %7, align 8
  %44 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ugt i32 %42, %45
  br i1 %46, label %57, label %47

47:                                               ; preds = %41
  %48 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %7, align 8
  %49 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %48, i32 0, i32 2
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @MLX5_IB_INVALID_UAR_INDEX, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %47, %41
  %58 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %59 = call i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev* %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %80

62:                                               ; preds = %47
  br label %63

63:                                               ; preds = %62, %4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %10, align 4
  %66 = urem i32 %64, %65
  %67 = load i32, i32* @MLX5_NON_FP_BFREGS_PER_UAR, align 4
  %68 = udiv i32 %66, %67
  store i32 %68, i32* %12, align 4
  %69 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %7, align 8
  %70 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %69, i32 0, i32 2
  %71 = load i64*, i64** %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %12, align 4
  %77 = zext i32 %76 to i64
  %78 = add nsw i64 %75, %77
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %63, %57, %38
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @get_uars_per_sys_page(%struct.mlx5_ib_dev*, i32) #1

declare dso_local i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
