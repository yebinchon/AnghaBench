; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_hw.c_i40iw_hw_flush_wqes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_hw.c_i40iw_hw_flush_wqes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { i32 }
%struct.i40iw_sc_qp = type { i64 }
%struct.i40iw_qp_flush_info = type { i32 }
%struct.i40iw_cqp_request = type { %struct.TYPE_8__, %struct.cqp_commands_info }
%struct.TYPE_8__ = type { i32, i32 }
%struct.cqp_commands_info = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.i40iw_sc_qp*, %struct.i40iw_qp_flush_info }
%struct.i40iw_qp = type { i32, i32 }

@I40IW_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@OP_QP_FLUSH_WQES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"CQP-OP Flush WQE's fail\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40iw_hw_flush_wqes(%struct.i40iw_device* %0, %struct.i40iw_sc_qp* %1, %struct.i40iw_qp_flush_info* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40iw_device*, align 8
  %7 = alloca %struct.i40iw_sc_qp*, align 8
  %8 = alloca %struct.i40iw_qp_flush_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.i40iw_qp_flush_info*, align 8
  %12 = alloca %struct.i40iw_cqp_request*, align 8
  %13 = alloca %struct.cqp_commands_info*, align 8
  %14 = alloca %struct.i40iw_qp*, align 8
  store %struct.i40iw_device* %0, %struct.i40iw_device** %6, align 8
  store %struct.i40iw_sc_qp* %1, %struct.i40iw_sc_qp** %7, align 8
  store %struct.i40iw_qp_flush_info* %2, %struct.i40iw_qp_flush_info** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %7, align 8
  %16 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.i40iw_qp*
  store %struct.i40iw_qp* %18, %struct.i40iw_qp** %14, align 8
  %19 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %20 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %19, i32 0, i32 0
  %21 = load i32, i32* %9, align 4
  %22 = call %struct.i40iw_cqp_request* @i40iw_get_cqp_request(i32* %20, i32 %21)
  store %struct.i40iw_cqp_request* %22, %struct.i40iw_cqp_request** %12, align 8
  %23 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %12, align 8
  %24 = icmp ne %struct.i40iw_cqp_request* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @I40IW_ERR_NO_MEMORY, align 4
  store i32 %26, i32* %5, align 4
  br label %100

27:                                               ; preds = %4
  %28 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %12, align 8
  %29 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %28, i32 0, i32 1
  store %struct.cqp_commands_info* %29, %struct.cqp_commands_info** %13, align 8
  %30 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %12, align 8
  %31 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  store %struct.i40iw_qp_flush_info* %35, %struct.i40iw_qp_flush_info** %11, align 8
  %36 = load %struct.i40iw_qp_flush_info*, %struct.i40iw_qp_flush_info** %11, align 8
  %37 = load %struct.i40iw_qp_flush_info*, %struct.i40iw_qp_flush_info** %8, align 8
  %38 = call i32 @memcpy(%struct.i40iw_qp_flush_info* %36, %struct.i40iw_qp_flush_info* %37, i32 4)
  %39 = load i32, i32* @OP_QP_FLUSH_WQES, align 4
  %40 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %13, align 8
  %41 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %13, align 8
  %43 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %7, align 8
  %45 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %13, align 8
  %46 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  store %struct.i40iw_sc_qp* %44, %struct.i40iw_sc_qp** %49, align 8
  %50 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %12, align 8
  %51 = ptrtoint %struct.i40iw_cqp_request* %50 to i64
  %52 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %13, align 8
  %53 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i64 %51, i64* %56, align 8
  %57 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %58 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %12, align 8
  %59 = call i32 @i40iw_handle_cqp_op(%struct.i40iw_device* %57, %struct.i40iw_cqp_request* %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %27
  %63 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %64 = load %struct.i40iw_qp*, %struct.i40iw_qp** %14, align 8
  %65 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %64, i32 0, i32 1
  %66 = call i32 @complete(i32* %65)
  %67 = load %struct.i40iw_qp*, %struct.i40iw_qp** %14, align 8
  %68 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %67, i32 0, i32 0
  %69 = call i32 @complete(i32* %68)
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %5, align 4
  br label %100

71:                                               ; preds = %27
  %72 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %12, align 8
  %73 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %99, label %77

77:                                               ; preds = %71
  %78 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %12, align 8
  %79 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  switch i32 %81, label %91 [
    i32 129, label %82
    i32 128, label %86
    i32 130, label %90
  ]

82:                                               ; preds = %77
  %83 = load %struct.i40iw_qp*, %struct.i40iw_qp** %14, align 8
  %84 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %83, i32 0, i32 1
  %85 = call i32 @complete(i32* %84)
  br label %98

86:                                               ; preds = %77
  %87 = load %struct.i40iw_qp*, %struct.i40iw_qp** %14, align 8
  %88 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %87, i32 0, i32 0
  %89 = call i32 @complete(i32* %88)
  br label %98

90:                                               ; preds = %77
  br label %98

91:                                               ; preds = %77
  %92 = load %struct.i40iw_qp*, %struct.i40iw_qp** %14, align 8
  %93 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %92, i32 0, i32 1
  %94 = call i32 @complete(i32* %93)
  %95 = load %struct.i40iw_qp*, %struct.i40iw_qp** %14, align 8
  %96 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %95, i32 0, i32 0
  %97 = call i32 @complete(i32* %96)
  br label %98

98:                                               ; preds = %91, %90, %86, %82
  br label %99

99:                                               ; preds = %98, %71
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %99, %62, %25
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local %struct.i40iw_cqp_request* @i40iw_get_cqp_request(i32*, i32) #1

declare dso_local i32 @memcpy(%struct.i40iw_qp_flush_info*, %struct.i40iw_qp_flush_info*, i32) #1

declare dso_local i32 @i40iw_handle_cqp_op(%struct.i40iw_device*, %struct.i40iw_cqp_request*) #1

declare dso_local i32 @i40iw_pr_err(i8*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
