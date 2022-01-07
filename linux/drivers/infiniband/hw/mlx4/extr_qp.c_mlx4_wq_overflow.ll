; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_qp.c_mlx4_wq_overflow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_qp.c_mlx4_wq_overflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_wq = type { i32, i32, i32 }
%struct.ib_cq = type { i32 }
%struct.mlx4_ib_cq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_ib_wq*, i32, %struct.ib_cq*)* @mlx4_wq_overflow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_wq_overflow(%struct.mlx4_ib_wq* %0, i32 %1, %struct.ib_cq* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_ib_wq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_cq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_ib_cq*, align 8
  store %struct.mlx4_ib_wq* %0, %struct.mlx4_ib_wq** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_cq* %2, %struct.ib_cq** %7, align 8
  %10 = load %struct.mlx4_ib_wq*, %struct.mlx4_ib_wq** %5, align 8
  %11 = getelementptr inbounds %struct.mlx4_ib_wq, %struct.mlx4_ib_wq* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mlx4_ib_wq*, %struct.mlx4_ib_wq** %5, align 8
  %14 = getelementptr inbounds %struct.mlx4_ib_wq, %struct.mlx4_ib_wq* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = sub i32 %12, %15
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add i32 %17, %18
  %20 = load %struct.mlx4_ib_wq*, %struct.mlx4_ib_wq** %5, align 8
  %21 = getelementptr inbounds %struct.mlx4_ib_wq, %struct.mlx4_ib_wq* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp ult i32 %19, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @likely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %52

28:                                               ; preds = %3
  %29 = load %struct.ib_cq*, %struct.ib_cq** %7, align 8
  %30 = call %struct.mlx4_ib_cq* @to_mcq(%struct.ib_cq* %29)
  store %struct.mlx4_ib_cq* %30, %struct.mlx4_ib_cq** %9, align 8
  %31 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %9, align 8
  %32 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %31, i32 0, i32 0
  %33 = call i32 @spin_lock(i32* %32)
  %34 = load %struct.mlx4_ib_wq*, %struct.mlx4_ib_wq** %5, align 8
  %35 = getelementptr inbounds %struct.mlx4_ib_wq, %struct.mlx4_ib_wq* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mlx4_ib_wq*, %struct.mlx4_ib_wq** %5, align 8
  %38 = getelementptr inbounds %struct.mlx4_ib_wq, %struct.mlx4_ib_wq* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sub i32 %36, %39
  store i32 %40, i32* %8, align 4
  %41 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %9, align 8
  %42 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %41, i32 0, i32 0
  %43 = call i32 @spin_unlock(i32* %42)
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %6, align 4
  %46 = add i32 %44, %45
  %47 = load %struct.mlx4_ib_wq*, %struct.mlx4_ib_wq** %5, align 8
  %48 = getelementptr inbounds %struct.mlx4_ib_wq, %struct.mlx4_ib_wq* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = icmp uge i32 %46, %49
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %28, %27
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.mlx4_ib_cq* @to_mcq(%struct.ib_cq*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
