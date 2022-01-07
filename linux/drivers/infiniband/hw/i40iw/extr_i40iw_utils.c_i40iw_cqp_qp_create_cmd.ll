; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_cqp_qp_create_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_cqp_qp_create_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_dev = type { i64 }
%struct.i40iw_sc_qp = type { i32 }
%struct.i40iw_device = type { %struct.i40iw_cqp }
%struct.i40iw_cqp = type { i32 }
%struct.i40iw_cqp_request = type { %struct.cqp_commands_info }
%struct.cqp_commands_info = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.i40iw_sc_qp*, %struct.i40iw_create_qp_info }
%struct.i40iw_create_qp_info = type { i32, i32 }

@I40IW_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@I40IW_QP_STATE_RTS = common dso_local global i32 0, align 4
@OP_QP_CREATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"CQP-OP QP create fail\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40iw_cqp_qp_create_cmd(%struct.i40iw_sc_dev* %0, %struct.i40iw_sc_qp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40iw_sc_dev*, align 8
  %5 = alloca %struct.i40iw_sc_qp*, align 8
  %6 = alloca %struct.i40iw_device*, align 8
  %7 = alloca %struct.i40iw_cqp*, align 8
  %8 = alloca %struct.i40iw_cqp_request*, align 8
  %9 = alloca %struct.cqp_commands_info*, align 8
  %10 = alloca %struct.i40iw_create_qp_info*, align 8
  %11 = alloca i32, align 4
  store %struct.i40iw_sc_dev* %0, %struct.i40iw_sc_dev** %4, align 8
  store %struct.i40iw_sc_qp* %1, %struct.i40iw_sc_qp** %5, align 8
  %12 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %13 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.i40iw_device*
  store %struct.i40iw_device* %15, %struct.i40iw_device** %6, align 8
  %16 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %17 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %16, i32 0, i32 0
  store %struct.i40iw_cqp* %17, %struct.i40iw_cqp** %7, align 8
  %18 = load %struct.i40iw_cqp*, %struct.i40iw_cqp** %7, align 8
  %19 = call %struct.i40iw_cqp_request* @i40iw_get_cqp_request(%struct.i40iw_cqp* %18, i32 1)
  store %struct.i40iw_cqp_request* %19, %struct.i40iw_cqp_request** %8, align 8
  %20 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %8, align 8
  %21 = icmp ne %struct.i40iw_cqp_request* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @I40IW_ERR_NO_MEMORY, align 4
  store i32 %23, i32* %3, align 4
  br label %67

24:                                               ; preds = %2
  %25 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %8, align 8
  %26 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %25, i32 0, i32 0
  store %struct.cqp_commands_info* %26, %struct.cqp_commands_info** %9, align 8
  %27 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %8, align 8
  %28 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  store %struct.i40iw_create_qp_info* %32, %struct.i40iw_create_qp_info** %10, align 8
  %33 = load %struct.i40iw_create_qp_info*, %struct.i40iw_create_qp_info** %10, align 8
  %34 = call i32 @memset(%struct.i40iw_create_qp_info* %33, i32 0, i32 8)
  %35 = load %struct.i40iw_create_qp_info*, %struct.i40iw_create_qp_info** %10, align 8
  %36 = getelementptr inbounds %struct.i40iw_create_qp_info, %struct.i40iw_create_qp_info* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  %37 = load i32, i32* @I40IW_QP_STATE_RTS, align 4
  %38 = load %struct.i40iw_create_qp_info*, %struct.i40iw_create_qp_info** %10, align 8
  %39 = getelementptr inbounds %struct.i40iw_create_qp_info, %struct.i40iw_create_qp_info* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @OP_QP_CREATE, align 4
  %41 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %9, align 8
  %42 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %9, align 8
  %44 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %5, align 8
  %46 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %9, align 8
  %47 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store %struct.i40iw_sc_qp* %45, %struct.i40iw_sc_qp** %50, align 8
  %51 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %8, align 8
  %52 = ptrtoint %struct.i40iw_cqp_request* %51 to i64
  %53 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %9, align 8
  %54 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i64 %52, i64* %57, align 8
  %58 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %59 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %8, align 8
  %60 = call i32 @i40iw_handle_cqp_op(%struct.i40iw_device* %58, %struct.i40iw_cqp_request* %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %24
  %64 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %24
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %22
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.i40iw_cqp_request* @i40iw_get_cqp_request(%struct.i40iw_cqp*, i32) #1

declare dso_local i32 @memset(%struct.i40iw_create_qp_info*, i32, i32) #1

declare dso_local i32 @i40iw_handle_cqp_op(%struct.i40iw_device*, %struct.i40iw_cqp_request*) #1

declare dso_local i32 @i40iw_pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
