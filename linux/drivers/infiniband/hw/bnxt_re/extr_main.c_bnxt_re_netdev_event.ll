; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_main.c_bnxt_re_netdev_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_main.c_bnxt_re_netdev_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i32 }
%struct.bnxt_re_work = type { i64, i32, %struct.net_device*, %struct.bnxt_re_dev* }
%struct.bnxt_re_dev = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Failed to register with the device %s: %#x\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@bnxt_re_task = common dso_local global i32 0, align 4
@bnxt_re_wq = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @bnxt_re_netdev_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_re_netdev_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.bnxt_re_work*, align 8
  %10 = alloca %struct.bnxt_re_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call %struct.net_device* @netdev_notifier_info_to_dev(i8* %13)
  store %struct.net_device* %14, %struct.net_device** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.net_device*, %struct.net_device** %8, align 8
  %16 = call %struct.net_device* @rdma_vlan_dev_real_dev(%struct.net_device* %15)
  store %struct.net_device* %16, %struct.net_device** %7, align 8
  %17 = load %struct.net_device*, %struct.net_device** %7, align 8
  %18 = icmp ne %struct.net_device* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %20, %struct.net_device** %7, align 8
  br label %21

21:                                               ; preds = %19, %3
  %22 = load %struct.net_device*, %struct.net_device** %7, align 8
  %23 = call %struct.bnxt_re_dev* @bnxt_re_from_netdev(%struct.net_device* %22)
  store %struct.bnxt_re_dev* %23, %struct.bnxt_re_dev** %10, align 8
  %24 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %25 = icmp ne %struct.bnxt_re_dev* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load i64, i64* %5, align 8
  %28 = icmp ne i64 %27, 129
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %113

30:                                               ; preds = %26, %21
  %31 = load %struct.net_device*, %struct.net_device** %7, align 8
  %32 = load %struct.net_device*, %struct.net_device** %8, align 8
  %33 = icmp ne %struct.net_device* %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %113

35:                                               ; preds = %30
  %36 = load i64, i64* %5, align 8
  switch i64 %36, label %74 [
    i64 129, label %37
    i64 128, label %61
  ]

37:                                               ; preds = %35
  %38 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %39 = icmp ne %struct.bnxt_re_dev* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %75

41:                                               ; preds = %37
  %42 = load %struct.net_device*, %struct.net_device** %7, align 8
  %43 = call i32 @bnxt_re_dev_reg(%struct.bnxt_re_dev** %10, %struct.net_device* %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %75

49:                                               ; preds = %41
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load %struct.net_device*, %struct.net_device** %7, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56)
  br label %75

58:                                               ; preds = %49
  %59 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %60 = call i32 @bnxt_re_init_one(%struct.bnxt_re_dev* %59)
  store i32 1, i32* %12, align 4
  br label %75

61:                                               ; preds = %35
  %62 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %63 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %62, i32 0, i32 0
  %64 = call i32 @atomic_read(i32* %63)
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %113

67:                                               ; preds = %61
  %68 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %69 = call i32 @bnxt_re_ib_unreg(%struct.bnxt_re_dev* %68)
  %70 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %71 = call i32 @bnxt_re_remove_one(%struct.bnxt_re_dev* %70)
  %72 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %73 = call i32 @bnxt_re_dev_unreg(%struct.bnxt_re_dev* %72)
  br label %75

74:                                               ; preds = %35
  store i32 1, i32* %12, align 4
  br label %75

75:                                               ; preds = %74, %67, %58, %52, %48, %40
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %112

78:                                               ; preds = %75
  %79 = load i32, i32* @GFP_ATOMIC, align 4
  %80 = call %struct.bnxt_re_work* @kzalloc(i32 32, i32 %79)
  store %struct.bnxt_re_work* %80, %struct.bnxt_re_work** %9, align 8
  %81 = load %struct.bnxt_re_work*, %struct.bnxt_re_work** %9, align 8
  %82 = icmp ne %struct.bnxt_re_work* %81, null
  br i1 %82, label %83, label %111

83:                                               ; preds = %78
  %84 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %85 = load %struct.bnxt_re_work*, %struct.bnxt_re_work** %9, align 8
  %86 = getelementptr inbounds %struct.bnxt_re_work, %struct.bnxt_re_work* %85, i32 0, i32 3
  store %struct.bnxt_re_dev* %84, %struct.bnxt_re_dev** %86, align 8
  %87 = load i64, i64* %5, align 8
  %88 = load %struct.bnxt_re_work*, %struct.bnxt_re_work** %9, align 8
  %89 = getelementptr inbounds %struct.bnxt_re_work, %struct.bnxt_re_work* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load %struct.net_device*, %struct.net_device** %7, align 8
  %91 = load %struct.net_device*, %struct.net_device** %8, align 8
  %92 = icmp eq %struct.net_device* %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %83
  br label %96

94:                                               ; preds = %83
  %95 = load %struct.net_device*, %struct.net_device** %8, align 8
  br label %96

96:                                               ; preds = %94, %93
  %97 = phi %struct.net_device* [ null, %93 ], [ %95, %94 ]
  %98 = load %struct.bnxt_re_work*, %struct.bnxt_re_work** %9, align 8
  %99 = getelementptr inbounds %struct.bnxt_re_work, %struct.bnxt_re_work* %98, i32 0, i32 2
  store %struct.net_device* %97, %struct.net_device** %99, align 8
  %100 = load %struct.bnxt_re_work*, %struct.bnxt_re_work** %9, align 8
  %101 = getelementptr inbounds %struct.bnxt_re_work, %struct.bnxt_re_work* %100, i32 0, i32 1
  %102 = load i32, i32* @bnxt_re_task, align 4
  %103 = call i32 @INIT_WORK(i32* %101, i32 %102)
  %104 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %105 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %104, i32 0, i32 0
  %106 = call i32 @atomic_inc(i32* %105)
  %107 = load i32, i32* @bnxt_re_wq, align 4
  %108 = load %struct.bnxt_re_work*, %struct.bnxt_re_work** %9, align 8
  %109 = getelementptr inbounds %struct.bnxt_re_work, %struct.bnxt_re_work* %108, i32 0, i32 1
  %110 = call i32 @queue_work(i32 %107, i32* %109)
  br label %111

111:                                              ; preds = %96, %78
  br label %112

112:                                              ; preds = %111, %75
  br label %113

113:                                              ; preds = %112, %66, %34, %29
  %114 = load i32, i32* @NOTIFY_DONE, align 4
  ret i32 %114
}

declare dso_local %struct.net_device* @netdev_notifier_info_to_dev(i8*) #1

declare dso_local %struct.net_device* @rdma_vlan_dev_real_dev(%struct.net_device*) #1

declare dso_local %struct.bnxt_re_dev* @bnxt_re_from_netdev(%struct.net_device*) #1

declare dso_local i32 @bnxt_re_dev_reg(%struct.bnxt_re_dev**, %struct.net_device*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @bnxt_re_init_one(%struct.bnxt_re_dev*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @bnxt_re_ib_unreg(%struct.bnxt_re_dev*) #1

declare dso_local i32 @bnxt_re_remove_one(%struct.bnxt_re_dev*) #1

declare dso_local i32 @bnxt_re_dev_unreg(%struct.bnxt_re_dev*) #1

declare dso_local %struct.bnxt_re_work* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
