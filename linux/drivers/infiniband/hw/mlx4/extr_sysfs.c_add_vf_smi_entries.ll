; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_sysfs.c_add_vf_smi_entries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_sysfs.c_add_vf_smi_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_port = type { i64, %struct.TYPE_9__, i32, %struct.TYPE_8__, %struct.TYPE_7__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__, i32*, i32 }
%struct.TYPE_10__ = type { i8*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_10__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@IB_LINK_LAYER_ETHERNET = common dso_local global i64 0, align 8
@sysfs_show_smi_enabled = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"smi_enabled\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to create smi_enabled\0A\00", align 1
@sysfs_show_enable_smi_admin = common dso_local global i32 0, align 4
@sysfs_store_enable_smi_admin = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"enable_smi_admin\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"failed to create enable_smi_admin\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_port*)* @add_vf_smi_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_vf_smi_entries(%struct.mlx4_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mlx4_port* %0, %struct.mlx4_port** %3, align 8
  %6 = load %struct.mlx4_port*, %struct.mlx4_port** %3, align 8
  %7 = getelementptr inbounds %struct.mlx4_port, %struct.mlx4_port* %6, i32 0, i32 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %10 = load %struct.mlx4_port*, %struct.mlx4_port** %3, align 8
  %11 = getelementptr inbounds %struct.mlx4_port, %struct.mlx4_port* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @rdma_port_get_link_layer(i32* %9, i32 %12)
  %14 = load i64, i64* @IB_LINK_LAYER_ETHERNET, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %1
  %20 = load %struct.mlx4_port*, %struct.mlx4_port** %3, align 8
  %21 = getelementptr inbounds %struct.mlx4_port, %struct.mlx4_port* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.mlx4_port*, %struct.mlx4_port** %3, align 8
  %24 = getelementptr inbounds %struct.mlx4_port, %struct.mlx4_port* %23, i32 0, i32 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @mlx4_master_func_num(i32 %27)
  %29 = icmp eq i64 %22, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %19, %1
  store i32 0, i32* %2, align 4
  br label %101

31:                                               ; preds = %19
  %32 = load %struct.mlx4_port*, %struct.mlx4_port** %3, align 8
  %33 = getelementptr inbounds %struct.mlx4_port, %struct.mlx4_port* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = call i32 @sysfs_attr_init(%struct.TYPE_10__* %34)
  %36 = load i32, i32* @sysfs_show_smi_enabled, align 4
  %37 = load %struct.mlx4_port*, %struct.mlx4_port** %3, align 8
  %38 = getelementptr inbounds %struct.mlx4_port, %struct.mlx4_port* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  store i32 %36, i32* %39, align 8
  %40 = load %struct.mlx4_port*, %struct.mlx4_port** %3, align 8
  %41 = getelementptr inbounds %struct.mlx4_port, %struct.mlx4_port* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  store i32* null, i32** %42, align 8
  %43 = load %struct.mlx4_port*, %struct.mlx4_port** %3, align 8
  %44 = getelementptr inbounds %struct.mlx4_port, %struct.mlx4_port* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %46, align 8
  %47 = load %struct.mlx4_port*, %struct.mlx4_port** %3, align 8
  %48 = getelementptr inbounds %struct.mlx4_port, %struct.mlx4_port* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  store i32 292, i32* %50, align 8
  %51 = load %struct.mlx4_port*, %struct.mlx4_port** %3, align 8
  %52 = getelementptr inbounds %struct.mlx4_port, %struct.mlx4_port* %51, i32 0, i32 2
  %53 = load %struct.mlx4_port*, %struct.mlx4_port** %3, align 8
  %54 = getelementptr inbounds %struct.mlx4_port, %struct.mlx4_port* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = call i32 @sysfs_create_file(i32* %52, %struct.TYPE_10__* %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %31
  %60 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  br label %101

62:                                               ; preds = %31
  %63 = load %struct.mlx4_port*, %struct.mlx4_port** %3, align 8
  %64 = getelementptr inbounds %struct.mlx4_port, %struct.mlx4_port* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = call i32 @sysfs_attr_init(%struct.TYPE_10__* %65)
  %67 = load i32, i32* @sysfs_show_enable_smi_admin, align 4
  %68 = load %struct.mlx4_port*, %struct.mlx4_port** %3, align 8
  %69 = getelementptr inbounds %struct.mlx4_port, %struct.mlx4_port* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 2
  store i32 %67, i32* %70, align 4
  %71 = load i32, i32* @sysfs_store_enable_smi_admin, align 4
  %72 = load %struct.mlx4_port*, %struct.mlx4_port** %3, align 8
  %73 = getelementptr inbounds %struct.mlx4_port, %struct.mlx4_port* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 8
  %75 = load %struct.mlx4_port*, %struct.mlx4_port** %3, align 8
  %76 = getelementptr inbounds %struct.mlx4_port, %struct.mlx4_port* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8** %78, align 8
  %79 = load %struct.mlx4_port*, %struct.mlx4_port** %3, align 8
  %80 = getelementptr inbounds %struct.mlx4_port, %struct.mlx4_port* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  store i32 420, i32* %82, align 8
  %83 = load %struct.mlx4_port*, %struct.mlx4_port** %3, align 8
  %84 = getelementptr inbounds %struct.mlx4_port, %struct.mlx4_port* %83, i32 0, i32 2
  %85 = load %struct.mlx4_port*, %struct.mlx4_port** %3, align 8
  %86 = getelementptr inbounds %struct.mlx4_port, %struct.mlx4_port* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = call i32 @sysfs_create_file(i32* %84, %struct.TYPE_10__* %87)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %62
  %92 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %93 = load %struct.mlx4_port*, %struct.mlx4_port** %3, align 8
  %94 = getelementptr inbounds %struct.mlx4_port, %struct.mlx4_port* %93, i32 0, i32 2
  %95 = load %struct.mlx4_port*, %struct.mlx4_port** %3, align 8
  %96 = getelementptr inbounds %struct.mlx4_port, %struct.mlx4_port* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = call i32 @sysfs_remove_file(i32* %94, %struct.TYPE_10__* %97)
  %99 = load i32, i32* %5, align 4
  store i32 %99, i32* %2, align 4
  br label %101

100:                                              ; preds = %62
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %100, %91, %59, %30
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i64 @rdma_port_get_link_layer(i32*, i32) #1

declare dso_local i64 @mlx4_master_func_num(i32) #1

declare dso_local i32 @sysfs_attr_init(%struct.TYPE_10__*) #1

declare dso_local i32 @sysfs_create_file(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @sysfs_remove_file(i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
