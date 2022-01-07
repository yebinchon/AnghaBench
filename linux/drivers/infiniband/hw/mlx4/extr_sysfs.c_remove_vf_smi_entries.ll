; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_sysfs.c_remove_vf_smi_entries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_sysfs.c_remove_vf_smi_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_port = type { i64, %struct.TYPE_5__, i32, %struct.TYPE_4__, %struct.TYPE_6__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@IB_LINK_LAYER_ETHERNET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_port*)* @remove_vf_smi_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_vf_smi_entries(%struct.mlx4_port* %0) #0 {
  %2 = alloca %struct.mlx4_port*, align 8
  %3 = alloca i32, align 4
  store %struct.mlx4_port* %0, %struct.mlx4_port** %2, align 8
  %4 = load %struct.mlx4_port*, %struct.mlx4_port** %2, align 8
  %5 = getelementptr inbounds %struct.mlx4_port, %struct.mlx4_port* %4, i32 0, i32 4
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %8 = load %struct.mlx4_port*, %struct.mlx4_port** %2, align 8
  %9 = getelementptr inbounds %struct.mlx4_port, %struct.mlx4_port* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @rdma_port_get_link_layer(i32* %7, i32 %10)
  %12 = load i64, i64* @IB_LINK_LAYER_ETHERNET, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %1
  %18 = load %struct.mlx4_port*, %struct.mlx4_port** %2, align 8
  %19 = getelementptr inbounds %struct.mlx4_port, %struct.mlx4_port* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.mlx4_port*, %struct.mlx4_port** %2, align 8
  %22 = getelementptr inbounds %struct.mlx4_port, %struct.mlx4_port* %21, i32 0, i32 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @mlx4_master_func_num(i32 %25)
  %27 = icmp eq i64 %20, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %17, %1
  br label %42

29:                                               ; preds = %17
  %30 = load %struct.mlx4_port*, %struct.mlx4_port** %2, align 8
  %31 = getelementptr inbounds %struct.mlx4_port, %struct.mlx4_port* %30, i32 0, i32 2
  %32 = load %struct.mlx4_port*, %struct.mlx4_port** %2, align 8
  %33 = getelementptr inbounds %struct.mlx4_port, %struct.mlx4_port* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i32 @sysfs_remove_file(i32* %31, i32* %34)
  %36 = load %struct.mlx4_port*, %struct.mlx4_port** %2, align 8
  %37 = getelementptr inbounds %struct.mlx4_port, %struct.mlx4_port* %36, i32 0, i32 2
  %38 = load %struct.mlx4_port*, %struct.mlx4_port** %2, align 8
  %39 = getelementptr inbounds %struct.mlx4_port, %struct.mlx4_port* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = call i32 @sysfs_remove_file(i32* %37, i32* %40)
  br label %42

42:                                               ; preds = %29, %28
  ret void
}

declare dso_local i64 @rdma_port_get_link_layer(i32*, i32) #1

declare dso_local i64 @mlx4_master_func_num(i32) #1

declare dso_local i32 @sysfs_remove_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
