; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_hw.c_i40iw_gen_ae.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_hw.c_i40iw_gen_ae.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { i32 }
%struct.i40iw_sc_qp = type { i32 }
%struct.i40iw_gen_ae_info = type { i32 }
%struct.i40iw_cqp_request = type { %struct.cqp_commands_info }
%struct.cqp_commands_info = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.i40iw_sc_qp*, %struct.i40iw_gen_ae_info }

@OP_GEN_AE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"CQP OP failed attempting to generate ae_code=0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40iw_gen_ae(%struct.i40iw_device* %0, %struct.i40iw_sc_qp* %1, %struct.i40iw_gen_ae_info* %2, i32 %3) #0 {
  %5 = alloca %struct.i40iw_device*, align 8
  %6 = alloca %struct.i40iw_sc_qp*, align 8
  %7 = alloca %struct.i40iw_gen_ae_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.i40iw_gen_ae_info*, align 8
  %10 = alloca %struct.i40iw_cqp_request*, align 8
  %11 = alloca %struct.cqp_commands_info*, align 8
  store %struct.i40iw_device* %0, %struct.i40iw_device** %5, align 8
  store %struct.i40iw_sc_qp* %1, %struct.i40iw_sc_qp** %6, align 8
  store %struct.i40iw_gen_ae_info* %2, %struct.i40iw_gen_ae_info** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.i40iw_device*, %struct.i40iw_device** %5, align 8
  %13 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %12, i32 0, i32 0
  %14 = load i32, i32* %8, align 4
  %15 = call %struct.i40iw_cqp_request* @i40iw_get_cqp_request(i32* %13, i32 %14)
  store %struct.i40iw_cqp_request* %15, %struct.i40iw_cqp_request** %10, align 8
  %16 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %10, align 8
  %17 = icmp ne %struct.i40iw_cqp_request* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  br label %58

19:                                               ; preds = %4
  %20 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %10, align 8
  %21 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %20, i32 0, i32 0
  store %struct.cqp_commands_info* %21, %struct.cqp_commands_info** %11, align 8
  %22 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %10, align 8
  %23 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  store %struct.i40iw_gen_ae_info* %27, %struct.i40iw_gen_ae_info** %9, align 8
  %28 = load %struct.i40iw_gen_ae_info*, %struct.i40iw_gen_ae_info** %9, align 8
  %29 = load %struct.i40iw_gen_ae_info*, %struct.i40iw_gen_ae_info** %7, align 8
  %30 = call i32 @memcpy(%struct.i40iw_gen_ae_info* %28, %struct.i40iw_gen_ae_info* %29, i32 4)
  %31 = load i32, i32* @OP_GEN_AE, align 4
  %32 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %11, align 8
  %33 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %11, align 8
  %35 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %6, align 8
  %37 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %11, align 8
  %38 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store %struct.i40iw_sc_qp* %36, %struct.i40iw_sc_qp** %41, align 8
  %42 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %10, align 8
  %43 = ptrtoint %struct.i40iw_cqp_request* %42 to i64
  %44 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %11, align 8
  %45 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i64 %43, i64* %48, align 8
  %49 = load %struct.i40iw_device*, %struct.i40iw_device** %5, align 8
  %50 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %10, align 8
  %51 = call i64 @i40iw_handle_cqp_op(%struct.i40iw_device* %49, %struct.i40iw_cqp_request* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %19
  %54 = load %struct.i40iw_gen_ae_info*, %struct.i40iw_gen_ae_info** %7, align 8
  %55 = getelementptr inbounds %struct.i40iw_gen_ae_info, %struct.i40iw_gen_ae_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %18, %53, %19
  ret void
}

declare dso_local %struct.i40iw_cqp_request* @i40iw_get_cqp_request(i32*, i32) #1

declare dso_local i32 @memcpy(%struct.i40iw_gen_ae_info*, %struct.i40iw_gen_ae_info*, i32) #1

declare dso_local i64 @i40iw_handle_cqp_op(%struct.i40iw_device*, %struct.i40iw_cqp_request*) #1

declare dso_local i32 @i40iw_pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
