; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_alloc_med_class_bfreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_alloc_med_class_bfreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_bfreg_info = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.mlx5_bfreg_info*)* @alloc_med_class_bfreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_med_class_bfreg(%struct.mlx5_ib_dev* %0, %struct.mlx5_bfreg_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_ib_dev*, align 8
  %5 = alloca %struct.mlx5_bfreg_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %4, align 8
  store %struct.mlx5_bfreg_info* %1, %struct.mlx5_bfreg_info** %5, align 8
  %8 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %9 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %5, align 8
  %10 = call i32 @first_med_bfreg(%struct.mlx5_ib_dev* %8, %struct.mlx5_bfreg_info* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %65

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %52, %15
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %20 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %5, align 8
  %21 = call i32 @first_hi_bfreg(%struct.mlx5_ib_dev* %19, %struct.mlx5_bfreg_info* %20)
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %55

23:                                               ; preds = %17
  %24 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %5, align 8
  %25 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %5, align 8
  %32 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %30, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %23
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %39, %23
  %42 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %5, align 8
  %43 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %41
  br label %55

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %17

55:                                               ; preds = %50, %17
  %56 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %5, align 8
  %57 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %61, align 8
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %55, %13
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @first_med_bfreg(%struct.mlx5_ib_dev*, %struct.mlx5_bfreg_info*) #1

declare dso_local i32 @first_hi_bfreg(%struct.mlx5_ib_dev*, %struct.mlx5_bfreg_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
