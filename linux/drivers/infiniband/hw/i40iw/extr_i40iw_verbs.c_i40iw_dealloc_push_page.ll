; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_dealloc_push_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_dealloc_push_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.i40iw_sc_qp = type { i64, i32 }
%struct.i40iw_cqp_request = type { %struct.cqp_commands_info }
%struct.cqp_commands_info = type { i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i32 }

@I40IW_INVALID_PUSH_PAGE_INDEX = common dso_local global i64 0, align 8
@OP_MANAGE_PUSH_PAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"CQP-OP Push page fail\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_device*, %struct.i40iw_sc_qp*)* @i40iw_dealloc_push_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_dealloc_push_page(%struct.i40iw_device* %0, %struct.i40iw_sc_qp* %1) #0 {
  %3 = alloca %struct.i40iw_device*, align 8
  %4 = alloca %struct.i40iw_sc_qp*, align 8
  %5 = alloca %struct.i40iw_cqp_request*, align 8
  %6 = alloca %struct.cqp_commands_info*, align 8
  %7 = alloca i32, align 4
  store %struct.i40iw_device* %0, %struct.i40iw_device** %3, align 8
  store %struct.i40iw_sc_qp* %1, %struct.i40iw_sc_qp** %4, align 8
  %8 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %4, align 8
  %9 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @I40IW_INVALID_PUSH_PAGE_INDEX, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %79

14:                                               ; preds = %2
  %15 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %16 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %15, i32 0, i32 0
  %17 = call %struct.i40iw_cqp_request* @i40iw_get_cqp_request(%struct.TYPE_10__* %16, i32 0)
  store %struct.i40iw_cqp_request* %17, %struct.i40iw_cqp_request** %5, align 8
  %18 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %5, align 8
  %19 = icmp ne %struct.i40iw_cqp_request* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  br label %79

21:                                               ; preds = %14
  %22 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %5, align 8
  %23 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %22, i32 0, i32 0
  store %struct.cqp_commands_info* %23, %struct.cqp_commands_info** %6, align 8
  %24 = load i32, i32* @OP_MANAGE_PUSH_PAGE, align 4
  %25 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %6, align 8
  %26 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %6, align 8
  %28 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %4, align 8
  %30 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %6, align 8
  %33 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i64 %31, i64* %37, align 8
  %38 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %4, align 8
  %39 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %6, align 8
  %42 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  store i32 %40, i32* %46, align 4
  %47 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %6, align 8
  %48 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  store i32 1, i32* %52, align 8
  %53 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %54 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %6, align 8
  %57 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  store i32* %55, i32** %60, align 8
  %61 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %5, align 8
  %62 = ptrtoint %struct.i40iw_cqp_request* %61 to i64
  %63 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %6, align 8
  %64 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  store i64 %62, i64* %67, align 8
  %68 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %69 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %5, align 8
  %70 = call i32 @i40iw_handle_cqp_op(%struct.i40iw_device* %68, %struct.i40iw_cqp_request* %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %21
  %74 = load i64, i64* @I40IW_INVALID_PUSH_PAGE_INDEX, align 8
  %75 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %4, align 8
  %76 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  br label %79

77:                                               ; preds = %21
  %78 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %79

79:                                               ; preds = %13, %20, %77, %73
  ret void
}

declare dso_local %struct.i40iw_cqp_request* @i40iw_get_cqp_request(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @i40iw_handle_cqp_op(%struct.i40iw_device*, %struct.i40iw_cqp_request*) #1

declare dso_local i32 @i40iw_pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
