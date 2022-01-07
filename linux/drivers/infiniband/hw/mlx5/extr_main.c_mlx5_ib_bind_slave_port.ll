; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_bind_slave_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_bind_slave_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.mlx5_ib_multiport_info* }
%struct.mlx5_ib_multiport_info = type { %struct.TYPE_6__, i32, %struct.mlx5_ib_dev* }
%struct.TYPE_6__ = type { i32* }

@mlx5_ib_multiport_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"port %d already affiliated.\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"failed adding netdev notifier for port %u\0A\00", align 1
@mlx5_ib_event_slave_port = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.mlx5_ib_multiport_info*)* @mlx5_ib_bind_slave_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_ib_bind_slave_port(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_multiport_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_ib_dev*, align 8
  %5 = alloca %struct.mlx5_ib_multiport_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %4, align 8
  store %struct.mlx5_ib_multiport_info* %1, %struct.mlx5_ib_multiport_info** %5, align 8
  %8 = load %struct.mlx5_ib_multiport_info*, %struct.mlx5_ib_multiport_info** %5, align 8
  %9 = getelementptr inbounds %struct.mlx5_ib_multiport_info, %struct.mlx5_ib_multiport_info* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @mlx5_core_native_port_num(i32 %10)
  %12 = sub i64 %11, 1
  store i64 %12, i64* %6, align 8
  %13 = call i32 @lockdep_assert_held(i32* @mlx5_ib_multiport_mutex)
  %14 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %15 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %23 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load %struct.mlx5_ib_multiport_info*, %struct.mlx5_ib_multiport_info** %28, align 8
  %30 = icmp ne %struct.mlx5_ib_multiport_info* %29, null
  br i1 %30, label %31, label %44

31:                                               ; preds = %2
  %32 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %33 = load i64, i64* %6, align 8
  %34 = add i64 %33, 1
  %35 = call i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev* %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %34)
  %36 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %37 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = call i32 @spin_unlock(i32* %42)
  store i32 0, i32* %3, align 4
  br label %116

44:                                               ; preds = %2
  %45 = load %struct.mlx5_ib_multiport_info*, %struct.mlx5_ib_multiport_info** %5, align 8
  %46 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %47 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store %struct.mlx5_ib_multiport_info* %45, %struct.mlx5_ib_multiport_info** %52, align 8
  %53 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %54 = load %struct.mlx5_ib_multiport_info*, %struct.mlx5_ib_multiport_info** %5, align 8
  %55 = getelementptr inbounds %struct.mlx5_ib_multiport_info, %struct.mlx5_ib_multiport_info* %54, i32 0, i32 2
  store %struct.mlx5_ib_dev* %53, %struct.mlx5_ib_dev** %55, align 8
  %56 = load %struct.mlx5_ib_multiport_info*, %struct.mlx5_ib_multiport_info** %5, align 8
  %57 = getelementptr inbounds %struct.mlx5_ib_multiport_info, %struct.mlx5_ib_multiport_info* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i32* null, i32** %58, align 8
  %59 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %60 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %59, i32 0, i32 1
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = load i64, i64* %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = call i32 @spin_unlock(i32* %65)
  %67 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %68 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.mlx5_ib_multiport_info*, %struct.mlx5_ib_multiport_info** %5, align 8
  %71 = getelementptr inbounds %struct.mlx5_ib_multiport_info, %struct.mlx5_ib_multiport_info* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @mlx5_nic_vport_affiliate_multiport(i32 %69, i32 %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %44
  br label %112

77:                                               ; preds = %44
  %78 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %79 = load %struct.mlx5_ib_multiport_info*, %struct.mlx5_ib_multiport_info** %5, align 8
  %80 = getelementptr inbounds %struct.mlx5_ib_multiport_info, %struct.mlx5_ib_multiport_info* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @mlx5_core_native_port_num(i32 %81)
  %83 = call i32 @get_port_caps(%struct.mlx5_ib_dev* %78, i64 %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  br label %112

87:                                               ; preds = %77
  %88 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %89 = load i64, i64* %6, align 8
  %90 = call i32 @mlx5_add_netdev_notifier(%struct.mlx5_ib_dev* %88, i64 %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %87
  %94 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %95 = load i64, i64* %6, align 8
  %96 = add i64 %95, 1
  %97 = call i32 @mlx5_ib_err(%struct.mlx5_ib_dev* %94, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %96)
  br label %112

98:                                               ; preds = %87
  %99 = load i32*, i32** @mlx5_ib_event_slave_port, align 8
  %100 = load %struct.mlx5_ib_multiport_info*, %struct.mlx5_ib_multiport_info** %5, align 8
  %101 = getelementptr inbounds %struct.mlx5_ib_multiport_info, %struct.mlx5_ib_multiport_info* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  store i32* %99, i32** %102, align 8
  %103 = load %struct.mlx5_ib_multiport_info*, %struct.mlx5_ib_multiport_info** %5, align 8
  %104 = getelementptr inbounds %struct.mlx5_ib_multiport_info, %struct.mlx5_ib_multiport_info* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.mlx5_ib_multiport_info*, %struct.mlx5_ib_multiport_info** %5, align 8
  %107 = getelementptr inbounds %struct.mlx5_ib_multiport_info, %struct.mlx5_ib_multiport_info* %106, i32 0, i32 0
  %108 = call i32 @mlx5_notifier_register(i32 %105, %struct.TYPE_6__* %107)
  %109 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %110 = load i64, i64* %6, align 8
  %111 = call i32 @mlx5_ib_init_cong_debugfs(%struct.mlx5_ib_dev* %109, i64 %110)
  store i32 1, i32* %3, align 4
  br label %116

112:                                              ; preds = %93, %86, %76
  %113 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %114 = load %struct.mlx5_ib_multiport_info*, %struct.mlx5_ib_multiport_info** %5, align 8
  %115 = call i32 @mlx5_ib_unbind_slave_port(%struct.mlx5_ib_dev* %113, %struct.mlx5_ib_multiport_info* %114)
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %112, %98, %31
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i64 @mlx5_core_native_port_num(i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev*, i8*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mlx5_nic_vport_affiliate_multiport(i32, i32) #1

declare dso_local i32 @get_port_caps(%struct.mlx5_ib_dev*, i64) #1

declare dso_local i32 @mlx5_add_netdev_notifier(%struct.mlx5_ib_dev*, i64) #1

declare dso_local i32 @mlx5_ib_err(%struct.mlx5_ib_dev*, i8*, i64) #1

declare dso_local i32 @mlx5_notifier_register(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @mlx5_ib_init_cong_debugfs(%struct.mlx5_ib_dev*, i64) #1

declare dso_local i32 @mlx5_ib_unbind_slave_port(%struct.mlx5_ib_dev*, %struct.mlx5_ib_multiport_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
