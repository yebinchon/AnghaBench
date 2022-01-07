; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_hw.c_i40iw_cqp_manage_abvpt_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_hw.c_i40iw_cqp_manage_abvpt_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.i40iw_apbvt_info = type { i32, i32 }
%struct.i40iw_cqp_request = type { %struct.cqp_commands_info }
%struct.cqp_commands_info = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32*, %struct.i40iw_apbvt_info }

@I40IW_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@OP_MANAGE_APBVT_ENTRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"CQP-OP Manage APBVT entry fail\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_device*, i32, i32)* @i40iw_cqp_manage_abvpt_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_cqp_manage_abvpt_cmd(%struct.i40iw_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40iw_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i40iw_apbvt_info*, align 8
  %9 = alloca %struct.i40iw_cqp_request*, align 8
  %10 = alloca %struct.cqp_commands_info*, align 8
  %11 = alloca i32, align 4
  store %struct.i40iw_device* %0, %struct.i40iw_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.i40iw_device*, %struct.i40iw_device** %5, align 8
  %13 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %12, i32 0, i32 0
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.i40iw_cqp_request* @i40iw_get_cqp_request(%struct.TYPE_8__* %13, i32 %14)
  store %struct.i40iw_cqp_request* %15, %struct.i40iw_cqp_request** %9, align 8
  %16 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %9, align 8
  %17 = icmp ne %struct.i40iw_cqp_request* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @I40IW_ERR_NO_MEMORY, align 4
  store i32 %19, i32* %4, align 4
  br label %66

20:                                               ; preds = %3
  %21 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %9, align 8
  %22 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %21, i32 0, i32 0
  store %struct.cqp_commands_info* %22, %struct.cqp_commands_info** %10, align 8
  %23 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %10, align 8
  %24 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  store %struct.i40iw_apbvt_info* %27, %struct.i40iw_apbvt_info** %8, align 8
  %28 = load %struct.i40iw_apbvt_info*, %struct.i40iw_apbvt_info** %8, align 8
  %29 = call i32 @memset(%struct.i40iw_apbvt_info* %28, i32 0, i32 8)
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.i40iw_apbvt_info*, %struct.i40iw_apbvt_info** %8, align 8
  %32 = getelementptr inbounds %struct.i40iw_apbvt_info, %struct.i40iw_apbvt_info* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @cpu_to_le16(i32 %33)
  %35 = load %struct.i40iw_apbvt_info*, %struct.i40iw_apbvt_info** %8, align 8
  %36 = getelementptr inbounds %struct.i40iw_apbvt_info, %struct.i40iw_apbvt_info* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @OP_MANAGE_APBVT_ENTRY, align 4
  %38 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %10, align 8
  %39 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %10, align 8
  %41 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load %struct.i40iw_device*, %struct.i40iw_device** %5, align 8
  %43 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %10, align 8
  %46 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  store i32* %44, i32** %49, align 8
  %50 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %9, align 8
  %51 = ptrtoint %struct.i40iw_cqp_request* %50 to i64
  %52 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %10, align 8
  %53 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i64 %51, i64* %56, align 8
  %57 = load %struct.i40iw_device*, %struct.i40iw_device** %5, align 8
  %58 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %9, align 8
  %59 = call i32 @i40iw_handle_cqp_op(%struct.i40iw_device* %57, %struct.i40iw_cqp_request* %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %20
  %63 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %20
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %64, %18
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.i40iw_cqp_request* @i40iw_get_cqp_request(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @memset(%struct.i40iw_apbvt_info*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @i40iw_handle_cqp_op(%struct.i40iw_device*, %struct.i40iw_cqp_request*) #1

declare dso_local i32 @i40iw_pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
