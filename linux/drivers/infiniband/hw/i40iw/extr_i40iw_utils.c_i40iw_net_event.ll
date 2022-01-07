; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_net_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_net_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.neighbour = type { i32, i32, i64, i64 }
%struct.i40iw_device = type { i32, i32 }
%struct.i40iw_handler = type { %struct.i40iw_device }
%struct.net_device = type { i32 }

@NOTIFY_DONE = common dso_local global i32 0, align 4
@IP_ADDR_REGISTERED = common dso_local global i32 0, align 4
@NUD_VALID = common dso_local global i32 0, align 4
@I40IW_ARP_ADD = common dso_local global i32 0, align 4
@I40IW_ARP_DELETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40iw_net_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.neighbour*, align 8
  %9 = alloca %struct.i40iw_device*, align 8
  %10 = alloca %struct.i40iw_handler*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca [4 x i32], align 16
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.neighbour*
  store %struct.neighbour* %14, %struct.neighbour** %8, align 8
  %15 = load i64, i64* %6, align 8
  switch i64 %15, label %72 [
    i64 128, label %16
  ]

16:                                               ; preds = %3
  %17 = load %struct.neighbour*, %struct.neighbour** %8, align 8
  %18 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.net_device*
  %21 = call %struct.i40iw_handler* @i40iw_find_netdev(%struct.net_device* %20)
  store %struct.i40iw_handler* %21, %struct.i40iw_handler** %10, align 8
  %22 = load %struct.i40iw_handler*, %struct.i40iw_handler** %10, align 8
  %23 = icmp ne %struct.i40iw_handler* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %25, i32* %4, align 4
  br label %75

26:                                               ; preds = %16
  %27 = load %struct.i40iw_handler*, %struct.i40iw_handler** %10, align 8
  %28 = getelementptr inbounds %struct.i40iw_handler, %struct.i40iw_handler* %27, i32 0, i32 0
  store %struct.i40iw_device* %28, %struct.i40iw_device** %9, align 8
  %29 = load %struct.i40iw_device*, %struct.i40iw_device** %9, align 8
  %30 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IP_ADDR_REGISTERED, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %39, label %34

34:                                               ; preds = %26
  %35 = load %struct.i40iw_device*, %struct.i40iw_device** %9, align 8
  %36 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34, %26
  %40 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %40, i32* %4, align 4
  br label %75

41:                                               ; preds = %34
  %42 = load %struct.neighbour*, %struct.neighbour** %8, align 8
  %43 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i32*
  store i32* %45, i32** %11, align 8
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @i40iw_copy_ip_ntohl(i32* %46, i32* %47)
  %49 = load %struct.neighbour*, %struct.neighbour** %8, align 8
  %50 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @NUD_VALID, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %41
  %56 = load %struct.i40iw_device*, %struct.i40iw_device** %9, align 8
  %57 = load %struct.neighbour*, %struct.neighbour** %8, align 8
  %58 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %61 = load i32, i32* @I40IW_ARP_ADD, align 4
  %62 = call i32 @i40iw_manage_arp_cache(%struct.i40iw_device* %56, i32 %59, i32* %60, i32 0, i32 %61)
  br label %71

63:                                               ; preds = %41
  %64 = load %struct.i40iw_device*, %struct.i40iw_device** %9, align 8
  %65 = load %struct.neighbour*, %struct.neighbour** %8, align 8
  %66 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %69 = load i32, i32* @I40IW_ARP_DELETE, align 4
  %70 = call i32 @i40iw_manage_arp_cache(%struct.i40iw_device* %64, i32 %67, i32* %68, i32 0, i32 %69)
  br label %71

71:                                               ; preds = %63, %55
  br label %73

72:                                               ; preds = %3
  br label %73

73:                                               ; preds = %72, %71
  %74 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %73, %39, %24
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.i40iw_handler* @i40iw_find_netdev(%struct.net_device*) #1

declare dso_local i32 @i40iw_copy_ip_ntohl(i32*, i32*) #1

declare dso_local i32 @i40iw_manage_arp_cache(%struct.i40iw_device*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
