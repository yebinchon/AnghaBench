; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_del_macip_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_del_macip_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { %struct.i40iw_cqp }
%struct.i40iw_cqp = type { i32 }
%struct.i40iw_cqp_request = type { %struct.cqp_commands_info }
%struct.cqp_commands_info = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i32, i32* }

@.str = private unnamed_addr constant [27 x i8] c"cqp_request memory failed\0A\00", align 1
@OP_DELETE_LOCAL_MAC_IPADDR_ENTRY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"CQP-OP Del MAC Ip entry fail\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_device*, i32)* @i40iw_del_macip_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_del_macip_entry(%struct.i40iw_device* %0, i32 %1) #0 {
  %3 = alloca %struct.i40iw_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40iw_cqp*, align 8
  %6 = alloca %struct.i40iw_cqp_request*, align 8
  %7 = alloca %struct.cqp_commands_info*, align 8
  %8 = alloca i32, align 4
  store %struct.i40iw_device* %0, %struct.i40iw_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %10 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %9, i32 0, i32 0
  store %struct.i40iw_cqp* %10, %struct.i40iw_cqp** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.i40iw_cqp*, %struct.i40iw_cqp** %5, align 8
  %12 = call %struct.i40iw_cqp_request* @i40iw_get_cqp_request(%struct.i40iw_cqp* %11, i32 1)
  store %struct.i40iw_cqp_request* %12, %struct.i40iw_cqp_request** %6, align 8
  %13 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %6, align 8
  %14 = icmp ne %struct.i40iw_cqp_request* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %57

17:                                               ; preds = %2
  %18 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %6, align 8
  %19 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %18, i32 0, i32 0
  store %struct.cqp_commands_info* %19, %struct.cqp_commands_info** %7, align 8
  %20 = load i32, i32* @OP_DELETE_LOCAL_MAC_IPADDR_ENTRY, align 4
  %21 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %7, align 8
  %22 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %7, align 8
  %24 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.i40iw_cqp*, %struct.i40iw_cqp** %5, align 8
  %26 = getelementptr inbounds %struct.i40iw_cqp, %struct.i40iw_cqp* %25, i32 0, i32 0
  %27 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %7, align 8
  %28 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  store i32* %26, i32** %31, align 8
  %32 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %6, align 8
  %33 = ptrtoint %struct.i40iw_cqp_request* %32 to i64
  %34 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %7, align 8
  %35 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i64 %33, i64* %38, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %7, align 8
  %41 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  store i32 %39, i32* %44, align 8
  %45 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %7, align 8
  %46 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %51 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %6, align 8
  %52 = call i32 @i40iw_handle_cqp_op(%struct.i40iw_device* %50, %struct.i40iw_cqp_request* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %17
  %56 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %15, %55, %17
  ret void
}

declare dso_local %struct.i40iw_cqp_request* @i40iw_get_cqp_request(%struct.i40iw_cqp*, i32) #1

declare dso_local i32 @i40iw_pr_err(i8*) #1

declare dso_local i32 @i40iw_handle_cqp_op(%struct.i40iw_device*, %struct.i40iw_cqp_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
