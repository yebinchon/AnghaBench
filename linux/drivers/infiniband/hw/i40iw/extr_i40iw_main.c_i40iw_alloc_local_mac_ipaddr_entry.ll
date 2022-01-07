; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_alloc_local_mac_ipaddr_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_alloc_local_mac_ipaddr_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { %struct.i40iw_cqp }
%struct.i40iw_cqp = type { i32 }
%struct.i40iw_cqp_request = type { %struct.TYPE_8__, %struct.cqp_commands_info, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.cqp_commands_info = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32* }

@.str = private unnamed_addr constant [27 x i8] c"cqp_request memory failed\0A\00", align 1
@I40IW_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@OP_ALLOC_LOCAL_MAC_IPADDR_ENTRY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"CQP-OP Alloc MAC Ip entry fail\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_device*, i32*)* @i40iw_alloc_local_mac_ipaddr_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_alloc_local_mac_ipaddr_entry(%struct.i40iw_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40iw_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.i40iw_cqp*, align 8
  %7 = alloca %struct.i40iw_cqp_request*, align 8
  %8 = alloca %struct.cqp_commands_info*, align 8
  %9 = alloca i32, align 4
  store %struct.i40iw_device* %0, %struct.i40iw_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %11 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %10, i32 0, i32 0
  store %struct.i40iw_cqp* %11, %struct.i40iw_cqp** %6, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.i40iw_cqp*, %struct.i40iw_cqp** %6, align 8
  %13 = call %struct.i40iw_cqp_request* @i40iw_get_cqp_request(%struct.i40iw_cqp* %12, i32 1)
  store %struct.i40iw_cqp_request* %13, %struct.i40iw_cqp_request** %7, align 8
  %14 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %7, align 8
  %15 = icmp ne %struct.i40iw_cqp_request* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @I40IW_ERR_NO_MEMORY, align 4
  store i32 %18, i32* %3, align 4
  br label %62

19:                                               ; preds = %2
  %20 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %7, align 8
  %21 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %20, i32 0, i32 2
  %22 = call i32 @atomic_inc(i32* %21)
  %23 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %7, align 8
  %24 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %23, i32 0, i32 1
  store %struct.cqp_commands_info* %24, %struct.cqp_commands_info** %8, align 8
  %25 = load i32, i32* @OP_ALLOC_LOCAL_MAC_IPADDR_ENTRY, align 4
  %26 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %8, align 8
  %27 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %8, align 8
  %29 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.i40iw_cqp*, %struct.i40iw_cqp** %6, align 8
  %31 = getelementptr inbounds %struct.i40iw_cqp, %struct.i40iw_cqp* %30, i32 0, i32 0
  %32 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %8, align 8
  %33 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  store i32* %31, i32** %36, align 8
  %37 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %7, align 8
  %38 = ptrtoint %struct.i40iw_cqp_request* %37 to i64
  %39 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %8, align 8
  %40 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i64 %38, i64* %43, align 8
  %44 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %45 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %7, align 8
  %46 = call i32 @i40iw_handle_cqp_op(%struct.i40iw_device* %44, %struct.i40iw_cqp_request* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %19
  %50 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %7, align 8
  %51 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32*, i32** %5, align 8
  store i32 %53, i32* %54, align 4
  br label %57

55:                                               ; preds = %19
  %56 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %49
  %58 = load %struct.i40iw_cqp*, %struct.i40iw_cqp** %6, align 8
  %59 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %7, align 8
  %60 = call i32 @i40iw_put_cqp_request(%struct.i40iw_cqp* %58, %struct.i40iw_cqp_request* %59)
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %57, %16
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.i40iw_cqp_request* @i40iw_get_cqp_request(%struct.i40iw_cqp*, i32) #1

declare dso_local i32 @i40iw_pr_err(i8*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @i40iw_handle_cqp_op(%struct.i40iw_device*, %struct.i40iw_cqp_request*) #1

declare dso_local i32 @i40iw_put_cqp_request(%struct.i40iw_cqp*, %struct.i40iw_cqp_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
