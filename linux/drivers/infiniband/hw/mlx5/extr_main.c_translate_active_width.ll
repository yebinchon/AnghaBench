; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_translate_active_width.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_translate_active_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.mlx5_ib_dev = type { i32 }

@MLX5_IB_WIDTH_1X = common dso_local global i32 0, align 4
@IB_WIDTH_1X = common dso_local global i32 0, align 4
@MLX5_IB_WIDTH_2X = common dso_local global i32 0, align 4
@IB_WIDTH_2X = common dso_local global i32 0, align 4
@MLX5_IB_WIDTH_4X = common dso_local global i32 0, align 4
@IB_WIDTH_4X = common dso_local global i32 0, align 4
@MLX5_IB_WIDTH_8X = common dso_local global i32 0, align 4
@IB_WIDTH_8X = common dso_local global i32 0, align 4
@MLX5_IB_WIDTH_12X = common dso_local global i32 0, align 4
@IB_WIDTH_12X = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Invalid active_width %d, setting width to default value: 4x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*, i32, i32*)* @translate_active_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @translate_active_width(%struct.ib_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mlx5_ib_dev*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %9 = call %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device* %8)
  store %struct.mlx5_ib_dev* %9, %struct.mlx5_ib_dev** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @MLX5_IB_WIDTH_1X, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @IB_WIDTH_1X, align 4
  %16 = load i32*, i32** %6, align 8
  store i32 %15, i32* %16, align 4
  br label %59

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @MLX5_IB_WIDTH_2X, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @IB_WIDTH_2X, align 4
  %24 = load i32*, i32** %6, align 8
  store i32 %23, i32* %24, align 4
  br label %58

25:                                               ; preds = %17
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @MLX5_IB_WIDTH_4X, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @IB_WIDTH_4X, align 4
  %32 = load i32*, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  br label %57

33:                                               ; preds = %25
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @MLX5_IB_WIDTH_8X, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @IB_WIDTH_8X, align 4
  %40 = load i32*, i32** %6, align 8
  store i32 %39, i32* %40, align 4
  br label %56

41:                                               ; preds = %33
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @MLX5_IB_WIDTH_12X, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @IB_WIDTH_12X, align 4
  %48 = load i32*, i32** %6, align 8
  store i32 %47, i32* %48, align 4
  br label %55

49:                                               ; preds = %41
  %50 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev* %50, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @IB_WIDTH_4X, align 4
  %54 = load i32*, i32** %6, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %49, %46
  br label %56

56:                                               ; preds = %55, %38
  br label %57

57:                                               ; preds = %56, %30
  br label %58

58:                                               ; preds = %57, %22
  br label %59

59:                                               ; preds = %58, %14
  ret void
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
