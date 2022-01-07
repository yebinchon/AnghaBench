; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_unbind_slave_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_unbind_slave_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { %struct.mlx5_ib_port* }
%struct.mlx5_ib_port = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32* }
%struct.mlx5_ib_multiport_info = type { i32, i32, i32, i32, i32, %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { i32* }

@mlx5_ib_multiport_mutex = common dso_local global i32 0, align 4
@mlx5_ib_unaffiliated_port_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"unaffiliated port %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to unaffiliate port %u\0A\00", align 1
@IB_PORT_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_dev*, %struct.mlx5_ib_multiport_info*)* @mlx5_ib_unbind_slave_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_ib_unbind_slave_port(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_multiport_info* %1) #0 {
  %3 = alloca %struct.mlx5_ib_dev*, align 8
  %4 = alloca %struct.mlx5_ib_multiport_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mlx5_ib_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %3, align 8
  store %struct.mlx5_ib_multiport_info* %1, %struct.mlx5_ib_multiport_info** %4, align 8
  %10 = load %struct.mlx5_ib_multiport_info*, %struct.mlx5_ib_multiport_info** %4, align 8
  %11 = getelementptr inbounds %struct.mlx5_ib_multiport_info, %struct.mlx5_ib_multiport_info* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @mlx5_core_native_port_num(i32 %12)
  %14 = sub i64 %13, 1
  store i64 %14, i64* %5, align 8
  %15 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %16 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %15, i32 0, i32 0
  %17 = load %struct.mlx5_ib_port*, %struct.mlx5_ib_port** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds %struct.mlx5_ib_port, %struct.mlx5_ib_port* %17, i64 %18
  store %struct.mlx5_ib_port* %19, %struct.mlx5_ib_port** %6, align 8
  %20 = call i32 @lockdep_assert_held(i32* @mlx5_ib_multiport_mutex)
  %21 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @mlx5_ib_cleanup_cong_debugfs(%struct.mlx5_ib_dev* %21, i64 %22)
  %24 = load %struct.mlx5_ib_port*, %struct.mlx5_ib_port** %6, align 8
  %25 = getelementptr inbounds %struct.mlx5_ib_port, %struct.mlx5_ib_port* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load %struct.mlx5_ib_multiport_info*, %struct.mlx5_ib_multiport_info** %4, align 8
  %29 = getelementptr inbounds %struct.mlx5_ib_multiport_info, %struct.mlx5_ib_multiport_info* %28, i32 0, i32 6
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %2
  %33 = load %struct.mlx5_ib_port*, %struct.mlx5_ib_port** %6, align 8
  %34 = getelementptr inbounds %struct.mlx5_ib_port, %struct.mlx5_ib_port* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = call i32 @spin_unlock(i32* %35)
  br label %135

37:                                               ; preds = %2
  %38 = load %struct.mlx5_ib_multiport_info*, %struct.mlx5_ib_multiport_info** %4, align 8
  %39 = getelementptr inbounds %struct.mlx5_ib_multiport_info, %struct.mlx5_ib_multiport_info* %38, i32 0, i32 6
  store i32* null, i32** %39, align 8
  %40 = load %struct.mlx5_ib_port*, %struct.mlx5_ib_port** %6, align 8
  %41 = getelementptr inbounds %struct.mlx5_ib_port, %struct.mlx5_ib_port* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = call i32 @spin_unlock(i32* %42)
  %44 = load %struct.mlx5_ib_multiport_info*, %struct.mlx5_ib_multiport_info** %4, align 8
  %45 = getelementptr inbounds %struct.mlx5_ib_multiport_info, %struct.mlx5_ib_multiport_info* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %37
  %50 = load %struct.mlx5_ib_multiport_info*, %struct.mlx5_ib_multiport_info** %4, align 8
  %51 = getelementptr inbounds %struct.mlx5_ib_multiport_info, %struct.mlx5_ib_multiport_info* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.mlx5_ib_multiport_info*, %struct.mlx5_ib_multiport_info** %4, align 8
  %54 = getelementptr inbounds %struct.mlx5_ib_multiport_info, %struct.mlx5_ib_multiport_info* %53, i32 0, i32 5
  %55 = call i32 @mlx5_notifier_unregister(i32 %52, %struct.TYPE_6__* %54)
  br label %56

56:                                               ; preds = %49, %37
  %57 = load %struct.mlx5_ib_multiport_info*, %struct.mlx5_ib_multiport_info** %4, align 8
  %58 = getelementptr inbounds %struct.mlx5_ib_multiport_info, %struct.mlx5_ib_multiport_info* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i32* null, i32** %59, align 8
  %60 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %61 = load i64, i64* %5, align 8
  %62 = call i32 @mlx5_remove_netdev_notifier(%struct.mlx5_ib_dev* %60, i64 %61)
  %63 = load %struct.mlx5_ib_port*, %struct.mlx5_ib_port** %6, align 8
  %64 = getelementptr inbounds %struct.mlx5_ib_port, %struct.mlx5_ib_port* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = call i32 @spin_lock(i32* %65)
  %67 = load %struct.mlx5_ib_multiport_info*, %struct.mlx5_ib_multiport_info** %4, align 8
  %68 = getelementptr inbounds %struct.mlx5_ib_multiport_info, %struct.mlx5_ib_multiport_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %100

