; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_deallocate_uars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_deallocate_uars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_ucontext = type { %struct.mlx5_bfreg_info }
%struct.mlx5_bfreg_info = type { i32, i32, i64* }

@MLX5_IB_INVALID_UAR_INDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_dev*, %struct.mlx5_ib_ucontext*)* @deallocate_uars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deallocate_uars(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_ucontext* %1) #0 {
  %3 = alloca %struct.mlx5_ib_dev*, align 8
  %4 = alloca %struct.mlx5_ib_ucontext*, align 8
  %5 = alloca %struct.mlx5_bfreg_info*, align 8
  %6 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %3, align 8
  store %struct.mlx5_ib_ucontext* %1, %struct.mlx5_ib_ucontext** %4, align 8
  %7 = load %struct.mlx5_ib_ucontext*, %struct.mlx5_ib_ucontext** %4, align 8
  %8 = getelementptr inbounds %struct.mlx5_ib_ucontext, %struct.mlx5_ib_ucontext* %7, i32 0, i32 0
  store %struct.mlx5_bfreg_info* %8, %struct.mlx5_bfreg_info** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %44, %2
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %5, align 8
  %12 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %47

15:                                               ; preds = %9
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %5, align 8
  %18 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %31, label %21

21:                                               ; preds = %15
  %22 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %5, align 8
  %23 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %22, i32 0, i32 2
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MLX5_IB_INVALID_UAR_INDEX, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %21, %15
  %32 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %33 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %5, align 8
  %36 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %35, i32 0, i32 2
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @mlx5_cmd_free_uar(i32 %34, i64 %41)
  br label %43

43:                                               ; preds = %31, %21
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %9

47:                                               ; preds = %9
  ret void
}

declare dso_local i32 @mlx5_cmd_free_uar(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
