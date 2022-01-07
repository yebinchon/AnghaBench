; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mr.c_mlx4_set_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mr.c_mlx4_set_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32 }
%struct.mlx4_ib_mr = type { i64, i64, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@MLX4_MTT_FLAG_PRESENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_mr*, i32)* @mlx4_set_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_set_page(%struct.ib_mr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_mr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_ib_mr*, align 8
  store %struct.ib_mr* %0, %struct.ib_mr** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ib_mr*, %struct.ib_mr** %4, align 8
  %8 = call %struct.mlx4_ib_mr* @to_mmr(%struct.ib_mr* %7)
  store %struct.mlx4_ib_mr* %8, %struct.mlx4_ib_mr** %6, align 8
  %9 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %6, align 8
  %10 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %6, align 8
  %13 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %11, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %35

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @MLX4_MTT_FLAG_PRESENT, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @cpu_to_be64(i32 %25)
  %27 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %6, align 8
  %28 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %6, align 8
  %31 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %31, align 8
  %34 = getelementptr inbounds i32, i32* %29, i64 %32
  store i32 %26, i32* %34, align 4
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %22, %19
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.mlx4_ib_mr* @to_mmr(%struct.ib_mr*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
