; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_dealloc_ucontext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_dealloc_ucontext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ucontext = type { i32 }
%struct.mlx5_ib_ucontext = type { i64, i32, %struct.mlx5_bfreg_info }
%struct.mlx5_bfreg_info = type { i32, i32 }
%struct.mlx5_ib_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_ucontext*)* @mlx5_ib_dealloc_ucontext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_ib_dealloc_ucontext(%struct.ib_ucontext* %0) #0 {
  %2 = alloca %struct.ib_ucontext*, align 8
  %3 = alloca %struct.mlx5_ib_ucontext*, align 8
  %4 = alloca %struct.mlx5_ib_dev*, align 8
  %5 = alloca %struct.mlx5_bfreg_info*, align 8
  store %struct.ib_ucontext* %0, %struct.ib_ucontext** %2, align 8
  %6 = load %struct.ib_ucontext*, %struct.ib_ucontext** %2, align 8
  %7 = call %struct.mlx5_ib_ucontext* @to_mucontext(%struct.ib_ucontext* %6)
  store %struct.mlx5_ib_ucontext* %7, %struct.mlx5_ib_ucontext** %3, align 8
  %8 = load %struct.ib_ucontext*, %struct.ib_ucontext** %2, align 8
  %9 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.mlx5_ib_dev* @to_mdev(i32 %10)
  store %struct.mlx5_ib_dev* %11, %struct.mlx5_ib_dev** %4, align 8
  %12 = load %struct.mlx5_ib_ucontext*, %struct.mlx5_ib_ucontext** %3, align 8
  %13 = getelementptr inbounds %struct.mlx5_ib_ucontext, %struct.mlx5_ib_ucontext* %12, i32 0, i32 2
  store %struct.mlx5_bfreg_info* %13, %struct.mlx5_bfreg_info** %5, align 8
  %14 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %15 = load %struct.mlx5_ib_ucontext*, %struct.mlx5_ib_ucontext** %3, align 8
  %16 = getelementptr inbounds %struct.mlx5_ib_ucontext, %struct.mlx5_ib_ucontext* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.mlx5_ib_ucontext*, %struct.mlx5_ib_ucontext** %3, align 8
  %19 = getelementptr inbounds %struct.mlx5_ib_ucontext, %struct.mlx5_ib_ucontext* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @mlx5_ib_dealloc_transport_domain(%struct.mlx5_ib_dev* %14, i32 %17, i64 %20)
  %22 = load %struct.mlx5_ib_ucontext*, %struct.mlx5_ib_ucontext** %3, align 8
  %23 = getelementptr inbounds %struct.mlx5_ib_ucontext, %struct.mlx5_ib_ucontext* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %28 = load %struct.mlx5_ib_ucontext*, %struct.mlx5_ib_ucontext** %3, align 8
  %29 = getelementptr inbounds %struct.mlx5_ib_ucontext, %struct.mlx5_ib_ucontext* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @mlx5_ib_devx_destroy(%struct.mlx5_ib_dev* %27, i64 %30)
  br label %32

32:                                               ; preds = %26, %1
  %33 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %34 = load %struct.mlx5_ib_ucontext*, %struct.mlx5_ib_ucontext** %3, align 8
  %35 = call i32 @deallocate_uars(%struct.mlx5_ib_dev* %33, %struct.mlx5_ib_ucontext* %34)
  %36 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %5, align 8
  %37 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @kfree(i32 %38)
  %40 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %5, align 8
  %41 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @kfree(i32 %42)
  ret void
}

declare dso_local %struct.mlx5_ib_ucontext* @to_mucontext(%struct.ib_ucontext*) #1

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local i32 @mlx5_ib_dealloc_transport_domain(%struct.mlx5_ib_dev*, i32, i64) #1

declare dso_local i32 @mlx5_ib_devx_destroy(%struct.mlx5_ib_dev*, i64) #1

declare dso_local i32 @deallocate_uars(%struct.mlx5_ib_dev*, %struct.mlx5_ib_ucontext*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
