; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_qp.c_mlx4_ib_release_wqn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_qp.c_mlx4_ib_release_wqn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_ucontext = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlx4_ib_qp = type { %struct.mlx4_wqn_range* }
%struct.mlx4_wqn_range = type { i32, i32, i32, i32, i32 }
%struct.mlx4_ib_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_ib_ucontext*, %struct.mlx4_ib_qp*, i32)* @mlx4_ib_release_wqn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_ib_release_wqn(%struct.mlx4_ib_ucontext* %0, %struct.mlx4_ib_qp* %1, i32 %2) #0 {
  %4 = alloca %struct.mlx4_ib_ucontext*, align 8
  %5 = alloca %struct.mlx4_ib_qp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_ib_dev*, align 8
  %8 = alloca %struct.mlx4_wqn_range*, align 8
  store %struct.mlx4_ib_ucontext* %0, %struct.mlx4_ib_ucontext** %4, align 8
  store %struct.mlx4_ib_qp* %1, %struct.mlx4_ib_qp** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mlx4_ib_ucontext*, %struct.mlx4_ib_ucontext** %4, align 8
  %10 = getelementptr inbounds %struct.mlx4_ib_ucontext, %struct.mlx4_ib_ucontext* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.mlx4_ib_dev* @to_mdev(i32 %12)
  store %struct.mlx4_ib_dev* %13, %struct.mlx4_ib_dev** %7, align 8
  %14 = load %struct.mlx4_ib_ucontext*, %struct.mlx4_ib_ucontext** %4, align 8
  %15 = getelementptr inbounds %struct.mlx4_ib_ucontext, %struct.mlx4_ib_ucontext* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %5, align 8
  %18 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %17, i32 0, i32 0
  %19 = load %struct.mlx4_wqn_range*, %struct.mlx4_wqn_range** %18, align 8
  store %struct.mlx4_wqn_range* %19, %struct.mlx4_wqn_range** %8, align 8
  %20 = load %struct.mlx4_wqn_range*, %struct.mlx4_wqn_range** %8, align 8
  %21 = getelementptr inbounds %struct.mlx4_wqn_range, %struct.mlx4_wqn_range* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.mlx4_wqn_range*, %struct.mlx4_wqn_range** %8, align 8
  %25 = getelementptr inbounds %struct.mlx4_wqn_range, %struct.mlx4_wqn_range* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %3
  %29 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %30 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mlx4_wqn_range*, %struct.mlx4_wqn_range** %8, align 8
  %33 = getelementptr inbounds %struct.mlx4_wqn_range, %struct.mlx4_wqn_range* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mlx4_wqn_range*, %struct.mlx4_wqn_range** %8, align 8
  %36 = getelementptr inbounds %struct.mlx4_wqn_range, %struct.mlx4_wqn_range* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @mlx4_qp_release_range(i32 %31, i32 %34, i32 %37)
  %39 = load %struct.mlx4_wqn_range*, %struct.mlx4_wqn_range** %8, align 8
  %40 = getelementptr inbounds %struct.mlx4_wqn_range, %struct.mlx4_wqn_range* %39, i32 0, i32 1
  %41 = call i32 @list_del(i32* %40)
  %42 = load %struct.mlx4_wqn_range*, %struct.mlx4_wqn_range** %8, align 8
  %43 = call i32 @kfree(%struct.mlx4_wqn_range* %42)
  br label %51

44:                                               ; preds = %3
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct.mlx4_wqn_range*, %struct.mlx4_wqn_range** %8, align 8
  %49 = getelementptr inbounds %struct.mlx4_wqn_range, %struct.mlx4_wqn_range* %48, i32 0, i32 0
  store i32 1, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %44
  br label %51

51:                                               ; preds = %50, %28
  %52 = load %struct.mlx4_ib_ucontext*, %struct.mlx4_ib_ucontext** %4, align 8
  %53 = getelementptr inbounds %struct.mlx4_ib_ucontext, %struct.mlx4_ib_ucontext* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  ret void
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx4_qp_release_range(i32, i32, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.mlx4_wqn_range*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
