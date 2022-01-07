; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_alloc_bfreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_alloc_bfreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_bfreg_info = type { i32, i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@NUM_NON_BLUE_FLAME_BFREGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.mlx5_bfreg_info*)* @alloc_bfreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_bfreg(%struct.mlx5_ib_dev* %0, %struct.mlx5_bfreg_info* %1) #0 {
  %3 = alloca %struct.mlx5_ib_dev*, align 8
  %4 = alloca %struct.mlx5_bfreg_info*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %3, align 8
  store %struct.mlx5_bfreg_info* %1, %struct.mlx5_bfreg_info** %4, align 8
  %6 = load i32, i32* @ENOMEM, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %8, i32 0, i32 1
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %4, align 8
  %12 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sge i32 %13, 2
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %17 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %4, align 8
  %18 = call i32 @alloc_high_class_bfreg(%struct.mlx5_ib_dev* %16, %struct.mlx5_bfreg_info* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %23 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %4, align 8
  %24 = call i32 @alloc_med_class_bfreg(%struct.mlx5_ib_dev* %22, %struct.mlx5_bfreg_info* %23)
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %21, %15
  br label %26

26:                                               ; preds = %25, %2
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = load i32, i32* @NUM_NON_BLUE_FLAME_BFREGS, align 4
  %31 = icmp ne i32 %30, 1
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUILD_BUG_ON(i32 %32)
  store i32 0, i32* %5, align 4
  %34 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %4, align 8
  %35 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %29, %26
  %43 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %4, align 8
  %44 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %43, i32 0, i32 1
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @alloc_high_class_bfreg(%struct.mlx5_ib_dev*, %struct.mlx5_bfreg_info*) #1

declare dso_local i32 @alloc_med_class_bfreg(%struct.mlx5_ib_dev*, %struct.mlx5_bfreg_info*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
