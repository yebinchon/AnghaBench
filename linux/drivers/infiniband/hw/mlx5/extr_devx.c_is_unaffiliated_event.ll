; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_devx.c_is_unaffiliated_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_devx.c_is_unaffiliated_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@event_cap = common dso_local global i32 0, align 4
@user_unaffiliated_events = common dso_local global i32 0, align 4
@MAX_SUPP_EVENT_NUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, i64)* @is_unaffiliated_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_unaffiliated_event(%struct.mlx5_core_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %10 = load i32, i32* @event_cap, align 4
  %11 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @is_legacy_unaffiliated_event_num(i64 %14)
  store i32 %15, i32* %3, align 4
  br label %44

16:                                               ; preds = %2
  %17 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %18 = load i32, i32* @user_unaffiliated_events, align 4
  %19 = call i32* @MLX5_CAP_DEV_EVENT(%struct.mlx5_core_dev* %17, i32 %18)
  store i32* %19, i32** %6, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @MAX_SUPP_EVENT_NUM, align 8
  %22 = icmp ugt i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load i64, i64* %5, align 8
  %26 = udiv i64 %25, 64
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %7, align 4
  %28 = load i64, i64* %5, align 8
  %29 = urem i64 %28, 64
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %8, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @be64_to_cpu(i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = zext i32 %37 to i64
  %39 = shl i64 1, %38
  %40 = and i64 %36, %39
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %44

43:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %42, %13
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @is_legacy_unaffiliated_event_num(i64) #1

declare dso_local i32* @MLX5_CAP_DEV_EVENT(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @be64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
