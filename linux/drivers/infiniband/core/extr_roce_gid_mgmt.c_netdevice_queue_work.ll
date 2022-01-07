; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_roce_gid_mgmt.c_netdevice_queue_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_roce_gid_mgmt.c_netdevice_queue_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netdev_event_work_cmd = type { i32 }
%struct.net_device = type { i32 }
%struct.netdev_event_work = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.net_device*, %struct.net_device*, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@netdevice_event_work_handler = common dso_local global i32 0, align 4
@gid_cache_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netdev_event_work_cmd*, %struct.net_device*)* @netdevice_queue_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdevice_queue_work(%struct.netdev_event_work_cmd* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netdev_event_work_cmd*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.netdev_event_work*, align 8
  store %struct.netdev_event_work_cmd* %0, %struct.netdev_event_work_cmd** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.netdev_event_work* @kmalloc(i32 16, i32 %8)
  store %struct.netdev_event_work* %9, %struct.netdev_event_work** %7, align 8
  %10 = load %struct.netdev_event_work*, %struct.netdev_event_work** %7, align 8
  %11 = icmp ne %struct.netdev_event_work* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %13, i32* %3, align 4
  br label %109

14:                                               ; preds = %2
  %15 = load %struct.netdev_event_work*, %struct.netdev_event_work** %7, align 8
  %16 = getelementptr inbounds %struct.netdev_event_work, %struct.netdev_event_work* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = load %struct.netdev_event_work_cmd*, %struct.netdev_event_work_cmd** %4, align 8
  %19 = call i32 @memcpy(%struct.TYPE_3__* %17, %struct.netdev_event_work_cmd* %18, i32 8)
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %96, %14
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.netdev_event_work*, %struct.netdev_event_work** %7, align 8
  %23 = getelementptr inbounds %struct.netdev_event_work, %struct.netdev_event_work* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %24)
  %26 = icmp ult i32 %21, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %20
  %28 = load %struct.netdev_event_work*, %struct.netdev_event_work** %7, align 8
  %29 = getelementptr inbounds %struct.netdev_event_work, %struct.netdev_event_work* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %27, %20
  %38 = phi i1 [ false, %20 ], [ %36, %27 ]
  br i1 %38, label %39, label %99

39:                                               ; preds = %37
  %40 = load %struct.netdev_event_work*, %struct.netdev_event_work** %7, align 8
  %41 = getelementptr inbounds %struct.netdev_event_work, %struct.netdev_event_work* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load %struct.net_device*, %struct.net_device** %46, align 8
  %48 = icmp ne %struct.net_device* %47, null
  br i1 %48, label %58, label %49

49:                                               ; preds = %39
  %50 = load %struct.net_device*, %struct.net_device** %5, align 8
  %51 = load %struct.netdev_event_work*, %struct.netdev_event_work** %7, align 8
  %52 = getelementptr inbounds %struct.netdev_event_work, %struct.netdev_event_work* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  store %struct.net_device* %50, %struct.net_device** %57, align 8
  br label %58

58:                                               ; preds = %49, %39
  %59 = load %struct.netdev_event_work*, %struct.netdev_event_work** %7, align 8
  %60 = getelementptr inbounds %struct.netdev_event_work, %struct.netdev_event_work* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load %struct.net_device*, %struct.net_device** %65, align 8
  %67 = icmp ne %struct.net_device* %66, null
  br i1 %67, label %77, label %68

68:                                               ; preds = %58
  %69 = load %struct.net_device*, %struct.net_device** %5, align 8
  %70 = load %struct.netdev_event_work*, %struct.netdev_event_work** %7, align 8
  %71 = getelementptr inbounds %struct.netdev_event_work, %struct.netdev_event_work* %70, i32 0, i32 1
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  store %struct.net_device* %69, %struct.net_device** %76, align 8
  br label %77

77:                                               ; preds = %68, %58
  %78 = load %struct.netdev_event_work*, %struct.netdev_event_work** %7, align 8
  %79 = getelementptr inbounds %struct.netdev_event_work, %struct.netdev_event_work* %78, i32 0, i32 1
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load %struct.net_device*, %struct.net_device** %84, align 8
  %86 = call i32 @dev_hold(%struct.net_device* %85)
  %87 = load %struct.netdev_event_work*, %struct.netdev_event_work** %7, align 8
  %88 = getelementptr inbounds %struct.netdev_event_work, %struct.netdev_event_work* %87, i32 0, i32 1
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load %struct.net_device*, %struct.net_device** %93, align 8
  %95 = call i32 @dev_hold(%struct.net_device* %94)
  br label %96

96:                                               ; preds = %77
  %97 = load i32, i32* %6, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %6, align 4
  br label %20

99:                                               ; preds = %37
  %100 = load %struct.netdev_event_work*, %struct.netdev_event_work** %7, align 8
  %101 = getelementptr inbounds %struct.netdev_event_work, %struct.netdev_event_work* %100, i32 0, i32 0
  %102 = load i32, i32* @netdevice_event_work_handler, align 4
  %103 = call i32 @INIT_WORK(i32* %101, i32 %102)
  %104 = load i32, i32* @gid_cache_wq, align 4
  %105 = load %struct.netdev_event_work*, %struct.netdev_event_work** %7, align 8
  %106 = getelementptr inbounds %struct.netdev_event_work, %struct.netdev_event_work* %105, i32 0, i32 0
  %107 = call i32 @queue_work(i32 %104, i32* %106)
  %108 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %99, %12
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local %struct.netdev_event_work* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_3__*, %struct.netdev_event_work_cmd*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
