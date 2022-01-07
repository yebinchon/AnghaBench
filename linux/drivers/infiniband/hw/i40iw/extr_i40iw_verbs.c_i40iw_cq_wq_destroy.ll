; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_cq_wq_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_cq_wq_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { i32 }
%struct.i40iw_sc_cq = type { i32 }
%struct.i40iw_cqp_request = type { %struct.cqp_commands_info }
%struct.cqp_commands_info = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.i40iw_sc_cq* }

@OP_CQ_DESTROY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"CQP-OP Destroy QP fail\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40iw_cq_wq_destroy(%struct.i40iw_device* %0, %struct.i40iw_sc_cq* %1) #0 {
  %3 = alloca %struct.i40iw_device*, align 8
  %4 = alloca %struct.i40iw_sc_cq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40iw_cqp_request*, align 8
  %7 = alloca %struct.cqp_commands_info*, align 8
  store %struct.i40iw_device* %0, %struct.i40iw_device** %3, align 8
  store %struct.i40iw_sc_cq* %1, %struct.i40iw_sc_cq** %4, align 8
  %8 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %9 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %8, i32 0, i32 0
  %10 = call %struct.i40iw_cqp_request* @i40iw_get_cqp_request(i32* %9, i32 1)
  store %struct.i40iw_cqp_request* %10, %struct.i40iw_cqp_request** %6, align 8
  %11 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %6, align 8
  %12 = icmp ne %struct.i40iw_cqp_request* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %42

14:                                               ; preds = %2
  %15 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %6, align 8
  %16 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %15, i32 0, i32 0
  store %struct.cqp_commands_info* %16, %struct.cqp_commands_info** %7, align 8
  %17 = load i32, i32* @OP_CQ_DESTROY, align 4
  %18 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %7, align 8
  %19 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %7, align 8
  %21 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %4, align 8
  %23 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %7, align 8
  %24 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store %struct.i40iw_sc_cq* %22, %struct.i40iw_sc_cq** %27, align 8
  %28 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %6, align 8
  %29 = ptrtoint %struct.i40iw_cqp_request* %28 to i64
  %30 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %7, align 8
  %31 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i64 %29, i64* %34, align 8
  %35 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %36 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %6, align 8
  %37 = call i32 @i40iw_handle_cqp_op(%struct.i40iw_device* %35, %struct.i40iw_cqp_request* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %14
  %41 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %13, %40, %14
  ret void
}

declare dso_local %struct.i40iw_cqp_request* @i40iw_get_cqp_request(i32*, i32) #1

declare dso_local i32 @i40iw_handle_cqp_op(%struct.i40iw_device*, %struct.i40iw_cqp_request*) #1

declare dso_local i32 @i40iw_pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
