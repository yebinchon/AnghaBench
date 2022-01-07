; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_cqp_query_fpm_values_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_cqp_query_fpm_values_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_dev = type { i32, i64 }
%struct.i40iw_dma_mem = type { i32, i32 }
%struct.i40iw_cqp_request = type { i32*, %struct.cqp_commands_info }
%struct.cqp_commands_info = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32 }
%struct.i40iw_device = type { i32 }

@I40IW_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@OP_QUERY_FPM_VALUES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"CQP-OP Query FPM fail\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40iw_cqp_query_fpm_values_cmd(%struct.i40iw_sc_dev* %0, %struct.i40iw_dma_mem* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40iw_sc_dev*, align 8
  %6 = alloca %struct.i40iw_dma_mem*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.i40iw_cqp_request*, align 8
  %10 = alloca %struct.cqp_commands_info*, align 8
  %11 = alloca %struct.i40iw_device*, align 8
  store %struct.i40iw_sc_dev* %0, %struct.i40iw_sc_dev** %5, align 8
  store %struct.i40iw_dma_mem* %1, %struct.i40iw_dma_mem** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %5, align 8
  %13 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.i40iw_device*
  store %struct.i40iw_device* %15, %struct.i40iw_device** %11, align 8
  %16 = load %struct.i40iw_device*, %struct.i40iw_device** %11, align 8
  %17 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %16, i32 0, i32 0
  %18 = call %struct.i40iw_cqp_request* @i40iw_get_cqp_request(i32* %17, i32 1)
  store %struct.i40iw_cqp_request* %18, %struct.i40iw_cqp_request** %9, align 8
  %19 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %9, align 8
  %20 = icmp ne %struct.i40iw_cqp_request* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @I40IW_ERR_NO_MEMORY, align 4
  store i32 %22, i32* %4, align 4
  br label %79

23:                                               ; preds = %3
  %24 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %9, align 8
  %25 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %24, i32 0, i32 1
  store %struct.cqp_commands_info* %25, %struct.cqp_commands_info** %10, align 8
  %26 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %9, align 8
  %27 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  %28 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %5, align 8
  %29 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %10, align 8
  %32 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 4
  store i32 %30, i32* %35, align 4
  %36 = load %struct.i40iw_dma_mem*, %struct.i40iw_dma_mem** %6, align 8
  %37 = getelementptr inbounds %struct.i40iw_dma_mem, %struct.i40iw_dma_mem* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %10, align 8
  %40 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  store i32 %38, i32* %43, align 8
  %44 = load %struct.i40iw_dma_mem*, %struct.i40iw_dma_mem** %6, align 8
  %45 = getelementptr inbounds %struct.i40iw_dma_mem, %struct.i40iw_dma_mem* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %10, align 8
  %48 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  store i32 %46, i32* %51, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %10, align 8
  %54 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store i32 %52, i32* %57, align 8
  %58 = load i32, i32* @OP_QUERY_FPM_VALUES, align 4
  %59 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %10, align 8
  %60 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %10, align 8
  %62 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %9, align 8
  %64 = ptrtoint %struct.i40iw_cqp_request* %63 to i64
  %65 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %10, align 8
  %66 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i64 %64, i64* %69, align 8
  %70 = load %struct.i40iw_device*, %struct.i40iw_device** %11, align 8
  %71 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %9, align 8
  %72 = call i32 @i40iw_handle_cqp_op(%struct.i40iw_device* %70, %struct.i40iw_cqp_request* %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %23
  %76 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %23
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %77, %21
  %80 = load i32, i32* %4, align 4
  ret i32 %80
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
