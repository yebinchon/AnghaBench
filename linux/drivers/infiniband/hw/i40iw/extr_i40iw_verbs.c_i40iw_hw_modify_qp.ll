; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_hw_modify_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_hw_modify_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { i32 }
%struct.i40iw_qp = type { i32, i32, i32 }
%struct.i40iw_modify_qp_info = type { i32 }
%struct.i40iw_cqp_request = type { %struct.cqp_commands_info }
%struct.cqp_commands_info = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32*, %struct.i40iw_modify_qp_info }
%struct.i40iw_gen_ae_info = type { i32, i32 }

@OP_QP_MODIFY = common dso_local global i32 0, align 4
@I40IW_AE_BAD_CLOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40iw_hw_modify_qp(%struct.i40iw_device* %0, %struct.i40iw_qp* %1, %struct.i40iw_modify_qp_info* %2, i32 %3) #0 {
  %5 = alloca %struct.i40iw_device*, align 8
  %6 = alloca %struct.i40iw_qp*, align 8
  %7 = alloca %struct.i40iw_modify_qp_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.i40iw_cqp_request*, align 8
  %10 = alloca %struct.cqp_commands_info*, align 8
  %11 = alloca %struct.i40iw_modify_qp_info*, align 8
  %12 = alloca %struct.i40iw_gen_ae_info, align 4
  store %struct.i40iw_device* %0, %struct.i40iw_device** %5, align 8
  store %struct.i40iw_qp* %1, %struct.i40iw_qp** %6, align 8
  store %struct.i40iw_modify_qp_info* %2, %struct.i40iw_modify_qp_info** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.i40iw_device*, %struct.i40iw_device** %5, align 8
  %14 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %13, i32 0, i32 0
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.i40iw_cqp_request* @i40iw_get_cqp_request(i32* %14, i32 %15)
  store %struct.i40iw_cqp_request* %16, %struct.i40iw_cqp_request** %9, align 8
  %17 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %9, align 8
  %18 = icmp ne %struct.i40iw_cqp_request* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  br label %80

20:                                               ; preds = %4
  %21 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %9, align 8
  %22 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %21, i32 0, i32 0
  store %struct.cqp_commands_info* %22, %struct.cqp_commands_info** %10, align 8
  %23 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %10, align 8
  %24 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  store %struct.i40iw_modify_qp_info* %27, %struct.i40iw_modify_qp_info** %11, align 8
  %28 = load %struct.i40iw_modify_qp_info*, %struct.i40iw_modify_qp_info** %11, align 8
  %29 = load %struct.i40iw_modify_qp_info*, %struct.i40iw_modify_qp_info** %7, align 8
  %30 = call i32 @memcpy(%struct.i40iw_modify_qp_info* %28, %struct.i40iw_modify_qp_info* %29, i32 4)
  %31 = load i32, i32* @OP_QP_MODIFY, align 4
  %32 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %10, align 8
  %33 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %10, align 8
  %35 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.i40iw_qp*, %struct.i40iw_qp** %6, align 8
  %37 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %36, i32 0, i32 1
  %38 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %10, align 8
  %39 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i32* %37, i32** %42, align 8
  %43 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %9, align 8
  %44 = ptrtoint %struct.i40iw_cqp_request* %43 to i64
  %45 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %10, align 8
  %46 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i64 %44, i64* %49, align 8
  %50 = load %struct.i40iw_device*, %struct.i40iw_device** %5, align 8
  %51 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %9, align 8
  %52 = call i32 @i40iw_handle_cqp_op(%struct.i40iw_device* %50, %struct.i40iw_cqp_request* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %20
  br label %80

55:                                               ; preds = %20
  %56 = load %struct.i40iw_modify_qp_info*, %struct.i40iw_modify_qp_info** %11, align 8
  %57 = getelementptr inbounds %struct.i40iw_modify_qp_info, %struct.i40iw_modify_qp_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %79 [
    i32 129, label %59
    i32 130, label %70
    i32 128, label %70
    i32 132, label %70
    i32 131, label %78
  ]

59:                                               ; preds = %55
  %60 = load %struct.i40iw_qp*, %struct.i40iw_qp** %6, align 8
  %61 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 130
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.i40iw_qp*, %struct.i40iw_qp** %6, align 8
  %66 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @i40iw_send_reset(i32 %67)
  br label %69

69:                                               ; preds = %64, %59
  br label %70

70:                                               ; preds = %55, %55, %55, %69
  %71 = load i32, i32* @I40IW_AE_BAD_CLOSE, align 4
  %72 = getelementptr inbounds %struct.i40iw_gen_ae_info, %struct.i40iw_gen_ae_info* %12, i32 0, i32 1
  store i32 %71, i32* %72, align 4
  %73 = getelementptr inbounds %struct.i40iw_gen_ae_info, %struct.i40iw_gen_ae_info* %12, i32 0, i32 0
  store i32 0, i32* %73, align 4
  %74 = load %struct.i40iw_device*, %struct.i40iw_device** %5, align 8
  %75 = load %struct.i40iw_qp*, %struct.i40iw_qp** %6, align 8
  %76 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %75, i32 0, i32 1
  %77 = call i32 @i40iw_gen_ae(%struct.i40iw_device* %74, i32* %76, %struct.i40iw_gen_ae_info* %12, i32 0)
  br label %80

78:                                               ; preds = %55
  br label %79

79:                                               ; preds = %55, %78
  br label %80

80:                                               ; preds = %19, %54, %79, %70
  ret void
}

declare dso_local %struct.i40iw_cqp_request* @i40iw_get_cqp_request(i32*, i32) #1

declare dso_local i32 @memcpy(%struct.i40iw_modify_qp_info*, %struct.i40iw_modify_qp_info*, i32) #1

declare dso_local i32 @i40iw_handle_cqp_op(%struct.i40iw_device*, %struct.i40iw_cqp_request*) #1

declare dso_local i32 @i40iw_send_reset(i32) #1

declare dso_local i32 @i40iw_gen_ae(%struct.i40iw_device*, i32*, %struct.i40iw_gen_ae_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
