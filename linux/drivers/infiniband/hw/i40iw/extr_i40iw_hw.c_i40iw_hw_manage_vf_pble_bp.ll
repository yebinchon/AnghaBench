; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_hw.c_i40iw_hw_manage_vf_pble_bp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_hw.c_i40iw_hw_manage_vf_pble_bp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.i40iw_manage_vf_pble_info = type { i32 }
%struct.i40iw_cqp_request = type { %struct.cqp_commands_info }
%struct.cqp_commands_info = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32*, %struct.i40iw_manage_vf_pble_info }

@CCQ_CREATED = common dso_local global i64 0, align 8
@I40IW_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@OP_MANAGE_VF_PBLE_BP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"CQP-OP Manage VF pble_bp fail\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40iw_hw_manage_vf_pble_bp(%struct.i40iw_device* %0, %struct.i40iw_manage_vf_pble_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40iw_device*, align 8
  %6 = alloca %struct.i40iw_manage_vf_pble_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.i40iw_manage_vf_pble_info*, align 8
  %10 = alloca %struct.i40iw_cqp_request*, align 8
  %11 = alloca %struct.cqp_commands_info*, align 8
  store %struct.i40iw_device* %0, %struct.i40iw_device** %5, align 8
  store %struct.i40iw_manage_vf_pble_info* %1, %struct.i40iw_manage_vf_pble_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.i40iw_device*, %struct.i40iw_device** %5, align 8
  %13 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CCQ_CREATED, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %20, %17, %3
  %22 = load %struct.i40iw_device*, %struct.i40iw_device** %5, align 8
  %23 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %22, i32 0, i32 1
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.i40iw_cqp_request* @i40iw_get_cqp_request(%struct.TYPE_8__* %23, i32 %24)
  store %struct.i40iw_cqp_request* %25, %struct.i40iw_cqp_request** %10, align 8
  %26 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %10, align 8
  %27 = icmp ne %struct.i40iw_cqp_request* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @I40IW_ERR_NO_MEMORY, align 4
  store i32 %29, i32* %4, align 4
  br label %71

30:                                               ; preds = %21
  %31 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %10, align 8
  %32 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %31, i32 0, i32 0
  store %struct.cqp_commands_info* %32, %struct.cqp_commands_info** %11, align 8
  %33 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %10, align 8
  %34 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  store %struct.i40iw_manage_vf_pble_info* %38, %struct.i40iw_manage_vf_pble_info** %9, align 8
  %39 = load %struct.i40iw_manage_vf_pble_info*, %struct.i40iw_manage_vf_pble_info** %9, align 8
  %40 = load %struct.i40iw_manage_vf_pble_info*, %struct.i40iw_manage_vf_pble_info** %6, align 8
  %41 = call i32 @memcpy(%struct.i40iw_manage_vf_pble_info* %39, %struct.i40iw_manage_vf_pble_info* %40, i32 4)
  %42 = load i32, i32* @OP_MANAGE_VF_PBLE_BP, align 4
  %43 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %11, align 8
  %44 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %11, align 8
  %46 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load %struct.i40iw_device*, %struct.i40iw_device** %5, align 8
  %48 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %11, align 8
  %51 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  store i32* %49, i32** %54, align 8
  %55 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %10, align 8
  %56 = ptrtoint %struct.i40iw_cqp_request* %55 to i64
  %57 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %11, align 8
  %58 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i64 %56, i64* %61, align 8
  %62 = load %struct.i40iw_device*, %struct.i40iw_device** %5, align 8
  %63 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %10, align 8
  %64 = call i32 @i40iw_handle_cqp_op(%struct.i40iw_device* %62, %struct.i40iw_cqp_request* %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %30
  %68 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %30
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %69, %28
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.i40iw_cqp_request* @i40iw_get_cqp_request(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @memcpy(%struct.i40iw_manage_vf_pble_info*, %struct.i40iw_manage_vf_pble_info*, i32) #1

declare dso_local i32 @i40iw_handle_cqp_op(%struct.i40iw_device*, %struct.i40iw_cqp_request*) #1

declare dso_local i32 @i40iw_pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
