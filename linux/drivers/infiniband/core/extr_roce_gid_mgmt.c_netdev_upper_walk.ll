; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_roce_gid_mgmt.c_netdev_upper_walk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_roce_gid_mgmt.c_netdev_upper_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.upper_list = type { %struct.net_device*, i32 }
%struct.list_head = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @netdev_upper_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdev_upper_walk(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.upper_list*, align 8
  %7 = alloca %struct.list_head*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* @GFP_ATOMIC, align 4
  %9 = call %struct.upper_list* @kmalloc(i32 16, i32 %8)
  store %struct.upper_list* %9, %struct.upper_list** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.list_head*
  store %struct.list_head* %11, %struct.list_head** %7, align 8
  %12 = load %struct.upper_list*, %struct.upper_list** %6, align 8
  %13 = icmp ne %struct.upper_list* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %25

15:                                               ; preds = %2
  %16 = load %struct.upper_list*, %struct.upper_list** %6, align 8
  %17 = getelementptr inbounds %struct.upper_list, %struct.upper_list* %16, i32 0, i32 1
  %18 = load %struct.list_head*, %struct.list_head** %7, align 8
  %19 = call i32 @list_add_tail(i32* %17, %struct.list_head* %18)
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = call i32 @dev_hold(%struct.net_device* %20)
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = load %struct.upper_list*, %struct.upper_list** %6, align 8
  %24 = getelementptr inbounds %struct.upper_list, %struct.upper_list* %23, i32 0, i32 0
  store %struct.net_device* %22, %struct.net_device** %24, align 8
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %15, %14
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local %struct.upper_list* @kmalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
