; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_cqp_qp_destroy_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_cqp_qp_destroy_cmd.c"
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
%struct.TYPE_4__ = type { i64, i32, %struct.i40iw_sc_qp* }

@OP_QP_DESTROY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"CQP QP_DESTROY fail\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40iw_cqp_qp_destroy_cmd(%struct.i40iw_sc_dev* %0, %struct.i40iw_sc_qp* %1) #0 {
  %3 = alloca %struct.i40iw_sc_dev*, align 8
  %4 = alloca %struct.i40iw_sc_qp*, align 8
  %5 = alloca %struct.i40iw_device*, align 8
  %6 = alloca %struct.i40iw_cqp*, align 8
  %7 = alloca %struct.i40iw_cqp_request*, align 8
  %8 = alloca %struct.cqp_commands_info*, align 8
  %9 = alloca i32, align 4
  store %struct.i40iw_sc_dev* %0, %struct.i40iw_sc_dev** %3, align 8
  store %struct.i40iw_sc_qp* %1, %struct.i40iw_sc_qp** %4, align 8
  %10 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %3, align 8
  %11 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.i40iw_device*
  store %struct.i40iw_device* %13, %struct.i40iw_device** %5, align 8
  %14 = load %struct.i40iw_device*, %struct.i40iw_device** %5, align 8
  %15 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %14, i32 0, i32 0
  store %struct.i40iw_cqp* %15, %struct.i40iw_cqp** %6, align 8
  %16 = load %struct.i40iw_cqp*, %struct.i40iw_cqp** %6, align 8
  %17 = call %struct.i40iw_cqp_request* @i40iw_get_cqp_request(%struct.i40iw_cqp* %16, i32 1)
  store %struct.i40iw_cqp_request* %17, %struct.i40iw_cqp_request** %7, align 8
  %18 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %7, align 8
  %19 = icmp ne %struct.i40iw_cqp_request* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %56

21:                                               ; preds = %2
  %22 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %7, align 8
  %23 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %22, i32 0, i32 0
  store %struct.cqp_commands_info* %23, %struct.cqp_commands_info** %8, align 8
  %24 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %8, align 8
  %25 = call i32 @memset(%struct.cqp_commands_info* %24, i32 0, i32 40)
  %26 = load i32, i32* @OP_QP_DESTROY, align 4
  %27 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %8, align 8
  %28 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %8, align 8
  %30 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %4, align 8
  %32 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %8, align 8
  %33 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  store %struct.i40iw_sc_qp* %31, %struct.i40iw_sc_qp** %36, align 8
  %37 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %7, align 8
  %38 = ptrtoint %struct.i40iw_cqp_request* %37 to i64
  %39 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %8, align 8
  %40 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i64 %38, i64* %43, align 8
  %44 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %8, align 8
  %45 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store i32 1, i32* %48, align 8
  %49 = load %struct.i40iw_device*, %struct.i40iw_device** %5, align 8
  %50 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %7, align 8
  %51 = call i32 @i40iw_handle_cqp_op(%struct.i40iw_device* %49, %struct.i40iw_cqp_request* %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %21
  %55 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %20, %54, %21
  ret void
}

declare dso_local %struct.i40iw_cqp_request* @i40iw_get_cqp_request(%struct.i40iw_cqp*, i32) #1

declare dso_local i32 @memset(%struct.cqp_commands_info*, i32, i32) #1

declare dso_local i32 @i40iw_handle_cqp_op(%struct.i40iw_device*, %struct.i40iw_cqp_request*) #1

declare dso_local i32 @i40iw_pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
