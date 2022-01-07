; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_net.c_fwnet_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_net.c_fwnet_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_unit = type { i32 }
%struct.fwnet_peer = type { %struct.fwnet_device* }
%struct.fwnet_device = type { i32, i64, i32, %struct.net_device* }
%struct.net_device = type { i32 }

@fwnet_device_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_unit*)* @fwnet_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwnet_remove(%struct.fw_unit* %0) #0 {
  %2 = alloca %struct.fw_unit*, align 8
  %3 = alloca %struct.fwnet_peer*, align 8
  %4 = alloca %struct.fwnet_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  store %struct.fw_unit* %0, %struct.fw_unit** %2, align 8
  %7 = load %struct.fw_unit*, %struct.fw_unit** %2, align 8
  %8 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %7, i32 0, i32 0
  %9 = call %struct.fwnet_peer* @dev_get_drvdata(i32* %8)
  store %struct.fwnet_peer* %9, %struct.fwnet_peer** %3, align 8
  %10 = load %struct.fwnet_peer*, %struct.fwnet_peer** %3, align 8
  %11 = getelementptr inbounds %struct.fwnet_peer, %struct.fwnet_peer* %10, i32 0, i32 0
  %12 = load %struct.fwnet_device*, %struct.fwnet_device** %11, align 8
  store %struct.fwnet_device* %12, %struct.fwnet_device** %4, align 8
  %13 = call i32 @mutex_lock(i32* @fwnet_device_mutex)
  %14 = load %struct.fwnet_device*, %struct.fwnet_device** %4, align 8
  %15 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %14, i32 0, i32 3
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %5, align 8
  %17 = load %struct.fwnet_peer*, %struct.fwnet_peer** %3, align 8
  %18 = load %struct.fwnet_device*, %struct.fwnet_device** %4, align 8
  %19 = call i32 @fwnet_remove_peer(%struct.fwnet_peer* %17, %struct.fwnet_device* %18)
  %20 = load %struct.fwnet_device*, %struct.fwnet_device** %4, align 8
  %21 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %20, i32 0, i32 2
  %22 = call i64 @list_empty(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %54

24:                                               ; preds = %1
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = call i32 @unregister_netdev(%struct.net_device* %25)
  %27 = load %struct.fwnet_device*, %struct.fwnet_device** %4, align 8
  %28 = call i32 @fwnet_fifo_stop(%struct.fwnet_device* %27)
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %41, %24
  %30 = load %struct.fwnet_device*, %struct.fwnet_device** %4, align 8
  %31 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 5
  br label %37

37:                                               ; preds = %34, %29
  %38 = phi i1 [ false, %29 ], [ %36, %34 ]
  br i1 %38, label %39, label %44

39:                                               ; preds = %37
  %40 = call i32 @ssleep(i32 1)
  br label %41

41:                                               ; preds = %39
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %29

44:                                               ; preds = %37
  %45 = load %struct.fwnet_device*, %struct.fwnet_device** %4, align 8
  %46 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @WARN_ON(i64 %47)
  %49 = load %struct.fwnet_device*, %struct.fwnet_device** %4, align 8
  %50 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %49, i32 0, i32 0
  %51 = call i32 @list_del(i32* %50)
  %52 = load %struct.net_device*, %struct.net_device** %5, align 8
  %53 = call i32 @free_netdev(%struct.net_device* %52)
  br label %54

54:                                               ; preds = %44, %1
  %55 = call i32 @mutex_unlock(i32* @fwnet_device_mutex)
  ret void
}

declare dso_local %struct.fwnet_peer* @dev_get_drvdata(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fwnet_remove_peer(%struct.fwnet_peer*, %struct.fwnet_device*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @fwnet_fifo_stop(%struct.fwnet_device*) #1

declare dso_local i32 @ssleep(i32) #1

declare dso_local i32 @WARN_ON(i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
