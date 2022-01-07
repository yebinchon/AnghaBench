; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_steer_qp_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_steer_qp_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { i64, i64, i32 }

@MLX4_STEERING_MODE_DEVICE_MANAGED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"qpn = %u, steer_qpn_base = %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_ib_steer_qp_free(%struct.mlx4_ib_dev* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.mlx4_ib_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i64, i64* %5, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %11 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MLX4_STEERING_MODE_DEVICE_MANAGED, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9, %3
  br label %42

16:                                               ; preds = %9
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %19 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %17, %20
  %22 = zext i1 %21 to i32
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %25 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @WARN(i32 %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %23, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  br label %42

30:                                               ; preds = %16
  %31 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %32 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %36 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @get_count_order(i32 %39)
  %41 = call i32 @bitmap_release_region(i32 %33, i64 %38, i32 %40)
  br label %42

42:                                               ; preds = %30, %29, %15
  ret void
}

declare dso_local i64 @WARN(i32, i8*, i64, i64) #1

declare dso_local i32 @bitmap_release_region(i32, i64, i32) #1

declare dso_local i32 @get_count_order(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
