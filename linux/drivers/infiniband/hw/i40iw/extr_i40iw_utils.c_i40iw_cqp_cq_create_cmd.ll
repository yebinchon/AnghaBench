; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_cqp_cq_create_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_cqp_cq_create_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_dev = type { i64 }
%struct.i40iw_sc_cq = type { i32 }
%struct.i40iw_device = type { %struct.i40iw_cqp }
%struct.i40iw_cqp = type { i32 }
%struct.i40iw_cqp_request = type { %struct.cqp_commands_info }
%struct.cqp_commands_info = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.i40iw_sc_cq* }

@I40IW_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@OP_CQ_CREATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"CQP-OP Create QP fail\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40iw_cqp_cq_create_cmd(%struct.i40iw_sc_dev* %0, %struct.i40iw_sc_cq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40iw_sc_dev*, align 8
  %5 = alloca %struct.i40iw_sc_cq*, align 8
  %6 = alloca %struct.i40iw_device*, align 8
  %7 = alloca %struct.i40iw_cqp*, align 8
  %8 = alloca %struct.i40iw_cqp_request*, align 8
  %9 = alloca %struct.cqp_commands_info*, align 8
  %10 = alloca i32, align 4
  store %struct.i40iw_sc_dev* %0, %struct.i40iw_sc_dev** %4, align 8
  store %struct.i40iw_sc_cq* %1, %struct.i40iw_sc_cq** %5, align 8
  %11 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %12 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.i40iw_device*
  store %struct.i40iw_device* %14, %struct.i40iw_device** %6, align 8
  %15 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %16 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %15, i32 0, i32 0
  store %struct.i40iw_cqp* %16, %struct.i40iw_cqp** %7, align 8
  %17 = load %struct.i40iw_cqp*, %struct.i40iw_cqp** %7, align 8
  %18 = call %struct.i40iw_cqp_request* @i40iw_get_cqp_request(%struct.i40iw_cqp* %17, i32 1)
  store %struct.i40iw_cqp_request* %18, %struct.i40iw_cqp_request** %8, align 8
  %19 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %8, align 8
  %20 = icmp ne %struct.i40iw_cqp_request* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @I40IW_ERR_NO_MEMORY, align 4
  store i32 %22, i32* %3, align 4
  br label %53

23:                                               ; preds = %2
  %24 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %8, align 8
  %25 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %24, i32 0, i32 0
  store %struct.cqp_commands_info* %25, %struct.cqp_commands_info** %9, align 8
  %26 = load i32, i32* @OP_CQ_CREATE, align 4
  %27 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %9, align 8
  %28 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %9, align 8
  %30 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %5, align 8
  %32 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %9, align 8
  %33 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store %struct.i40iw_sc_cq* %31, %struct.i40iw_sc_cq** %36, align 8
  %37 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %8, align 8
  %38 = ptrtoint %struct.i40iw_cqp_request* %37 to i64
  %39 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %9, align 8
  %40 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i64 %38, i64* %43, align 8
  %44 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %45 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %8, align 8
  %46 = call i32 @i40iw_handle_cqp_op(%struct.i40iw_device* %44, %struct.i40iw_cqp_request* %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %23
  %50 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %23
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %21
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.i40iw_cqp_request* @i40iw_get_cqp_request(%struct.i40iw_cqp*, i32) #1

declare dso_local i32 @i40iw_handle_cqp_op(%struct.i40iw_device*, %struct.i40iw_cqp_request*) #1

declare dso_local i32 @i40iw_pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
