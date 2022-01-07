; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_ib_rep.c_mlx5_ib_vport_rep_unload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_ib_rep.c_mlx5_ib_vport_rep_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch_rep = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.mlx5_ib_dev = type { i32, %struct.mlx5_ib_port* }
%struct.mlx5_ib_port = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32* }

@REP_IB = common dso_local global i64 0, align 8
@MLX5_VPORT_UPLINK = common dso_local global i64 0, align 8
@MLX5_IB_STAGE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_eswitch_rep*)* @mlx5_ib_vport_rep_unload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_ib_vport_rep_unload(%struct.mlx5_eswitch_rep* %0) #0 {
  %2 = alloca %struct.mlx5_eswitch_rep*, align 8
  %3 = alloca %struct.mlx5_ib_dev*, align 8
  %4 = alloca %struct.mlx5_ib_port*, align 8
  store %struct.mlx5_eswitch_rep* %0, %struct.mlx5_eswitch_rep** %2, align 8
  %5 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %2, align 8
  %6 = call %struct.mlx5_ib_dev* @mlx5_ib_rep_to_dev(%struct.mlx5_eswitch_rep* %5)
  store %struct.mlx5_ib_dev* %6, %struct.mlx5_ib_dev** %3, align 8
  %7 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %7, i32 0, i32 1
  %9 = load %struct.mlx5_ib_port*, %struct.mlx5_ib_port** %8, align 8
  %10 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %2, align 8
  %11 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.mlx5_ib_port, %struct.mlx5_ib_port* %9, i64 %12
  store %struct.mlx5_ib_port* %13, %struct.mlx5_ib_port** %4, align 8
  %14 = load %struct.mlx5_ib_port*, %struct.mlx5_ib_port** %4, align 8
  %15 = getelementptr inbounds %struct.mlx5_ib_port, %struct.mlx5_ib_port* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = call i32 @write_lock(i32* %16)
  %18 = load %struct.mlx5_ib_port*, %struct.mlx5_ib_port** %4, align 8
  %19 = getelementptr inbounds %struct.mlx5_ib_port, %struct.mlx5_ib_port* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store i32* null, i32** %20, align 8
  %21 = load %struct.mlx5_ib_port*, %struct.mlx5_ib_port** %4, align 8
  %22 = getelementptr inbounds %struct.mlx5_ib_port, %struct.mlx5_ib_port* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = call i32 @write_unlock(i32* %23)
  %25 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %2, align 8
  %26 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load i64, i64* @REP_IB, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  %31 = load %struct.mlx5_ib_port*, %struct.mlx5_ib_port** %4, align 8
  %32 = getelementptr inbounds %struct.mlx5_ib_port, %struct.mlx5_ib_port* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  %33 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %2, align 8
  %34 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MLX5_VPORT_UPLINK, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %1
  %39 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %40 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %41 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @MLX5_IB_STAGE_MAX, align 4
  %44 = call i32 @__mlx5_ib_remove(%struct.mlx5_ib_dev* %39, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %38, %1
  ret void
}

declare dso_local %struct.mlx5_ib_dev* @mlx5_ib_rep_to_dev(%struct.mlx5_eswitch_rep*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @__mlx5_ib_remove(%struct.mlx5_ib_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
