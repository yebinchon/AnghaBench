; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_alloc_push_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_alloc_push_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.i40iw_sc_qp = type { i32, i32 }
%struct.i40iw_cqp_request = type { %struct.TYPE_12__, %struct.cqp_commands_info, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.cqp_commands_info = type { i32, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }

@I40IW_INVALID_PUSH_PAGE_INDEX = common dso_local global i32 0, align 4
@OP_MANAGE_PUSH_PAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"CQP-OP Push page fail\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_device*, %struct.i40iw_sc_qp*)* @i40iw_alloc_push_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_alloc_push_page(%struct.i40iw_device* %0, %struct.i40iw_sc_qp* %1) #0 {
  %3 = alloca %struct.i40iw_device*, align 8
  %4 = alloca %struct.i40iw_sc_qp*, align 8
  %5 = alloca %struct.i40iw_cqp_request*, align 8
  %6 = alloca %struct.cqp_commands_info*, align 8
  %7 = alloca i32, align 4
  store %struct.i40iw_device* %0, %struct.i40iw_device** %3, align 8
  store %struct.i40iw_sc_qp* %1, %struct.i40iw_sc_qp** %4, align 8
  %8 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %4, align 8
  %9 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @I40IW_INVALID_PUSH_PAGE_INDEX, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %81

14:                                               ; preds = %2
  %15 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %16 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %15, i32 0, i32 0
  %17 = call %struct.i40iw_cqp_request* @i40iw_get_cqp_request(%struct.TYPE_13__* %16, i32 1)
  store %struct.i40iw_cqp_request* %17, %struct.i40iw_cqp_request** %5, align 8
  %18 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %5, align 8
  %19 = icmp ne %struct.i40iw_cqp_request* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  br label %81

21:                                               ; preds = %14
  %22 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %5, align 8
  %23 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %22, i32 0, i32 2
  %24 = call i32 @atomic_inc(i32* %23)
  %25 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %5, align 8
  %26 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %25, i32 0, i32 1
  store %struct.cqp_commands_info* %26, %struct.cqp_commands_info** %6, align 8
  %27 = load i32, i32* @OP_MANAGE_PUSH_PAGE, align 4
  %28 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %6, align 8
  %29 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %6, align 8
  %31 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %4, align 8
  %33 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %6, align 8
  %36 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  store i32 %34, i32* %40, align 8
  %41 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %6, align 8
  %42 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %48 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %6, align 8
  %51 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  store i32* %49, i32** %54, align 8
  %55 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %5, align 8
  %56 = ptrtoint %struct.i40iw_cqp_request* %55 to i64
  %57 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %6, align 8
  %58 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  store i64 %56, i64* %61, align 8
  %62 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %63 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %5, align 8
  %64 = call i32 @i40iw_handle_cqp_op(%struct.i40iw_device* %62, %struct.i40iw_cqp_request* %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %21
  %68 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %5, align 8
  %69 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %4, align 8
  %73 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  br label %76

74:                                               ; preds = %21
  %75 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %67
  %77 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %78 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %77, i32 0, i32 0
  %79 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %5, align 8
  %80 = call i32 @i40iw_put_cqp_request(%struct.TYPE_13__* %78, %struct.i40iw_cqp_request* %79)
  br label %81

81:                                               ; preds = %76, %20, %13
  ret void
}

declare dso_local %struct.i40iw_cqp_request* @i40iw_get_cqp_request(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @i40iw_handle_cqp_op(%struct.i40iw_device*, %struct.i40iw_cqp_request*) #1

declare dso_local i32 @i40iw_pr_err(i8*) #1

declare dso_local i32 @i40iw_put_cqp_request(%struct.TYPE_13__*, %struct.i40iw_cqp_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
