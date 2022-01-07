; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type opaque
%struct.mlx5_ib_multiport_info = type { i32, i64 }
%struct.mlx5_ib_dev = type { i32 }

@mlx5_ib_multiport_mutex = common dso_local global i32 0, align 4
@MLX5_IB_STAGE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_core_dev*, i8*)* @mlx5_ib_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_ib_remove(%struct.mlx5_core_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mlx5_ib_multiport_info*, align 8
  %6 = alloca %struct.mlx5_ib_dev*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %8 = bitcast %struct.mlx5_core_dev* %7 to i8*
  %9 = call i64 @MLX5_ESWITCH_MANAGER(i8* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %14 = bitcast %struct.mlx5_core_dev* %13 to i8*
  %15 = icmp eq i8* %12, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %18 = bitcast %struct.mlx5_core_dev* %17 to i8*
  %19 = call i32 @mlx5_ib_unregister_vport_reps(i8* %18)
  br label %55

20:                                               ; preds = %11, %2
  %21 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %22 = bitcast %struct.mlx5_core_dev* %21 to i8*
  %23 = call i64 @mlx5_core_is_mp_slave(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %20
  %26 = load i8*, i8** %4, align 8
  %27 = bitcast i8* %26 to %struct.mlx5_ib_multiport_info*
  store %struct.mlx5_ib_multiport_info* %27, %struct.mlx5_ib_multiport_info** %5, align 8
  %28 = call i32 @mutex_lock(i32* @mlx5_ib_multiport_mutex)
  %29 = load %struct.mlx5_ib_multiport_info*, %struct.mlx5_ib_multiport_info** %5, align 8
  %30 = getelementptr inbounds %struct.mlx5_ib_multiport_info, %struct.mlx5_ib_multiport_info* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %25
  %34 = load %struct.mlx5_ib_multiport_info*, %struct.mlx5_ib_multiport_info** %5, align 8
  %35 = getelementptr inbounds %struct.mlx5_ib_multiport_info, %struct.mlx5_ib_multiport_info* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.mlx5_ib_multiport_info*, %struct.mlx5_ib_multiport_info** %5, align 8
  %38 = call i32 @mlx5_ib_unbind_slave_port(i64 %36, %struct.mlx5_ib_multiport_info* %37)
  br label %39

39:                                               ; preds = %33, %25
  %40 = load %struct.mlx5_ib_multiport_info*, %struct.mlx5_ib_multiport_info** %5, align 8
  %41 = getelementptr inbounds %struct.mlx5_ib_multiport_info, %struct.mlx5_ib_multiport_info* %40, i32 0, i32 0
  %42 = call i32 @list_del(i32* %41)
  %43 = call i32 @mutex_unlock(i32* @mlx5_ib_multiport_mutex)
  %44 = load %struct.mlx5_ib_multiport_info*, %struct.mlx5_ib_multiport_info** %5, align 8
  %45 = call i32 @kfree(%struct.mlx5_ib_multiport_info* %44)
  br label %55

46:                                               ; preds = %20
  %47 = load i8*, i8** %4, align 8
  %48 = bitcast i8* %47 to %struct.mlx5_ib_dev*
  store %struct.mlx5_ib_dev* %48, %struct.mlx5_ib_dev** %6, align 8
  %49 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %50 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %51 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @MLX5_IB_STAGE_MAX, align 4
  %54 = call i32 @__mlx5_ib_remove(%struct.mlx5_ib_dev* %49, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %46, %39, %16
  ret void
}

declare dso_local i64 @MLX5_ESWITCH_MANAGER(i8*) #1

declare dso_local i32 @mlx5_ib_unregister_vport_reps(i8*) #1

declare dso_local i64 @mlx5_core_is_mp_slave(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx5_ib_unbind_slave_port(i64, %struct.mlx5_ib_multiport_info*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.mlx5_ib_multiport_info*) #1

declare dso_local i32 @__mlx5_ib_remove(%struct.mlx5_ib_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
