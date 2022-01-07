; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_odp.c_mkey_is_eq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_odp.c_mkey_is_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_mkey = type { i64, i64 }

@MLX5_MKEY_MW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_mkey*, i64)* @mkey_is_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mkey_is_eq(%struct.mlx5_core_mkey* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_core_mkey*, align 8
  %5 = alloca i64, align 8
  store %struct.mlx5_core_mkey* %0, %struct.mlx5_core_mkey** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.mlx5_core_mkey*, %struct.mlx5_core_mkey** %4, align 8
  %7 = icmp ne %struct.mlx5_core_mkey* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

9:                                                ; preds = %2
  %10 = load %struct.mlx5_core_mkey*, %struct.mlx5_core_mkey** %4, align 8
  %11 = getelementptr inbounds %struct.mlx5_core_mkey, %struct.mlx5_core_mkey* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MLX5_MKEY_MW, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %9
  %16 = load %struct.mlx5_core_mkey*, %struct.mlx5_core_mkey** %4, align 8
  %17 = getelementptr inbounds %struct.mlx5_core_mkey, %struct.mlx5_core_mkey* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @mlx5_base_mkey(i64 %18)
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @mlx5_base_mkey(i64 %20)
  %22 = icmp eq i64 %19, %21
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %3, align 4
  br label %31

24:                                               ; preds = %9
  %25 = load %struct.mlx5_core_mkey*, %struct.mlx5_core_mkey** %4, align 8
  %26 = getelementptr inbounds %struct.mlx5_core_mkey, %struct.mlx5_core_mkey* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %24, %15, %8
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i64 @mlx5_base_mkey(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
