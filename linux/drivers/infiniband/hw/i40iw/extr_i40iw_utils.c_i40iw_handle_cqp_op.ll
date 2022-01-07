; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_handle_cqp_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_handle_cqp_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { i32, i64, %struct.i40iw_sc_dev }
%struct.i40iw_sc_dev = type { i32 }
%struct.i40iw_cqp_request = type { i64, %struct.cqp_commands_info }
%struct.cqp_commands_info = type { i32 }

@I40IW_ERR_CQP_COMPL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"error cqp command 0x%x failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40iw_handle_cqp_op(%struct.i40iw_device* %0, %struct.i40iw_cqp_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40iw_device*, align 8
  %5 = alloca %struct.i40iw_cqp_request*, align 8
  %6 = alloca %struct.i40iw_sc_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cqp_commands_info*, align 8
  %9 = alloca i32, align 4
  store %struct.i40iw_device* %0, %struct.i40iw_device** %4, align 8
  store %struct.i40iw_cqp_request* %1, %struct.i40iw_cqp_request** %5, align 8
  %10 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %11 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %10, i32 0, i32 2
  store %struct.i40iw_sc_dev* %11, %struct.i40iw_sc_dev** %6, align 8
  %12 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %5, align 8
  %13 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %12, i32 0, i32 1
  store %struct.cqp_commands_info* %13, %struct.cqp_commands_info** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %15 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %20 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %19, i32 0, i32 0
  %21 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %5, align 8
  %22 = call i32 @i40iw_free_cqp_request(i32* %20, %struct.i40iw_cqp_request* %21)
  %23 = load i32, i32* @I40IW_ERR_CQP_COMPL_ERROR, align 4
  store i32 %23, i32* %3, align 4
  br label %56

24:                                               ; preds = %2
  %25 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %26 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %8, align 8
  %27 = call i32 @i40iw_process_cqp_cmd(%struct.i40iw_sc_dev* %25, %struct.cqp_commands_info* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %8, align 8
  %32 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %36 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %35, i32 0, i32 0
  %37 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %5, align 8
  %38 = call i32 @i40iw_free_cqp_request(i32* %36, %struct.i40iw_cqp_request* %37)
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %56

40:                                               ; preds = %24
  %41 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %5, align 8
  %42 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %47 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %5, align 8
  %48 = call i32 @i40iw_wait_event(%struct.i40iw_device* %46, %struct.i40iw_cqp_request* %47)
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %45, %40
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* @I40IW_ERR_CQP_COMPL_ERROR, align 4
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %52, %49
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %30, %18
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @i40iw_free_cqp_request(i32*, %struct.i40iw_cqp_request*) #1

declare dso_local i32 @i40iw_process_cqp_cmd(%struct.i40iw_sc_dev*, %struct.cqp_commands_info*) #1

declare dso_local i32 @i40iw_pr_err(i8*, i32) #1

declare dso_local i32 @i40iw_wait_event(%struct.i40iw_device*, %struct.i40iw_cqp_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
