; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_add_mac_ipaddr_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_add_mac_ipaddr_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { %struct.i40iw_cqp }
%struct.i40iw_cqp = type { i32 }
%struct.i40iw_local_mac_ipaddr_entry_info = type { i32, i32 }
%struct.i40iw_cqp_request = type { %struct.cqp_commands_info }
%struct.cqp_commands_info = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32*, %struct.i40iw_local_mac_ipaddr_entry_info }

@.str = private unnamed_addr constant [27 x i8] c"cqp_request memory failed\0A\00", align 1
@I40IW_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@OP_ADD_LOCAL_MAC_IPADDR_ENTRY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"CQP-OP Add MAC Ip entry fail\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_device*, i32*, i32)* @i40iw_add_mac_ipaddr_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_add_mac_ipaddr_entry(%struct.i40iw_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40iw_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i40iw_local_mac_ipaddr_entry_info*, align 8
  %9 = alloca %struct.i40iw_cqp*, align 8
  %10 = alloca %struct.i40iw_cqp_request*, align 8
  %11 = alloca %struct.cqp_commands_info*, align 8
  %12 = alloca i32, align 4
  store %struct.i40iw_device* %0, %struct.i40iw_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.i40iw_device*, %struct.i40iw_device** %5, align 8
  %14 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %13, i32 0, i32 0
  store %struct.i40iw_cqp* %14, %struct.i40iw_cqp** %9, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.i40iw_cqp*, %struct.i40iw_cqp** %9, align 8
  %16 = call %struct.i40iw_cqp_request* @i40iw_get_cqp_request(%struct.i40iw_cqp* %15, i32 1)
  store %struct.i40iw_cqp_request* %16, %struct.i40iw_cqp_request** %10, align 8
  %17 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %10, align 8
  %18 = icmp ne %struct.i40iw_cqp_request* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @I40IW_ERR_NO_MEMORY, align 4
  store i32 %21, i32* %4, align 4
  br label %73

22:                                               ; preds = %3
  %23 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %10, align 8
  %24 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %23, i32 0, i32 0
  store %struct.cqp_commands_info* %24, %struct.cqp_commands_info** %11, align 8
  %25 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %11, align 8
  %26 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %11, align 8
  %28 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  store %struct.i40iw_local_mac_ipaddr_entry_info* %31, %struct.i40iw_local_mac_ipaddr_entry_info** %8, align 8
  %32 = load %struct.i40iw_local_mac_ipaddr_entry_info*, %struct.i40iw_local_mac_ipaddr_entry_info** %8, align 8
  %33 = getelementptr inbounds %struct.i40iw_local_mac_ipaddr_entry_info, %struct.i40iw_local_mac_ipaddr_entry_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @ether_addr_copy(i32 %34, i32* %35)
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.i40iw_local_mac_ipaddr_entry_info*, %struct.i40iw_local_mac_ipaddr_entry_info** %8, align 8
  %39 = getelementptr inbounds %struct.i40iw_local_mac_ipaddr_entry_info, %struct.i40iw_local_mac_ipaddr_entry_info* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %10, align 8
  %41 = ptrtoint %struct.i40iw_cqp_request* %40 to i64
  %42 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %11, align 8
  %43 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i64 %41, i64* %46, align 8
  %47 = load i32, i32* @OP_ADD_LOCAL_MAC_IPADDR_ENTRY, align 4
  %48 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %11, align 8
  %49 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.i40iw_cqp*, %struct.i40iw_cqp** %9, align 8
  %51 = getelementptr inbounds %struct.i40iw_cqp, %struct.i40iw_cqp* %50, i32 0, i32 0
  %52 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %11, align 8
  %53 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  store i32* %51, i32** %56, align 8
  %57 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %10, align 8
  %58 = ptrtoint %struct.i40iw_cqp_request* %57 to i64
  %59 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %11, align 8
  %60 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i64 %58, i64* %63, align 8
  %64 = load %struct.i40iw_device*, %struct.i40iw_device** %5, align 8
  %65 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %10, align 8
  %66 = call i32 @i40iw_handle_cqp_op(%struct.i40iw_device* %64, %struct.i40iw_cqp_request* %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %22
  %70 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %22
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %71, %19
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.i40iw_cqp_request* @i40iw_get_cqp_request(%struct.i40iw_cqp*, i32) #1

declare dso_local i32 @i40iw_pr_err(i8*) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @i40iw_handle_cqp_op(%struct.i40iw_device*, %struct.i40iw_cqp_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
