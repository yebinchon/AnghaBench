; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_cm.c_id_map_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_cm.c_id_map_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.id_map_entry = type { i32, i32, i32, i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { %struct.mlx4_ib_sriov }
%struct.mlx4_ib_sriov = type { i32, i32, i32, i32 }
%struct.ib_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@id_map_ent_timeout = common dso_local global i32 0, align 4
@xa_limit_32b = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Allocation failed (err:0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.id_map_entry* (%struct.ib_device*, i32, i32)* @id_map_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.id_map_entry* @id_map_alloc(%struct.ib_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.id_map_entry*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.id_map_entry*, align 8
  %10 = alloca %struct.mlx4_ib_sriov*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %12 = call %struct.TYPE_2__* @to_mdev(%struct.ib_device* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.mlx4_ib_sriov* %13, %struct.mlx4_ib_sriov** %10, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.id_map_entry* @kmalloc(i32 40, i32 %14)
  store %struct.id_map_entry* %15, %struct.id_map_entry** %9, align 8
  %16 = load %struct.id_map_entry*, %struct.id_map_entry** %9, align 8
  %17 = icmp ne %struct.id_map_entry* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.id_map_entry* @ERR_PTR(i32 %20)
  store %struct.id_map_entry* %21, %struct.id_map_entry** %4, align 8
  br label %76

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.id_map_entry*, %struct.id_map_entry** %9, align 8
  %25 = getelementptr inbounds %struct.id_map_entry, %struct.id_map_entry* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.id_map_entry*, %struct.id_map_entry** %9, align 8
  %28 = getelementptr inbounds %struct.id_map_entry, %struct.id_map_entry* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.id_map_entry*, %struct.id_map_entry** %9, align 8
  %30 = getelementptr inbounds %struct.id_map_entry, %struct.id_map_entry* %29, i32 0, i32 5
  store i64 0, i64* %30, align 8
  %31 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %32 = call %struct.TYPE_2__* @to_mdev(%struct.ib_device* %31)
  %33 = load %struct.id_map_entry*, %struct.id_map_entry** %9, align 8
  %34 = getelementptr inbounds %struct.id_map_entry, %struct.id_map_entry* %33, i32 0, i32 4
  store %struct.TYPE_2__* %32, %struct.TYPE_2__** %34, align 8
  %35 = load %struct.id_map_entry*, %struct.id_map_entry** %9, align 8
  %36 = getelementptr inbounds %struct.id_map_entry, %struct.id_map_entry* %35, i32 0, i32 3
  %37 = load i32, i32* @id_map_ent_timeout, align 4
  %38 = call i32 @INIT_DELAYED_WORK(i32* %36, i32 %37)
  %39 = load %struct.mlx4_ib_sriov*, %struct.mlx4_ib_sriov** %10, align 8
  %40 = getelementptr inbounds %struct.mlx4_ib_sriov, %struct.mlx4_ib_sriov* %39, i32 0, i32 3
  %41 = load %struct.id_map_entry*, %struct.id_map_entry** %9, align 8
  %42 = getelementptr inbounds %struct.id_map_entry, %struct.id_map_entry* %41, i32 0, i32 2
  %43 = load %struct.id_map_entry*, %struct.id_map_entry** %9, align 8
  %44 = load i32, i32* @xa_limit_32b, align 4
  %45 = load %struct.mlx4_ib_sriov*, %struct.mlx4_ib_sriov** %10, align 8
  %46 = getelementptr inbounds %struct.mlx4_ib_sriov, %struct.mlx4_ib_sriov* %45, i32 0, i32 2
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i32 @xa_alloc_cyclic(i32* %40, i32* %42, %struct.id_map_entry* %43, i32 %44, i32* %46, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp sge i32 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %22
  %52 = load %struct.mlx4_ib_sriov*, %struct.mlx4_ib_sriov** %10, align 8
  %53 = getelementptr inbounds %struct.mlx4_ib_sriov, %struct.mlx4_ib_sriov* %52, i32 0, i32 0
  %54 = call i32 @spin_lock(i32* %53)
  %55 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %56 = load %struct.id_map_entry*, %struct.id_map_entry** %9, align 8
  %57 = call i32 @sl_id_map_add(%struct.ib_device* %55, %struct.id_map_entry* %56)
  %58 = load %struct.id_map_entry*, %struct.id_map_entry** %9, align 8
  %59 = getelementptr inbounds %struct.id_map_entry, %struct.id_map_entry* %58, i32 0, i32 1
  %60 = load %struct.mlx4_ib_sriov*, %struct.mlx4_ib_sriov** %10, align 8
  %61 = getelementptr inbounds %struct.mlx4_ib_sriov, %struct.mlx4_ib_sriov* %60, i32 0, i32 1
  %62 = call i32 @list_add_tail(i32* %59, i32* %61)
  %63 = load %struct.mlx4_ib_sriov*, %struct.mlx4_ib_sriov** %10, align 8
  %64 = getelementptr inbounds %struct.mlx4_ib_sriov, %struct.mlx4_ib_sriov* %63, i32 0, i32 0
  %65 = call i32 @spin_unlock(i32* %64)
  %66 = load %struct.id_map_entry*, %struct.id_map_entry** %9, align 8
  store %struct.id_map_entry* %66, %struct.id_map_entry** %4, align 8
  br label %76

67:                                               ; preds = %22
  %68 = load %struct.id_map_entry*, %struct.id_map_entry** %9, align 8
  %69 = call i32 @kfree(%struct.id_map_entry* %68)
  %70 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @mlx4_ib_warn(%struct.ib_device* %70, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  %75 = call %struct.id_map_entry* @ERR_PTR(i32 %74)
  store %struct.id_map_entry* %75, %struct.id_map_entry** %4, align 8
  br label %76

76:                                               ; preds = %67, %51, %18
  %77 = load %struct.id_map_entry*, %struct.id_map_entry** %4, align 8
  ret %struct.id_map_entry* %77
}

declare dso_local %struct.TYPE_2__* @to_mdev(%struct.ib_device*) #1

declare dso_local %struct.id_map_entry* @kmalloc(i32, i32) #1

declare dso_local %struct.id_map_entry* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @xa_alloc_cyclic(i32*, i32*, %struct.id_map_entry*, i32, i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @sl_id_map_add(%struct.ib_device*, %struct.id_map_entry*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.id_map_entry*) #1

declare dso_local i32 @mlx4_ib_warn(%struct.ib_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