72:                                               ; preds = %56
  %73 = load %struct.mlx5_ib_multiport_info*, %struct.mlx5_ib_multiport_info** %4, align 8
  %74 = getelementptr inbounds %struct.mlx5_ib_multiport_info, %struct.mlx5_ib_multiport_info* %73, i32 0, i32 1
  store i32 1, i32* %74, align 4
  %75 = load %struct.mlx5_ib_multiport_info*, %struct.mlx5_ib_multiport_info** %4, align 8
  %76 = getelementptr inbounds %struct.mlx5_ib_multiport_info, %struct.mlx5_ib_multiport_info* %75, i32 0, i32 4
  %77 = call i32 @init_completion(i32* %76)
  %78 = load %struct.mlx5_ib_port*, %struct.mlx5_ib_port** %6, align 8
  %79 = getelementptr inbounds %struct.mlx5_ib_port, %struct.mlx5_ib_port* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = call i32 @spin_unlock(i32* %80)
  store i32 0, i32* %9, align 4
  br label %82

82:                                               ; preds = %90, %72
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load %struct.mlx5_ib_multiport_info*, %struct.mlx5_ib_multiport_info** %4, align 8
  %88 = getelementptr inbounds %struct.mlx5_ib_multiport_info, %struct.mlx5_ib_multiport_info* %87, i32 0, i32 4
  %89 = call i32 @wait_for_completion(i32* %88)
  br label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  br label %82

93:                                               ; preds = %82
  %94 = load %struct.mlx5_ib_port*, %struct.mlx5_ib_port** %6, align 8
  %95 = getelementptr inbounds %struct.mlx5_ib_port, %struct.mlx5_ib_port* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = call i32 @spin_lock(i32* %96)
  %98 = load %struct.mlx5_ib_multiport_info*, %struct.mlx5_ib_multiport_info** %4, align 8
  %99 = getelementptr inbounds %struct.mlx5_ib_multiport_info, %struct.mlx5_ib_multiport_info* %98, i32 0, i32 1
  store i32 0, i32* %99, align 4
  br label %100

100:                                              ; preds = %93, %56
  %101 = load %struct.mlx5_ib_port*, %struct.mlx5_ib_port** %6, align 8
  %102 = getelementptr inbounds %struct.mlx5_ib_port, %struct.mlx5_ib_port* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  store i32* null, i32** %103, align 8
  %104 = load %struct.mlx5_ib_multiport_info*, %struct.mlx5_ib_multiport_info** %4, align 8
  %105 = getelementptr inbounds %struct.mlx5_ib_multiport_info, %struct.mlx5_ib_multiport_info* %104, i32 0, i32 3
  %106 = call i32 @list_add_tail(i32* %105, i32* @mlx5_ib_unaffiliated_port_list)
  %107 = load %struct.mlx5_ib_port*, %struct.mlx5_ib_port** %6, align 8
  %108 = getelementptr inbounds %struct.mlx5_ib_port, %struct.mlx5_ib_port* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = call i32 @spin_unlock(i32* %109)
  %111 = load %struct.mlx5_ib_multiport_info*, %struct.mlx5_ib_multiport_info** %4, align 8
  %112 = getelementptr inbounds %struct.mlx5_ib_multiport_info, %struct.mlx5_ib_multiport_info* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @mlx5_nic_vport_unaffiliate_multiport(i32 %113)
  store i32 %114, i32* %8, align 4
  %115 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %116 = load i64, i64* %5, align 8
  %117 = add i64 %116, 1
  %118 = call i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev* %115, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %117)
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %100
  %122 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %123 = load i64, i64* %5, align 8
  %124 = add i64 %123, 1
  %125 = call i32 @mlx5_ib_err(%struct.mlx5_ib_dev* %122, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %124)
  br label %126

126:                                              ; preds = %121, %100
  %127 = load i32, i32* @IB_PORT_DOWN, align 4
  %128 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %129 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %128, i32 0, i32 0
  %130 = load %struct.mlx5_ib_port*, %struct.mlx5_ib_port** %129, align 8
  %131 = load i64, i64* %5, align 8
  %132 = getelementptr inbounds %struct.mlx5_ib_port, %struct.mlx5_ib_port* %130, i64 %131
  %133 = getelementptr inbounds %struct.mlx5_ib_port, %struct.mlx5_ib_port* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  store i32 %127, i32* %134, align 8
  br label %135

135:                                              ; preds = %126, %32
  ret void
}

declare dso_local i64 @mlx5_core_native_port_num(i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @mlx5_ib_cleanup_cong_debugfs(%struct.mlx5_ib_dev*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mlx5_notifier_unregister(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @mlx5_remove_netdev_notifier(%struct.mlx5_ib_dev*, i64) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mlx5_nic_vport_unaffiliate_multiport(i32) #1

declare dso_local i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev*, i8*, i64) #1

declare dso_local i32 @mlx5_ib_err(%struct.mlx5_ib_dev*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
